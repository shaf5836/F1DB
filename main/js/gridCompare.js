import { countryFlag, formatDate, apiFetch, showAlert } from './main.js';

// css custom property for driver color [shafkat]
const DRIVER1_COLOR_VAR = '--driver1-color';
const DRIVER2_COLOR_VAR = '--driver2-color';

// fallaback color if there are no team_colour in db
const FALLBACK_COLORS = ['#e8002d', '#1e90ff'];

// Chart.js instances 
const charts = {};

// dom variables/references
const driver1Select  = document.getElementById('driver1-select');
const driver2Select  = document.getElementById('driver2-select');
const compareBtn     = document.getElementById('compare-btn');
const loadingEl      = document.getElementById('gc-loading');
const errorEl        = document.getElementById('gc-error');
const errorMsgEl     = document.getElementById('gc-error-msg');
const resultsOv      = document.getElementById('results-overtakes');
const resultsPts     = document.getElementById('results-points');

// initializing the dom with this init function [shafkat]
async function init() {
  setupTabs();

  try {
    const { data: drivers } = await apiFetch('/api/gridCompare/drivers');
    populateSelects(drivers);
  } catch {
    showError('Could not load driver list. Please refresh the page.');
    return;
  }

  // Enable compare button only when both drivers are chosen
  [driver1Select, driver2Select].forEach(sel => {
    sel.addEventListener('change', () => {
      updateDriverCard(sel);
      compareBtn.disabled = !(driver1Select.value && driver2Select.value);
    });
  });

  compareBtn.addEventListener('click', runComparison);
}

// adding an eventlistener to get clicks and switch between tabs [shafkat]
function setupTabs() {
  document.querySelectorAll('.gc-tab').forEach(tab => {
    tab.addEventListener('click', () => {
      document.querySelectorAll('.gc-tab').forEach(t => t.classList.remove('active'));
      tab.classList.add('active');
      showResults(); // switch the visible results section to match the active tab
    });
  });
}

// filling the driver options with drivers from db
function populateSelects(drivers) {
  const makeOption = d => {
    const opt = document.createElement('option');
    opt.value       = d.driver_id;
    opt.textContent = `${d.driver_number ? `#${d.driver_number} ` : ''}${d.full_name}  (${d.team_name ?? 'No team'})`;
    opt.dataset.json = JSON.stringify(d);   // keeping the whole data in json 
    return opt;
  };

  drivers.forEach(d => {
    driver1Select.appendChild(makeOption(d));
    driver2Select.appendChild(makeOption(d).cloneNode(true));
  });
}

// refreshing the driver info everytime a user selects a new different driver[shafkat]
function updateDriverCard(selectEl) {
  const slot    = selectEl.id === 'driver1-select' ? '1' : '2';
  const prefix  = `d${slot}`;
  const card    = document.getElementById(`driver${slot}-card`);
  const selected = selectEl.options[selectEl.selectedIndex];

  if (!selectEl.value) {
    document.getElementById(`${prefix}-number`).textContent = '—';
    document.getElementById(`${prefix}-name`).textContent   = '—';
    document.getElementById(`${prefix}-team`).textContent   = '—';
    document.getElementById(`${prefix}-flag`).textContent   = '🏁';
    card.style.borderColor = '';
    card.classList.remove('visible');
    return;
  }

  const d     = JSON.parse(selected.dataset.json);
  const color = d.team_colour ?? FALLBACK_COLORS[Number(slot) - 1];

  document.getElementById(`${prefix}-number`).textContent = d.driver_number ?? '—';
  document.getElementById(`${prefix}-name`).textContent   = d.full_name;
  document.getElementById(`${prefix}-team`).textContent   = d.team_name ?? 'Unknown Team';
  document.getElementById(`${prefix}-flag`).textContent   = countryFlag(d.country_code);
  card.style.borderColor = color;
  card.classList.add('visible');

  document.documentElement.style.setProperty(
    slot === '1' ? DRIVER1_COLOR_VAR : DRIVER2_COLOR_VAR,
    color
  );
}

// Comparing the selected two driver data in this function [shafkat]
async function runComparison() {
  const d1 = driver1Select.value;
  const d2 = driver2Select.value;

  if (!d1 || !d2) return;

  if (d1 === d2) {
    showError('Please select two different drivers.');
    return;
  }

  hideError();
  hideResults();
  showLoading(true);

  try {
    // grabbing both driver overtake and points stats all at once [shafkat]
    const [ovRes, ptsRes] = await Promise.all([
      apiFetch(`/api/gridCompare/overtakes?driver1=${d1}&driver2=${d2}`),
      apiFetch(`/api/gridCompare/points?driver1=${d1}&driver2=${d2}`),
    ]);
    resultsOv.classList.add('visible');
    resultsPts.classList.add('visible');

    renderOvertakes(ovRes.data, d1, d2);
    renderPoints(ptsRes.data, d1, d2);

    showResults();
  } catch (err) {
    showError(err.message || 'Something went wrong. Please try again.');
  } finally {
    showLoading(false);
  }
}

