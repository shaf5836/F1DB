$(document).ready(function () {

    // On page load — auto calculate points if needed, then load leaderboard
    autoCalculateAndLoad();

    function autoCalculateAndLoad() {
        // Step 1: Get the current/next race dynamically — no hardcoded meeting_key
        $.ajax({
            url: '/api/fantasy/next-race',
            method: 'GET'
        })
        .done(function (raceRes) {
            if (!raceRes.success || !raceRes.data) {
                // No race found — just load leaderboard as-is
                loadLeaderboard();
                return;
            }

            const meetingKey = raceRes.data.meeting_key;

            // Step 2: Check if this race has results inserted but picks are still unlocked
            $.ajax({
                url: `/api/fantasy/check-results/${meetingKey}`,
                method: 'GET'
            })
            .done(function (checkRes) {
                if (checkRes.success && checkRes.data.needsCalculation) {
                    // Step 3: Results exist + picks unlocked = auto calculate
                    $('#calcStatus').text('Updating points...');

                    $.ajax({
                        url: `/api/fantasy/admin/calculate-points/${meetingKey}`,
                        method: 'POST',
                        xhrFields: { withCredentials: true }
                    })
                    .done(function (calcRes) {
                        if (calcRes.success) {
                            $('#calcStatus').text(
                                `Points calculated for ${calcRes.data.picks_processed} picks — ${raceRes.data.meeting_name}`
                            );
                        }
                        loadLeaderboard();
                    })
                    .fail(function () {
                        // Calculation failed silently — still load leaderboard
                        $('#calcStatus').text('');
                        loadLeaderboard();
                    });

                } else {
                    // No calculation needed — load leaderboard directly
                    $('#calcStatus').text('');
                    loadLeaderboard();
                }
            })
            .fail(function () {
                loadLeaderboard();
            });
        })
        .fail(function () {
            loadLeaderboard();
        });
    }

    function loadLeaderboard() {
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
    }

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