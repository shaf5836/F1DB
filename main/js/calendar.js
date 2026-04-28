import {
    apiFetch,
    countryFlag,
    formatDate,
    formatDateShort,
    formatTime,
    populateYearSelect,
    showAlert,
} from './main.js'; // Grabbing all the essentials methods from the main.js [shafkat]

//Grabbing ID and classes from calendar.html file 
// and referencing it with the following constants[shafkat]
const yearSelect = document.getElementById('yearSelect');
const heroYear = document.getElementById('heroYear');
const raceGrid = document.getElementById('raceGrid');
const calendarEmpty = document.getElementById('calendarEmpty');
const calendarError = document.getElementById('calendarError');
const filterBtns = document.querySelectorAll('.filter-btn');

let activeYear = new Date().getFullYear();
let activeFilter = 'all';
let allRaces = [];

populateYearSelect(yearSelect, activeYear);
heroYear.textContent = activeYear;
loadCalendar();

yearSelect.addEventListener('change', () => {
    activeYear = parseInt(yearSelect.value);
    heroYear.textContent = activeYear;
    loadCalendar();
});

filterBtns.forEach(btn => {
    btn.addEventListener('click', () => {
        activeFilter = btn.dataset.filter;
        filterBtns.forEach(b => b.classList.toggle("active", b === btn));
        renderRaces();
    });
});


// Loading calender details in the webbsite using api fetch and making sure next step is taken after a response 
async function loadCalendar() {

  try {
    const json = await apiFetch(`/api/calendar?year=${activeYear}`);
    allRaces = json.data;

    if (!allRaces.length) {
      showState('empty');
      return;
    }
    // exiting early from promise to avoid error
    renderRaces();
    showState('grid');
    // catching error in this section
  } catch (err) { 
    calendarError.textContent = `Failed to load calendar: ${err.message}`;
    showState('error');
    // adding fun alert just for FEK sir and NZU sir
    showAlert('Due to shafkat messing up the code, the website failed to load calendar');
  }
}

// Making race card here [shafkat]
function renderRaces() {
  const now = new Date();
  let races = [];

  // Manual filtering logic instead of using .filter()

  if (activeFilter === "upcoming") {

    for (let i = 0; i < allRaces.length; i++) {
      
      let r = allRaces[i];
      if (!r.date_end || new Date(r.date_end) > now) {
        races.push(r);
      }
    }
  } else if (activeFilter === 'past') {
    for (let i = 0; i < allRaces.length; i++) {
      let r = allRaces[i];
      if (r.date_end && new Date(r.date_end) <= now) {
        races.push(r);
      }
    }
  } else {races = allRaces;
  }

  // emptying grid if there is no race atm [shafkat]
  if (!races.length) {
    raceGrid.innerHTML = '';
    showState('empty');
    return;
  }
  
  showState('grid');

  // Find the next race manually
  let nextRace = null;
  for (let i = 0; i < races.length; i++) {
    let r = races[i];
    if (r.date_start && new Date(r.date_start) > now) {
      nextRace = r;
      break; 
    }
  }

  let htmlOutput = ""; // building the HTML string in this variable

  for (let idx = 0; idx < races.length; idx++) {
    let race = races[idx];
    
    let isPast = false;
    if (race.date_end && new Date(race.date_end) <= now) {
      isPast = true;
    }

    let isNext = false;
    if (!isPast && race === nextRace) {
      isNext = true;
    }

    const flag = countryFlag(race.country_code);
    const start = race.date_start ? new Date(race.date_start) : null;
    const end = race.date_end ? new Date(race.date_end) : null;
    
    // generating date string here
    let dateStr = '—';
    if (start) {
      dateStr = formatDate(start);
    }
    
    let endStr = '';
    if (end) {
      endStr = formatDate(end);
    }

    let dateRange = dateStr;
    if (end && dateStr !== endStr) {
      dateRange = `${formatDateShort(start)} – ${formatDateShort(end)}`;
    }

    // Setting card classes based on status
    let cardClass = 'active';
    if (isPast) {
      cardClass = 'past';
    } else if (isNext) {
      cardClass = 'next';
    }

    // Setting badges
    let statusBadge = '<span class="badge badge-green">UPCOMING</span>';
    if (isPast) {
      statusBadge = '<span class="badge badge-muted">COMPLETED</span>';
    } else if (isNext) {
      statusBadge = '<span class="badge badge-red">NEXT RACE</span>';
    }

    // need to check if sprint races show the right dot color****** important remember*** [ shafkat]
    let sessionsHTML = '';
    let sessions = race.sessions || [];
    
    if (sessions.length === 0) {
      sessionsHTML = '<div class="muted" style="font-size:.8rem;padding:8px 0;">No session data available</div>';
    } else {
      // Loop through sessions
      for (let sIdx = 0; sIdx < sessions.length; sIdx++) {
        let s = sessions[sIdx];
        let type = (s.session_type || "").toLowerCase();
        let dotClass = 'dot-practice'; 
        
        if (type === 'race') {
          dotClass = 'dot-race';
        } else if (type === 'qualifying') {
          dotClass = 'dot-qualifying';
        } else if (type === 'sprint') {
          dotClass = 'dot-sprint';
        }

        let sDate = null;
        if (s.date_start) {
          sDate = new Date(s.date_start);
        }
        
        let sDateStr = '—';
        let sTimeStr = '';
        if (sDate) {
          sDateStr = formatDateShort(sDate);
          sTimeStr = formatTime(sDate);
        }

        sessionsHTML += `
        <div class="session-row">
          <span class="session-type-dot ${dotClass}"></span>
          <span class="session-name">${s.session_name}</span>
          <span class="session-date-time">
            <span class="s-date">${sDateStr}</span>
            <span class="s-time">${sTimeStr}</span>
          </span>
        </div>
        `;
      }
    }

    // Appending the created card to total HTML output [shafkat]
    htmlOutput += `
      <div class="race-card ${cardClass}">
        <div class="race-card-header">
          <div>
            <div class="race-round">Round ${idx + 1}</div>
            <div class="race-name">${race.meeting_name ?? race.circuit_short_name ?? '—'}</div>
            <div class="race-country">${race.location ?? ''} · ${race.country_name ?? ''}</div>
          </div>
          <span class="race-flag" title="${race.country_name ?? ''}">${flag}</span>
        </div>

        <div class="race-dates">
          <svg width="13" height="13" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="18" rx="2"/><path d="M16 2v4M8 2v4M3 10h18"/></svg>
          ${dateRange}
          &nbsp;&nbsp;${statusBadge}
        </div>

        <div class="session-list">
          ${sessionsHTML}
        </div>
      </div>
    `;
  }
  
  raceGrid.innerHTML = htmlOutput;
}

// handling calendar visuals by showcasing grids or keeping the innerhtml empty or showing error in case of bad code [shafkat]
function showState(state) {
  raceGrid.style.display     = state === 'grid'    ? 'grid' : 'none';
  calendarEmpty.style.display = state === 'empty'  ? 'block' : 'none';
  calendarError.style.display = state === 'error'  ? 'block' : 'none';
}