// displaying overtakes charts using this function [shafkat]
function renderOvertakes(data, d1Id, d2Id) {
  const { madePerRace, receivedPerRace, totals, headToHead, avgPosition } = data;

  const t1 = totals.find(r => String(r.driver_id) === String(d1Id)) ?? {};
  const t2 = totals.find(r => String(r.driver_id) === String(d2Id)) ?? {};

  const avg1 = avgPosition.find(r => String(r.driver_id) === String(d1Id));
  const avg2 = avgPosition.find(r => String(r.driver_id) === String(d2Id));

  // stats 
  setText('ov-d1-made', t1.total_made   ?? 0);
  setText('ov-d2-made', t2.total_made   ?? 0);
  setText('ov-d1-received-sub', `${t1.total_received ?? 0} received`);
  setText('ov-d2-received-sub', `${t2.total_received ?? 0} received`);
  setText('ov-d1-avgpos', avg1 ? `P${avg1.avg_position_gained}` : '—');
  setText('ov-d2-avgpos', avg2 ? `P${avg2.avg_position_gained}` : '—');

  // driver short names[shafkat]
  setText('ov-leg-name1', t1.name_acronym ?? 'Driver 1');
  setText('ov-leg-name2', t2.name_acronym ?? 'Driver 2');

  const color1 = t1.team_colour ?? FALLBACK_COLORS[0];
  const color2 = t2.team_colour ?? FALLBACK_COLORS[1];

  // Collect the full set of race meetings that appear in either driver's data
  const allMeetings = uniqueMeetings([...madePerRace, ...receivedPerRace]);
  const labels      = allMeetings.map(m => shortName(m.meeting_name));

  const madeD1     = raceValues(madePerRace,     d1Id, allMeetings, 'overtakes_made');
  const madeD2     = raceValues(madePerRace,     d2Id, allMeetings, 'overtakes_made');
  const recvD1     = raceValues(receivedPerRace, d1Id, allMeetings, 'overtakes_received');
  const recvD2     = raceValues(receivedPerRace, d2Id, allMeetings, 'overtakes_received');
  const cumulD1    = cumulative(madeD1);
  const cumulD2    = cumulative(madeD2);

  const name1 = t1.name_acronym ?? 'D1';
  const name2 = t2.name_acronym ?? 'D2';

  // imported/ replaced chart.js setup with our db data [shafkat]
  buildGroupedBar('chart-ov-made', labels,
    [
      { label: name1, data: madeD1, backgroundColor: color1 },
      { label: name2, data: madeD2, backgroundColor: color2 },
    ],
    { yLabel: 'Overtakes' }
  );

  buildGroupedBar('chart-ov-received', labels,
    [
      { label: name1, data: recvD1, backgroundColor: color1 + 'aa' },
      { label: name2, data: recvD2, backgroundColor: color2 + 'aa' },
    ],
    { yLabel: 'Times overtaken' }
  );

  buildLineChart('chart-ov-cumul', labels,
    [
      { label: name1, data: cumulD1, borderColor: color1, backgroundColor: color1 + '22' },
      { label: name2, data: cumulD2, borderColor: color2, backgroundColor: color2 + '22' },
    ],
    { yLabel: 'Total overtakes', fill: true }
  );

  // h2h table created in this part[shafkat]
  const tbody   = document.getElementById('ov-h2h-tbody');
  const emptyEl = document.getElementById('ov-h2h-empty');
  const tableEl = document.getElementById('ov-h2h-table');
  tbody.innerHTML = '';

  if (!headToHead.length) {
    emptyEl.style.display = '';
    tableEl.style.display = 'none';
    return;
  }

  emptyEl.style.display = 'none';
  tableEl.style.display = '';

  headToHead.forEach(row => {
    const overtakingName = String(row.overtaking_driver_id) === String(d1Id)
      ? (t1.full_name ?? 'Driver 1')
      : (t2.full_name ?? 'Driver 2');
    const overtakenName  = String(row.overtaken_driver_id)  === String(d1Id)
      ? (t1.full_name ?? 'Driver 1')
      : (t2.full_name ?? 'Driver 2');

    const tr = document.createElement('tr');
    tr.innerHTML = `
      <td>${countryFlag(row.country_code)} ${row.meeting_name}</td>
      <td>Lap ${row.lap}</td>
      <td>P${row.position ?? '—'}</td>
      <td>${overtakingName}</td>
      <td>${overtakenName}</td>
      <td>${formatDate(row.date)}</td>
    `;
    tbody.appendChild(tr);
  });
}

