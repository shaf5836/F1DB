const emailInput    = document.getElementById('email');
const sendOtpBtn    = document.getElementById('sendOtp');
const otpBox        = document.getElementById('otpBox');
const otpInput      = document.getElementById('otp');
const verifyOtpBtn  = document.getElementById('verifyOtp');
const msgDiv        = document.getElementById('subMessage');

// Send OTP to the entered email
sendOtpBtn.addEventListener('click', async () => {
    const email = emailInput.value.trim();

    if (!email) {
        showMessage('Please enter your email address.', 'error');
        return;
    }

    // Check email format before sending to server
    if (!isValidEmail(email)) {
        showMessage('Please enter a valid email address.', 'error');
        return;
    }

    sendOtpBtn.textContent = 'Sending...';
    sendOtpBtn.disabled = true;

    try {
        const res  = await fetch('/api/otp/send', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ email })
        });
        const data = await res.json();

        if (data.success) {
            showMessage('OTP sent! Check your inbox.', 'success');
            otpBox.style.display = 'flex';
            emailInput.disabled  = true;
        } else {
            showMessage(data.message || 'Failed to send OTP.', 'error');
        }
    } catch (err) {
        showMessage('Server error. Please try again.', 'error');
    } finally {
        sendOtpBtn.textContent = 'Send OTP';
        sendOtpBtn.disabled = false;
    }
});

// Verify the OTP the user typed
verifyOtpBtn.addEventListener('click', async () => {
    const email = emailInput.value.trim();
    const otp   = otpInput.value.trim();

    if (!otp) {
        showMessage('Please enter the OTP.', 'error');
        return;
    }

    verifyOtpBtn.textContent = 'Verifying...';
    verifyOtpBtn.disabled = true;

    try {
        const res  = await fetch('/api/otp/verify', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ email, otp })
        });
        const data = await res.json();

        if (data.success) {
            showMessage('Subscribed! You will now receive F1 news updates.', 'success');
            // Reset the form back to clean state
            otpBox.style.display = 'none';
            emailInput.value     = '';
            otpInput.value       = '';
            emailInput.disabled  = false;
        } else {
            showMessage(data.message || 'Invalid OTP. Please try again.', 'error');
        }
    } catch (err) {
        showMessage('Server error. Please try again.', 'error');
    } finally {
        verifyOtpBtn.textContent = 'Verify';
        verifyOtpBtn.disabled = false;
    }
});

// Email format checker
function isValidEmail(email) {
    return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
}

// Updates the status message div
function showMessage(msg, type) {
    msgDiv.textContent   = msg;
    msgDiv.className     = type === 'success' ? 'sub-msg-success' : 'sub-msg-error';
    msgDiv.style.display = 'block';
}