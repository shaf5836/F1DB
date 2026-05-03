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


// Send news notification email to a subscriber
export async function sendNewsNotification({ email, title, date, content, image }) {
 
    // Short preview of the article (first 200 characters)
    const preview = content.slice(0, 200) + (content.length > 200 ? '...' : '');
 
    await transporter.sendMail({
        from: `"F1 Hub" <${process.env.EMAIL_USER}>`,
        to: email,
        subject: `F1 Hub News: ${title}`,
        text:
`New article posted on F1 Hub!
 
Title   : ${title}
Date    : ${date}
 
${preview}
 
Read the full article at: http://localhost:3000/news.html
 
---
You are receiving this because you subscribed to F1 Hub news updates.`
    });
}