

$(document).ready(function () {

   
    $.ajax({
        url: '/api/auth/me',
        method: 'GET',
        xhrFields: { withCredentials: true }
    })
    .done(function (res) {
        if (res.success) {
            window.location.href = '/fantasy';
        }
    })
    .fail(function () {
        
    });


    $('#loginForm').on('submit', function (e) {
        e.preventDefault();

        const $btn = $(this).find('button[type="submit"]');
        const $msg = $('#loginMessage');
        const user_name = $('#user_name').val().trim();
        const password = $('#password').val();

        if (!user_name || !password) {
            showMessage($msg, 'Please fill in both fields', 'error');
            return;
        }

        $btn.prop('disabled', true).text('Logging in...');
        $msg.hide();

        $.ajax({
            url: '/api/auth/login',
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({ user_name, password }),
            xhrFields: { withCredentials: true }
        })
        .done(function (res) {
            if (res.success) {
                showMessage($msg, 'Login successful! Redirecting...', 'success');
                setTimeout(() => {
                    window.location.href = '/fantasy';
                }, 600);
            } else {
                showMessage($msg, res.message || 'Login failed', 'error');
                $btn.prop('disabled', false).text('Login');
            }
        })
        .fail(function (xhr) {
            const errorMsg = xhr.responseJSON?.message || 'Server error, please try again';
            showMessage($msg, errorMsg, 'error');
            $btn.prop('disabled', false).text('Login');
        });
    });

    
    function showMessage($el, text, type) {
        const color = type === 'success' ? 'var(--green)' : 'var(--red)';
        $el.text(text).css('color', color).show();
    }
});