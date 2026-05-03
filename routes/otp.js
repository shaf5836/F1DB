import { Router } from "express";
import db from '../config/db.js';
import { generateOTP, saveOTP, verifyOTP } from "../services/otpService.js";
import { sendOTPEmail } from "../services/mailer.js";

const router = Router();

// SEND OTP
router.post("/send", async (req, res) => {
    const { email } = req.body;

    if (!email) {
        return res.status(400).json({ success: false, message: "Email is required" });
    }

    try {
        const otp = generateOTP();
        saveOTP(email, otp);
        await sendOTPEmail({ email, otp });

        res.json({ success: true, message: "OTP sent successfully" });
    } catch (err) {
        console.error("Send OTP error:", err);
        res.status(500).json({ success: false, message: "Failed to send OTP" });
    }
});

// VERIFY OTP
router.post("/verify", async (req, res) => {
    const { email, otp } = req.body;

    if (!email || !otp) {
        return res.status(400).json({ success: false, message: "Email and OTP are required" });
    }

    const result = verifyOTP(email, otp);

    if (!result.success) {
        return res.status(400).json({ success: false, message: result.message });
    }

    try {
        await db.query(
            'INSERT IGNORE INTO subscribers (email) VALUES (?)',
            [email]
        );
    } catch (err) {
        console.error("Subscriber insert error:", err);
        return res.status(500).json({ success: false, message: "Verified but failed to save subscription." });
    }

    res.json({ success: true, message: result.message });
});

export default router;