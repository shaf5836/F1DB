

$(document).ready(function () {

  
    $.ajax({
        url: '/api/auth/me',
        method: 'GET',
        xhrFields: { withCredentials: true }
    })
    .done(function (res) {
        if (res.success && res.data) {
            
            replaceAuthLinksWithLogout(res.data.user_name);
        }

    })
    .fail(function () {
      
    });

    function replaceAuthLinksWithLogout(username) {
        const $navLinks = $('#navLinks');
        if (!$navLinks.length) return;

      
        $navLinks.find('li:has(a[href="/login"])').remove();
        $navLinks.find('li:has(a[href="/signup"])').remove();

      
        $navLinks.append(`
            <li><a href="#" style="color: var(--text); pointer-events: none;">👤 ${escapeHtml(username)}</a></li>
            <li><a href="#" id="logoutBtn">Logout</a></li>
        `);

       
        $('#logoutBtn').on('click', function (e) {
            e.preventDefault();
            $.ajax({
                url: '/api/auth/logout',
                method: 'POST',
                xhrFields: { withCredentials: true }
            })
            .done(function () {
                window.location.href = '/';
            })
            .fail(function () {
                alert('Logout failed. Try refreshing.');
            });
        });
    }

    function escapeHtml(text) {
        if (!text) return '';
        return $('<div>').text(text).html();
    }
});