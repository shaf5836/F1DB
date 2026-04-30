import {
  apiFetch,
  formatGap,
} from './main.js';

// position badge function to show different color in the race result podium positions [ shafkat]
function posBadgeClass(pos) {
  if (pos === 1) return 'pos-gold';
  if (pos === 2) return 'pos-silver';
  if (pos === 3) return 'pos-bronze';
  return '';
}


// Tracks the currentmeeting key [shafkat]
let activeResultsMeeting = null;


async function loadMeetingTabs() {
  const tabsWrap = document.getElementById('raceTabs');
  if (!tabsWrap) return;

  try {
    const response = await apiFetch('/api/meetings?year=2024');
    const meetings = response.data;
    if (!meetings || meetings.length === 0) {
      document.getElementById('resultsContent').innerHTML =
        'No race meetings found for this season.';
      return;
    }
    // makin a selection tab for each meeting [shafkat]
    tabsWrap.innerHTML = meetings.map((m, i) => `
        <button class= "race-tab ${i === 0 ? 'active' : ''}"
            data-meeting-key="${m.meeting_key}"
            data-meeting-name="${m.meeting_name}" >
        Round ${i + 1} · ${m.country_name}
        </button >
    `).join('');

    // tab click function handling [shafkat]

    tabsWrap.querySelectorAll('.race-tab').forEach(tab => {
      tab.addEventListener('click', () => {
        tabsWrap.querySelectorAll(".race-tab").forEach(t => t.classList.remove('active'));
        tab.classList.add('active');
        activeResultsMeeting = tab.dataset.meetingKey;
        loadMeetingSessionTabs(tab.dataset.meetingKey, tab.dataset.meetingName);
      });
    });
    activeResultsMeeting = meetings[0].meeting_key;
    loadMeetingSessionTabs(meetings[0].meeting_key, meetings[0].meeting_name);
  } catch (err) {
    document.getElementById('resultsContent').innerHTML = 'could not load race meetings';
    console.log('loadMeetingTabs error:', err);
  }

}

// Handling subtabs in this section
async function loadMeetingSessionTabs(meetingKey, meetingName) {
  const content = document.getElementById('resultsContent');
  if (!content) return;


  content.innerHTML = '<div class="skeleton-block" style="height:400px;"></div>';

  try {
    const response = await apiFetch(`/api/meetings/${meetingKey}`);
    const sessions = response.data.sessions || [];
    if(sessions.length===0){
      content.innerHTML = ('No sessions found for this Grand Prix');
    }
    // Building sub-tab UI for each session type of a grand prix [shafkat]

    content.innerHTML = `
    <div class="session-sub-tabs">
      ${sessions.map(s => `
        <button class="session-sub-tab"
                data-session-key="${s.session_key}"
                data-session-name="${s.session_name}">
          ${s.session_name}
        </button>
      `).join('')}
    </div>
    <div id="sessionResultsTable"></div>
  `;

    // Attaching sub-tab click listeners[shafkat]
    content.querySelectorAll('.session-sub-tab').forEach(tab => {
      tab.addEventListener('click', () => {
        content.querySelectorAll('.session-sub-tab').forEach(t => t.classList.remove('active'));
        tab.classList.add('active');
        loadSessionResults(tab.dataset.sessionKey, meetingName, meetingKey);
      });
    });

    // Auto-click the Race session, otherwise first session
    const raceTab = [...content.querySelectorAll('.session-sub-tab')]
      .find(t => t.dataset.sessionName === 'Race')
      || content.querySelector('.session-sub-tab');

    raceTab?.click();
  }catch(err){
    content.innerHTML = "could not load session data.";
    console.error('loadMeetingSessionTabs error',err);
  }
  
}

// this creates a result table for a single session in a grandprix
async function loadSessionResults(sessionKey, meetingName, meetingKey) {
  const resultTable = document.getElementById('sessionResultsTable');
  if (!resultTable) return;
  resultTable.innerHTML = '<div class="skeleton-block" style="height:400px;"></div>';

  try{
    const response = await apiFetch(`/api/results/session/${sessionKey}`);
    const results = response.data;

  if (!results.length) {
    resultTable.innerHTML = `<div class="error-msg"><span>🏁</span>No results recorded for this session yet.</div>`;
    return;
  }

  resultTable.innerHTML = `
    <div class="results-table-wrap">
      <table class="results-table">
        <thead>
          <tr>
            <th>Pos</th>
            <th>Driver</th>
            <th>Team</th>
            <th>Laps</th>
            <th>Gap</th>
            <th>Pts</th>
          </tr>
        </thead>
        <tbody>
          ${results.map(r => `
            <tr class="${r.dnf || r.dns ? 'dnf-row' : ''}">
              <td>
                ${r.dnf
      ? '<span class="dnf-tag">DNF</span>'
      : r.dns
        ? '<span class="dns-tag">DNS</span>'
        : r.dsq
          ? '<span class="dnf-tag">DSQ</span>'
          : `<span class="pos-badge ${posBadgeClass(r.position)}">${r.position}</span>`
    }
              </td>
              <td>
                <div class="driver-cell">
                  <span class="driver-num">${r.driver_number}</span>
                  <span class="team-dot" style="background:${r.team_colour || '#555'}"></span>
                  <strong>${r.name_acronym}</strong>
                  <span class="text-muted" style="margin-left:4px;font-size:12px;display:inline">
                    ${r.first_name} ${r.last_name}
                  </span>
                </div>
              </td>
              <td class="text-muted text-mono hide-mobile" style="font-size:12px">${r.team_name || '—'}</td>
              <td class="text-mono">${r.number_of_laps ?? '—'}</td>
              <td class="text-mono hide-mobile">${formatGap(r.gap_to_the_leader)}</td>
              <td class="text-mono text-red fw-bold">${r.points ?? 0}</td>
            </tr>
          `).join('')}
        </tbody>
      </table>
    </div>
  `;
  }catch(err){
     resultTable.innerHTML = 'could not load results for this session';
     console.error('loadSessionResults errorr',err);
  }
}
document.addEventListener("DOMContentLoaded", () => {
  loadMeetingTabs();
});