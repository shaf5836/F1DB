import { Router } from "express";
import { generateOTP, saveOTP, verifyOTP } from "../services/otpService.js";
import { sendOTPEmail } from "../services/mailer.js";

const router = Router();

// SEND OTP
router.post("/send-otp", async (req, res) => {
  try {
    const { email } = req.body;

    if (!email) {
      return res.status(400).json({ error: "Email is required" });
    }

    const otp = generateOTP();

    saveOTP(email, otp);

    await sendOTPEmail({ email, otp });

    res.json({ message: "OTP sent successfully" });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Failed to send OTP" });
  }
});


// VERIFY OTP
router.post("/verify-otp", (req, res) => {
  const { email, otp } = req.body;

  const result = verifyOTP(email, otp);

  if (!result.success) {
    return res.status(400).json({ error: result.message });
  }

  res.json({ message: result.message });
});

export default router;