// displaying points section using this function [shafkat]
function renderPoints(data, d1Id, d2Id) {
  const { sessions, totals } = data;

  const t1 = totals.find(r => String(r.driver_id) === String(d1Id)) ?? {};
  const t2 = totals.find(r => String(r.driver_id) === String(d2Id)) ?? {};

  const color1 = t1.team_colour ?? FALLBACK_COLORS[0];
  const color2 = t2.team_colour ?? FALLBACK_COLORS[1];
  const name1  = t1.name_acronym ?? 'Driver 1';
  const name2  = t2.name_acronym ?? 'Driver 2';

  //summary of points of both drivers
  setText('pts-d1-name',  t1.full_name ?? 'Driver 1');
  setText('pts-d2-name',  t2.full_name ?? 'Driver 2');
  setText('pts-d1-total', t1.total_points ?? 0);
  setText('pts-d2-total', t2.total_points ?? 0);
  setText('pts-d1-sub',   `${t1.scoring_sessions ?? 0} scoring sessions`);
  setText('pts-d2-sub',   `${t2.scoring_sessions ?? 0} scoring sessions`);

  // gap between two drivers are displayed using this part[shafkat]
  const gap = (t1.total_points ?? 0) - (t2.total_points ?? 0);
  setText('pts-d1-delta', gap > 0 ? `+${gap} pts ahead`  : gap < 0 ? `${gap} pts behind` : 'Level');
  setText('pts-d2-delta', gap < 0 ? `+${Math.abs(gap)} pts ahead` : gap > 0 ? `-${gap} pts behind` : 'Level');

  // driver names 
  setText('pts-leg-name1', name1);
  setText('pts-leg-name2', name2);

  // updating tables namess here
  setText('pts-th-d1',       name1);
  setText('pts-th-d2',       name2);
  setText('pts-th-cumul-d1', `${name1} Total`);
  setText('pts-th-cumul-d2', `${name2} Total`);

  // data for chart js chart
  const labels    = sessions.map(s => shortName(s.session_name ?? s.meeting_name));
  const d1pts     = sessions.map(s => s.d1_points);
  const d2pts     = sessions.map(s => s.d2_points);
  const d1cumul   = sessions.map(s => s.d1_cumul);
  const d2cumul   = sessions.map(s => s.d2_cumul);
  const gapSeries = sessions.map(s => s.d1_cumul - s.d2_cumul);

  // chart js import
  buildLineChart('chart-pts-cumul', labels,
    [
      { label: name1, data: d1cumul, borderColor: color1, backgroundColor: color1 + '22' },
      { label: name2, data: d2cumul, borderColor: color2, backgroundColor: color2 + '22' },
    ],
    { yLabel: 'Cumulative points', fill: true }
  );

  buildGroupedBar('chart-pts-perSession', labels,
    [
      { label: name1, data: d1pts, backgroundColor: color1 },
      { label: name2, data: d2pts, backgroundColor: color2 },
    ],
    { yLabel: 'Points' }
  );

  buildLineChart('chart-pts-gap', labels,
    [
      {
        label: `${name1} − ${name2}`,
        data: gapSeries,
        borderColor: '#f0c040',
        backgroundColor: '#f0c04022',
        fill: true,
      },
    ],
    { yLabel: 'Points gap', zeroLine: true }
  );

  // data for chart js
  const tbody  = document.getElementById('pts-session-tbody');
  const noData = document.getElementById('pts-no-data');
  tbody.innerHTML = '';

  if (!sessions.length) {
    noData.style.display = '';
    return;
  }
  noData.style.display = 'none';

  sessions.forEach(s => {
    const winner =
      s.d1_points > s.d2_points ? name1 :
      s.d2_points > s.d1_points ? name2 : 'Tied';

    const gapVal = s.d1_cumul - s.d2_cumul;
    const gapStr = gapVal === 0 ? 'Level' : `${gapVal > 0 ? '+' : ''}${gapVal}`;

    const tr = document.createElement('tr');
    tr.innerHTML = `
      <td>${countryFlag(s.country_code)} ${s.meeting_name}</td>
      <td>${s.session_type}</td>
      <td>${s.d1_points}</td>
      <td>${s.d2_points}</td>
      <td>${winner}</td>
      <td>${s.d1_cumul}</td>
      <td>${s.d2_cumul}</td>
      <td>${gapStr}</td>
    `;
    tbody.appendChild(tr);
  });
}

