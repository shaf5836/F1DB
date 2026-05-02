import {
  apiFetch,
  countryFlag,
  formatDate,
  formatGap,
  showAlert,
} from './main.js';

// grabbing html id selectors [shafkat]
const raceContent = document.getElementById('raceContent');
const raceBadge = document.getElementById('raceBadge');
const raceInfoCard = document.getElementById('raceInfoCard');
const podiumContainer = document.getElementById('podiumContainer');
const resultsBody = document.getElementById('resultsBody');
const noRaceState = document.getElementById('noRaceState');
const errorState = document.getElementById('errorState');


loadLatestRace();

// fetching data from latestRace route[shafkat]
async function loadLatestRace() {

  try {
    const response = await apiFetch('/api/latestRace');
    if (!response.data) {
      showState('no-race');
      return;
    }
    const { session, podium, results } = response.data;
    renderRaceInfo(session, results);
    renderPodium(podium);
    renderResults(results);
    raceBadge.style.display = 'inline-flex';
    showState('content');
  } catch (err) {
    errorState.textContent = `Failed to load latest race: ${err.message}`;
    showState('error');
    showAlert('Error loading latest race data');
  }
}

// adding race card info and inner html in this function [shafkat]
function renderRaceInfo(session, results) {
  const totalLaps = results?.[0]?.number_of_laps ?? '—';
  let finishers = 0;
  let dnfCount = 0;
  for (const racer of (results || [])) {
    if (racer.dnf) {
      dnfCount++;
    } else if (!racer.dns && !racer.dsq) {
      finishers++;
    }
  }

  raceInfoCard.innerHTML = `
    <div class="race-info-left">
      <h3>${session.meeting_name}</h3>
      <p>${session.circuit_short_name ?? ''} · ${session.country_name ?? ''} · ${formatDate(session.date_start)}</p>
    </div>
    <div class="race-meta">
      <div class="race-meta-item">
        <span class="race-meta-value">${totalLaps}</span>
        <span class="race-meta-label">Laps</span>
      </div>
      <div class="race-meta-item">
        <span class="race-meta-value">${finishers}</span>
        <span class="race-meta-label">Finishers</span>
      </div>
      <div class="race-meta-item">
        <span class="race-meta-value">${dnfCount}</span>
        <span class="race-meta-label">DNFs</span>
      </div>
      <div class="race-meta-item">
        <span class="race-meta-value">${session.year}</span>
        <span class="race-meta-label">Season</span>
      </div>
    </div>
  `;
}

// Adding html to podium section using jsDom [shafkat]
function renderPodium(podium) {
  if (!podium?.length) {
    podiumContainer.innerHTML = '<p class="muted">No podium data.</p>';
    return;
  }

  //checking the top 3 postions in this part[shafkat]
  const ordered = [
    podium.find(p => p.position === 2),
    podium.find(p => p.position === 1),
    podium.find(p => p.position === 3),
  ].filter(Boolean);

  const medals = ['🥈', '🥇', '🥉'];

  podiumContainer.innerHTML = ordered.map((driver, i) => {
    const pos = driver.position;
    const medal = medals[i];

    return `
      <div class="podium-step p${pos}">
        <span class="podium-pos">${medal}</span>
        <div class="podium-name">${driver.name_acronym}</div>
        <div class="podium-team" style="color:${driver.team_colour || 'var(--text-muted)'};">
          ${driver.team_name ?? ''}
        </div>
        <div class="podium-pts">
          <span>${driver.points}</span> pts
        </div>
      </div>
    `;
  }).join('');
}

// Full result table in this part [shafkat]
function renderResults(results) {
  if (!results?.length) {
    resultsBody.innerHTML = '<tr><td colspan="6" class="state-empty">No results available.</td></tr>';
    return;
  }

  resultsBody.innerHTML = results.map(r => {
    const flag = countryFlag(r.country_code);
    const colour = r.team_colour || '#888';
    const isDNF = r.dnf || r.dns || r.dsq;
    const status = r.dsq ? 'DSQ' : r.dns ? 'DNS' : r.dnf ? 'DNF' : '';

    let gapStr = '—';
    if (!isDNF) {
      gapStr = formatGap(r.gap_to_the_leader);
    }

    return `
      <tr class="${isDNF ? 'dnf-row' : ''}">
        <td>
          <span class="pos-num ${r.position <= 3 && !isDNF ? `pos-${r.position}` : ''}">
            ${isDNF ? '' : (r.position ?? '—')}
          </span>
        </td>
        <td>
          <div class="driver-cell">
            <div class="driver-info">
              <span class="driver-name">
                ${r.full_name}
              </span>
              <span class="driver-acronym">${flag} ${r.name_acronym}</span>
            </div>
          </div>
        </td>
        <td>
          <div class="team-cell">
            <span class="team-dot" style="background:${colour};"></span>
            ${r.team_name ?? '—'}
          </div>
        </td>
        <td class="muted">${r.number_of_laps ?? '—'}</td>
        <td class="muted" style="font-variant-numeric:tabular-nums;">
          ${isDNF ? `<span class="dnf-badge">${status}</span>` : gapStr}
        </td>
        <td><span class="pts-cell" style="font-size:.9rem;">${r.points ?? 0}</span></td>
      </tr>
    `;
  }).join('');
}

// managing different states of the html content in the race summary section [shafkat]
function showState(state) {
  raceContent.style.display = state === 'content' ? 'block' : 'none';
  noRaceState.style.display = state === 'no-race' ? 'block' : 'none';
  errorState.style.display = state === 'error' ? 'block' : 'none';
}