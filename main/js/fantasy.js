

$(document).ready(function () {

    
    const state = {
        currentMeeting: null,
        existingPick: null,
        drivers: [],
        teams: []
    };

   
    $.ajax({
        url: '/api/auth/me',
        method: 'GET',
        xhrFields: { withCredentials: true }
    })
    .done(function (res) {
        if (res.success) {
            $('#authGate').hide();
            $('#pickFormSection').show();
            loadPageData();
        } else {
            showAuthGate();
        }
    })
    .fail(function () {
        showAuthGate();
    });

    function showAuthGate() {
        $('#authGate').show();
        $('#pickFormSection').hide();
    }

   
    function loadPageData() {
        const optionsRequest = $.ajax({ url: '/api/fantasy/options', method: 'GET' });
        const nextRaceRequest = $.ajax({ url: '/api/fantasy/next-race', method: 'GET' });

        $.when(optionsRequest, nextRaceRequest).done(function (optionsRes, raceRes) {
            const options = optionsRes[0];
            const race = raceRes[0];

            if (options.success && options.data) {
                state.drivers = options.data.drivers;
                state.teams = options.data.teams;
                populateDropdowns();
            }

            if (race.success && race.data) {
                state.currentMeeting = race.data;
                renderRaceInfo();
                fetchExistingPick();
            } else {
                $('#raceTitle').text('No upcoming race found');
                $('#raceDetails').text('Unable to load race info.');
            }
        }).fail(function () {
            showError('Failed to load page data. Try refreshing.');
        });
    }

   
    function renderRaceInfo() {
        const m = state.currentMeeting;
        $('#raceTitle').text(m.meeting_name);
        $('#raceDetails').text(`${m.location}, ${m.country_name} — ${formatDate(m.date_start)}`);
        $('#meeting_key').val(m.meeting_key);

        const raceDate = new Date(m.date_start);
        const now = new Date();
        const daysUntil = Math.ceil((raceDate - now) / (1000 * 60 * 60 * 24));

        if (daysUntil < 0) {
            $('#raceCountdown').text('Past race').removeClass('badge-red').addClass('badge-muted');
        } else if (daysUntil === 0) {
            $('#raceCountdown').text('TODAY').removeClass('badge-muted').addClass('badge-red');
        } else {
            $('#raceCountdown').text(`${daysUntil} days`);
        }
    }

   
    function populateDropdowns() {
        repopulateDriverDropdown('#driver1_id', null, '-- Select driver 1 --');
        repopulateDriverDropdown('#driver2_id', null, '-- Select driver 2 --');

        const $team = $('#team_id').empty().append('<option value="">-- Select a team --</option>');
        state.teams.forEach(function (t) {
            $team.append(`<option value="${t.team_id}">${t.team_name}</option>`);
        });
    }

    
    function repopulateDriverDropdown(selectId, excludeTeamId, placeholder) {
        const $select = $(selectId);
        const previousValue = $select.val();
        $select.empty().append(`<option value="">${placeholder}</option>`);

        state.drivers.forEach(function (d) {
            if (excludeTeamId !== null && d.t_team_id === excludeTeamId) return;
            $select.append(
                `<option value="${d.driver_id}">${d.full_name} (${d.team_name || '—'})</option>`
            );
        });

       
        if (previousValue) $select.val(previousValue);
    }

    
    function getDriverTeamId(driver_id) {
        const driver = state.drivers.find(d => d.driver_id === parseInt(driver_id, 10));
        return driver ? driver.t_team_id : null;
    }

  
    function getDriverName(driver_id) {
        const driver = state.drivers.find(d => d.driver_id === parseInt(driver_id, 10));
        return driver ? driver.full_name : '';
    }

  
    function refreshCaptainDropdown() {
        const $captain = $('#captain_driver_id');
        const previousValue = $captain.val();

        const driver1_id = $('#driver1_id').val();
        const driver2_id = $('#driver2_id').val();

       
        $captain.empty().append('<option value="">-- Choose captain --</option>');

        if (driver1_id) {
            $captain.append(
                `<option value="${driver1_id}">${getDriverName(driver1_id)}</option>`
            );
        }
        if (driver2_id) {
            $captain.append(
                `<option value="${driver2_id}">${getDriverName(driver2_id)}</option>`
            );
        }

       
        if (previousValue === driver1_id || previousValue === driver2_id) {
            $captain.val(previousValue);
        }
    }

    
    $('#driver1_id').on('change', function () {
        const driver1_id = $(this).val();
        const teamToExclude = driver1_id ? getDriverTeamId(driver1_id) : null;
        repopulateDriverDropdown('#driver2_id', teamToExclude, '-- Select driver 2 --');

        
        const driver2_id = $('#driver2_id').val();
        if (driver2_id && getDriverTeamId(driver2_id) === teamToExclude) {
            $('#driver2_id').val('');
        }

        refreshCaptainDropdown();
    });

    $('#driver2_id').on('change', function () {
        const driver2_id = $(this).val();
        const teamToExclude = driver2_id ? getDriverTeamId(driver2_id) : null;
        repopulateDriverDropdown('#driver1_id', teamToExclude, '-- Select driver 1 --');

        const driver1_id = $('#driver1_id').val();
        if (driver1_id && getDriverTeamId(driver1_id) === teamToExclude) {
            $('#driver1_id').val('');
        }

        refreshCaptainDropdown();
    });

  
    function fetchExistingPick() {
        if (!state.currentMeeting) return;

        $.ajax({
            url: `/api/fantasy/my-pick/${state.currentMeeting.meeting_key}`,
            method: 'GET',
            xhrFields: { withCredentials: true }
        })
        .done(function (res) {
            if (res.success && res.data) {
                state.existingPick = res.data;
                prefillForm();
                if (res.data.locked === 1) {
                    lockForm();
                }
            }
        })
        .fail(function () {
            console.warn('Could not load existing pick');
        });
    }


    function prefillForm() {
        const p = state.existingPick;

    
        $('#driver1_id').val(p.driver1_id).trigger('change');
        $('#driver2_id').val(p.driver2_id).trigger('change');
        $('#team_id').val(p.team_id);


        $('#captain_driver_id').val(p.captain_driver_id);

        $('#pickStatus').text('Saved').removeClass('badge-muted').addClass('badge-green');
    }

    function lockForm() {
        $('#driver1_id, #driver2_id, #team_id, #captain_driver_id').prop('disabled', true);
        $('#pickForm button[type="submit"]').prop('disabled', true).text('Race Finished');
        $('#pickStatus')
            .text(`Locked · ${state.existingPick.points_earned} pts`)
            .removeClass('badge-muted badge-green')
            .addClass('badge-red');
    }

    
    $('#pickForm').on('submit', function (e) {
        e.preventDefault();

        const $btn = $(this).find('button[type="submit"]');
        const $msg = $('#pickMessage');

        const meeting_key = parseInt($('#meeting_key').val(), 10);
        const driver1_id = parseInt($('#driver1_id').val(), 10);
        const driver2_id = parseInt($('#driver2_id').val(), 10);
        const team_id = parseInt($('#team_id').val(), 10);
        const captain_driver_id = parseInt($('#captain_driver_id').val(), 10);

        if (!meeting_key || !driver1_id || !driver2_id || !team_id || !captain_driver_id) {
            showMessage($msg, 'Please fill in all fields including captain', 'error');
            return;
        }
        if (driver1_id === driver2_id) {
            showMessage($msg, 'Driver 1 and Driver 2 must be different', 'error');
            return;
        }
      
        if (getDriverTeamId(driver1_id) === getDriverTeamId(driver2_id)) {
            showMessage($msg, 'Drivers must be from different teams', 'error');
            return;
        }
        
        if (captain_driver_id !== driver1_id && captain_driver_id !== driver2_id) {
            showMessage($msg, 'Captain must be Driver 1 or Driver 2', 'error');
            return;
        }

        $btn.prop('disabled', true).text('Saving...');
       
        $msg.removeClass('show is-success is-error');

        $.ajax({
            url: '/api/fantasy/pick',
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({
                meeting_key, driver1_id, driver2_id, team_id, captain_driver_id
            }),
            xhrFields: { withCredentials: true }
        })
        .done(function (res) {
            if (res.success) {
                showMessage($msg, 'Pick saved successfully!', 'success');
                $('#pickStatus').text('Saved').removeClass('badge-muted').addClass('badge-green');
                $btn.prop('disabled', false).text('Update Pick');
            } else {
                showMessage($msg, res.message || 'Failed to save pick', 'error');
                $btn.prop('disabled', false).text('Save Pick');
            }
        })
        .fail(function (xhr) {
            const errorMsg = xhr.responseJSON?.message || 'Server error, please try again';
            showMessage($msg, errorMsg, 'error');
            $btn.prop('disabled', false).text('Save Pick');
        });
    });

   

    function formatDate(isoString) {
        if (!isoString) return '—';
        const d = new Date(isoString);
        return d.toLocaleDateString('en-US', {
            month: 'short', day: 'numeric', year: 'numeric'
        });
    }

   
    function showMessage($el, text, type) {
        $el
            .removeClass('is-success is-error')
            .addClass(type === 'success' ? 'is-success' : 'is-error')
            .text(text)
            .addClass('show');
    }

    function showError(text) {
        $('#raceTitle').text('Error');
        $('#raceDetails').text(text);
    }
});