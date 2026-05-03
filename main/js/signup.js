

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

  
    $.ajax({
        url: '/api/fantasy/options',
        method: 'GET'
    })
    .done(function (res) {
        if (!res.success || !res.data) return;

        const $driverSelect = $('#favorite_driver_id');
        res.data.drivers.forEach(function (d) {
            $driverSelect.append(
                `<option value="${d.driver_id}">${d.full_name} (${d.team_name || '—'})</option>`
            );
        });

        const $teamSelect = $('#favorite_team_id');
        res.data.teams.forEach(function (t) {
            $teamSelect.append(
                `<option value="${t.team_id}">${t.team_name}</option>`
            );
        });
    })
    .fail(function () {
        console.warn('Could not load drivers/teams for signup dropdowns');
    });

   
    $('#signupForm').on('submit', function (e) {
        e.preventDefault();

        const $btn = $(this).find('button[type="submit"]');
        const $msg = $('#signupMessage');
        const user_name = $('#user_name').val().trim();
        const password = $('#password').val();
        const favorite_driver_id = $('#favorite_driver_id').val();
        const favorite_team_id = $('#favorite_team_id').val();

        if (!user_name || !password) {
            showMessage($msg, 'Username and password are required', 'error');
            return;
        }
        if (user_name.length < 3) {
            showMessage($msg, 'Username must be at least 3 characters', 'error');
            return;
        }
        if (password.length < 6) {
            showMessage($msg, 'Password must be at least 6 characters', 'error');
            return;
        }

        $btn.prop('disabled', true).text('Creating account...');
        $msg.hide();

        const payload = { user_name, password };
        if (favorite_driver_id) payload.favorite_driver_id = parseInt(favorite_driver_id, 10);
        if (favorite_team_id) payload.favorite_team_id = parseInt(favorite_team_id, 10);

        $.ajax({
            url: '/api/auth/signup',
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(payload),
            xhrFields: { withCredentials: true }
        })
        .done(function (res) {
            if (res.success) {
                showMessage($msg, 'Account created! Redirecting...', 'success');
                setTimeout(() => {
                    window.location.href = '/fantasy';
                }, 800);
            } else {
                showMessage($msg, res.message || 'Signup failed', 'error');
                $btn.prop('disabled', false).text('Create Account');
            }
        })
        .fail(function (xhr) {
            const errorMsg = xhr.responseJSON?.message || 'Server error, please try again';
            showMessage($msg, errorMsg, 'error');
            $btn.prop('disabled', false).text('Create Account');
        });
    });

    function showMessage($el, text, type) {
        const color = type === 'success' ? 'var(--green)' : 'var(--red)';
        $el.text(text).css('color', color).show();
    }
});