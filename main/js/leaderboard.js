

$(document).ready(function () {

    $.ajax({
        url: '/api/fantasy/leaderboard',
        method: 'GET'
    })
    .done(function (res) {
        $('#loadingState').hide();

        if (!res.success || !Array.isArray(res.data) || res.data.length === 0) {
            $('#emptyState').show();
            return;
        }

        renderLeaderboard(res.data);
        $('#leaderboardContent').show();
    })
    .fail(function () {
        $('#loadingState').hide();
        $('#emptyState').show().find('p').text('Could not load leaderboard. Try refreshing.');
    });

    function renderLeaderboard(data) {
        const $body = $('#leaderboardBody').empty();

        data.forEach(function (row, index) {
            const rank = row.position_current || (index + 1);
            const rankClass = getRankClass(rank);
            const points = Number(row.fantasy_points || 0).toFixed(1);

            const html = `
                <tr>
                    <td><span class="${rankClass}" style="font-weight:700;">${rank}</span></td>
                    <td>${escapeHtml(row.user_name)}</td>
                    <td><strong>${points}</strong></td>
                </tr>
            `;
            $body.append(html);
        });
    }

    function getRankClass(rank) {
        if (rank === 1) return 'gold';
        if (rank === 2) return 'silver';
        if (rank === 3) return 'bronze';
        return '';
    }

   
    function escapeHtml(text) {
        if (!text) return '';
        return $('<div>').text(text).html();
    }
});