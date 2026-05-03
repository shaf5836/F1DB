const otpStore = new Map();

export const generateOTP = () => {
  return Math.floor(100000 + Math.random() * 900000).toString();
};

export const saveOTP = (email, otp) => {
  otpStore.set(email, {
    otp,
    expiresAt: Date.now() + 2 * 60 * 1000 // 2 minutes
  });
};

export const verifyOTP = (email, otp) => {
  const record = otpStore.get(email);

  if (!record) {
    return { success: false, message: "No OTP found" };
  }

  if (Date.now() > record.expiresAt) {
    otpStore.delete(email);
    return { success: false, message: "OTP expired" };
  }

  if (record.otp !== otp) {
    return { success: false, message: "Invalid OTP" };
  }

  otpStore.delete(email);

  return { success: true, message: "Email verified successfully" };
};