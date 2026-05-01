import nodemailer from "nodemailer";

const transporter = nodemailer.createTransport({
  service: "gmail",
  auth: {
    user: process.env.EMAIL_USER,
    pass: process.env.EMAIL_PASS,
  }
});

/**
 * Send OTP email
 */
export async function sendOTPEmail({ email, otp }) {
  await transporter.sendMail({
    from: `"F1 Hub" <${process.env.EMAIL_USER}>`,
    to: email,
    subject: "OTP Code",
    text: `Your OTP is: ${otp}, it will expire in 2 minutes`
  });
}