// functions built using chart js documentation [shafkat]
function buildGroupedBar(canvasId, labels, datasets, { yLabel = '' } = {}) {
  destroyChart(canvasId);

  const ctx = document.getElementById(canvasId)?.getContext('2d');
  if (!ctx) return;

  charts[canvasId] = new Chart(ctx, {
    type: 'bar',
    data: { labels, datasets },
    options: chartOptions({ yLabel, stacked: false }),
  });
}

function buildLineChart(canvasId, labels, datasets, { yLabel = '', fill = false, zeroLine = false } = {}) {
  destroyChart(canvasId);

  const ctx = document.getElementById(canvasId)?.getContext('2d');
  if (!ctx) return;

  const formattedDatasets = datasets.map(ds => ({
    tension: 0.35,
    pointRadius: 3,
    borderWidth: 2,
    fill: fill ? 'origin' : false,
    ...ds,
  }));

  const options = chartOptions({ yLabel });

  if (zeroLine) {
    options.plugins.annotation = {
      annotations: {
        zeroLine: {
          type: 'line',
          yMin: 0, yMax: 0,
          borderColor: 'rgba(255,255,255,0.3)',
          borderWidth: 1,
          borderDash: [4, 4],
        },
      },
    };
  }

  charts[canvasId] = new Chart(ctx, {
    type: 'line',
    data: { labels, datasets: formattedDatasets },
    options,
  });
}

function chartOptions({ yLabel = '', stacked = false } = {}) {
  return {
    responsive: true,
    animation: { duration: 500 },
    interaction: { mode: 'index', intersect: false },
    scales: {
      x: {
        stacked,
        ticks: { color: '#aaa', maxRotation: 45, font: { size: 11 } },
        grid:  { color: 'rgba(255,255,255,0.05)' },
      },
      y: {
        stacked,
        beginAtZero: true,
        ticks: { color: '#aaa', font: { size: 11 } },
        grid:  { color: 'rgba(255,255,255,0.07)' },
        title: yLabel
          ? { display: true, text: yLabel, color: '#888', font: { size: 11 } }
          : { display: false },
      },
    },
    plugins: {
      legend: { labels: { color: '#ccc', font: { size: 12 } } },
      tooltip: {
        backgroundColor: '#1a1a2e',
        titleColor: '#eee',
        bodyColor:  '#ccc',
        borderColor: 'rgba(255,255,255,0.1)',
        borderWidth: 1,
      },
    },
  };
}

function destroyChart(canvasId) {
  if (charts[canvasId]) {
    charts[canvasId].destroy();
    delete charts[canvasId];
  }
}


function uniqueMeetings(rows) {
  const seen = new Map();
  rows.forEach(r => {
    if (!seen.has(r.meeting_key)) {
      seen.set(r.meeting_key, { meeting_key: r.meeting_key, meeting_name: r.meeting_name });
    }
  });
  return [...seen.values()].sort((a, b) => a.meeting_key - b.meeting_key);
}

// filling 0 when a driver has no entry for a given race [shafkat]
function raceValues(rows, driverId, meetings, valueKey) {
  const byMeeting = new Map(
    rows
      .filter(r => String(r.driver_id) === String(driverId))
      .map(r => [r.meeting_key, Number(r[valueKey])])
  );
  return meetings.map(m => byMeeting.get(m.meeting_key) ?? 0);
}

// Converts an array of per-race values into a running total
function cumulative(values) {
  let total = 0;
  return values.map(v => (total += v));
}

/** Trims long Grand Prix names to keep chart labels readable. */
function shortName(name = '') {
  return name
    .replace(/Grand Prix/i, 'GP')
    .replace(/Formula 1|F1 /gi, '')
    .trim();
}


// helping functions for the ui of html [shafkat]
function showLoading(visible) {
  loadingEl.classList.toggle('visible', visible);
}

function showError(msg) {
  errorMsgEl.textContent = msg;
  errorEl.classList.add('visible');
}

function hideError() {
  errorEl.classList.remove('visible');
}

function showResults() {
  // Show whichever tab is currently active and hide the other tabs that are inactive
  const activeTab = document.querySelector('.gc-tab.active')?.dataset.tab ?? 'overtakes';
  resultsOv.classList.toggle('visible', activeTab === 'overtakes');
  resultsPts.classList.toggle('visible', activeTab === 'points');
}

function hideResults() {
  resultsOv.classList.remove('visible');
  resultsPts.classList.remove('visible');
}

function setText(id, value) {
  const el = document.getElementById(id);
  if (el) el.textContent = value ?? '—';
}

init();