import { apiFetch, showAlert } from './main.js';

// ── DOM refs ──────────────────────────────────────────────────────────────────
const driverGrid    = document.getElementById('driverGrid');
const radioEmpty    = document.getElementById('radioEmpty');
const radioError    = document.getElementById('radioError');
const audioPlayer   = document.getElementById('audioPlayer');
const nowPlaying    = document.getElementById('nowPlaying');
const playPauseBtn  = document.getElementById('playPauseBtn');
const playPauseIcon = document.getElementById('playPauseIcon');
const playerBar     = document.getElementById('playerBar');
const progressFill  = document.getElementById('progressFill');
const progressTrack = document.getElementById('progressTrack');
const playerTime    = document.getElementById('playerTime');
const playerDuration = document.getElementById('playerDuration');
const radioDot      = document.getElementById('radioDot');

// ── State ─────────────────────────────────────────────────────────────────────
let activeDriverId  = null;
let activeUrl       = null;
let allRadios       = [];
let driverMap       = {};

// Team color map — extend as needed
const TEAM_COLORS = {
    'Red Bull Racing':      '#3671C6',
    'Ferrari':              '#E8002D',
    'Mercedes':             '#27F4D2',
    'McLaren':              '#FF8000',
    'Aston Martin':         '#229971',
    'Alpine':               '#FF87BC',
    'Williams':             '#64C4FF',
    'Racing Bulls':         '#6692FF',
    'Kick Sauber':          '#52E252',
    'Haas':                 '#B6BABD',
};

function getTeamColor(teamName) {
    for (const [key, color] of Object.entries(TEAM_COLORS)) {
        if (teamName && teamName.toLowerCase().includes(key.toLowerCase())) {
            return color;
        }
    }
    return 'var(--red)';
}

// ── Bootstrap ─────────────────────────────────────────────────────────────────
loadRadios();

// ── Search filter ─────────────────────────────────────────────────────────────
document.getElementById('radioSearch').addEventListener('input', function () {
    filterCards(this.value.trim().toLowerCase());
});

function filterCards(query) {
    const cards = driverGrid.querySelectorAll('.radio-card');
    let visibleCount = 0;

    cards.forEach(card => {
        const driver = driverMap[card.dataset.driverId];
        if (!driver) return;

        const match = !query ||
            driver.driverName.toLowerCase().includes(query) ||
            driver.teamName.toLowerCase().includes(query);

        card.style.display = match ? '' : 'none';
        if (match) visibleCount++;
    });

    const clipCountEl = document.getElementById('clipCount');
    if (query) {
        clipCountEl.textContent = `${visibleCount} driver${visibleCount !== 1 ? 's' : ''} found`;
        clipCountEl.style.display = 'inline-flex';
    } else {
        clipCountEl.style.display = 'none';
    }
}

// ── Data loading ──────────────────────────────────────────────────────────────
function loadRadios() {
    showState('loading');

    apiFetch('/api/radios')
        .then(json => {
            allRadios = json.data;

            if (!allRadios.length) {
                showState('empty');
                return;
            }

            buildDriverMap();
            renderDriverCards();
            showState('grid');
        })
        .catch(err => {
            radioError.textContent = `Failed to load radio messages: ${err.message}`;
            showState('error');
            showAlert('Could not load F1 radio messages. Please try again.');
        });
}

function buildDriverMap() {
    driverMap = {};
    for (const row of allRadios) {
        const id = row.driver_id;
        if (!driverMap[id]) {
            driverMap[id] = {
                driverId:   id,
                driverName: row.driver_name,
                teamName:   row.team_name,
                urls:       []
            };
        }
        driverMap[id].urls.push(row.url);
    }
}

// ── Rendering ─────────────────────────────────────────────────────────────────
function renderDriverCards() {
    let html = '';
    const drivers = Object.values(driverMap);

    drivers.forEach((d, i) => {
        const clipWord   = d.urls.length === 1 ? 'clip' : 'clips';
        const teamColor  = getTeamColor(d.teamName);
        const delay      = Math.min(i * 50, 400); // stagger, capped at 400ms

        html += `
        <div class="radio-card" 
             id="card-${d.driverId}" 
             data-driver-id="${d.driverId}"
             style="animation-delay: ${delay}ms; --team-color: ${teamColor};">
            <div class="radio-card-accent"></div>
            <div class="radio-card-header">
                <div class="radio-driver-info">
                    <span class="radio-driver-name">${d.driverName}</span>
                    <span class="radio-team-name">${d.teamName}</span>
                </div>
                <span class="radio-clip-count">${d.urls.length} ${clipWord}</span>
            </div>
            <div class="radio-clip-list" id="clips-${d.driverId}">
                ${buildClipRows(d)}
            </div>
        </div>`;
    });

    driverGrid.innerHTML = html;

    // Attach click listeners
    driverGrid.querySelectorAll('.clip-row').forEach(row => {
        row.addEventListener('click', () => {
            playClip(row.dataset.url, row.dataset.driverId, row.dataset.label);
        });
    });

    // Pre-fetch clip durations quietly in background
    prefetchDurations();
}

function buildClipRows(driver) {
    return driver.urls.map((url, i) => {
        const label = `Clip ${i + 1}`;
        return `
        <div class="clip-row" 
             data-url="${url}" 
             data-driver-id="${driver.driverId}" 
             data-label="${label}">
            <span class="clip-play-icon">
                <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor">
                    <polygon points="5,3 19,12 5,21"/>
                </svg>
            </span>
            <span class="clip-label">${label}</span>
            <span class="clip-waveform" aria-hidden="true">
                <span class="waveform-bar"></span>
                <span class="waveform-bar"></span>
                <span class="waveform-bar"></span>
                <span class="waveform-bar"></span>
                <span class="waveform-bar"></span>
            </span>
            <span class="clip-url-hint">${trimUrl(url)}</span>
            <span class="clip-duration" data-url="${url}">—</span>
        </div>`;
    }).join('');
}

// Pre-load each audio URL briefly to read its duration
function prefetchDurations() {
    const allUrls = [];
    for (const d of Object.values(driverMap)) {
        d.urls.forEach(url => allUrls.push(url));
    }

    // Stagger to avoid hammering the network
    allUrls.forEach((url, i) => {
        setTimeout(() => {
            const tmp = new Audio();
            tmp.preload = 'metadata';
            tmp.src = url;
            tmp.addEventListener('loadedmetadata', () => {
                const dur = formatTime(tmp.duration);
                // Update all elements with this url
                document.querySelectorAll(`.clip-duration[data-url="${CSS.escape(url)}"]`)
                    .forEach(el => { el.textContent = dur; });
                tmp.src = ''; // free memory
            });
        }, i * 120);
    });
}

// ── Playback ──────────────────────────────────────────────────────────────────
function playClip(url, driverId, label) {
    const driver = driverMap[driverId];
    if (!driver) return;

    if (activeUrl === url) {
        togglePlayPause();
        return;
    }

    activeUrl      = url;
    activeDriverId = driverId;

    audioPlayer.src = url;
    nowPlaying.textContent = `${driver.driverName} · ${label}`;
    playerDuration.textContent = '—';
    playerTime.textContent = '0:00';
    progressFill.style.width = '0%';

    audioPlayer.play()
        .then(() => {
            setPlayerState('playing');
            highlightActiveClip(driverId, url);
            playerBar.classList.add('visible');
        })
        .catch(err => {
            setPlayerState('paused');
            showAlert(`Playback failed: ${err.message}`);
        });
}

function togglePlayPause() {
    if (audioPlayer.paused) {
        audioPlayer.play()
            .then(() => setPlayerState('playing'))
            .catch(err => showAlert(`Playback failed: ${err.message}`));
    } else {
        audioPlayer.pause();
        setPlayerState('paused');
    }
}

// ── Player state helpers ──────────────────────────────────────────────────────
function setPlayerState(state) {
    const isPlaying = state === 'playing';

    // Play/pause icon swap
    playPauseIcon.innerHTML = isPlaying
        ? `<rect x="6" y="4" width="4" height="16"/><rect x="14" y="4" width="4" height="16"/>`
        : `<polygon points="5,3 19,12 5,21"/>`;

    // Pulse dot
    radioDot.classList.toggle('paused', !isPlaying);

    // Active clip row icon + waveform pause state
    document.querySelectorAll('.clip-row.active').forEach(r => {
        r.querySelector('.clip-play-icon svg').innerHTML = isPlaying
            ? `<rect x="6" y="4" width="4" height="16"/><rect x="14" y="4" width="4" height="16"/>`
            : `<polygon points="5,3 19,12 5,21"/>`;
        r.classList.toggle('paused', !isPlaying);
    });
}

function highlightActiveClip(driverId, url) {
    document.querySelectorAll('.clip-row.active').forEach(r => r.classList.remove('active', 'paused'));
    document.querySelectorAll('.radio-card.active').forEach(c => c.classList.remove('active'));

    const activeRow = document.querySelector(`.clip-row[data-url="${CSS.escape(url)}"]`);
    if (activeRow) activeRow.classList.add('active');

    const activeCard = document.getElementById(`card-${driverId}`);
    if (activeCard) activeCard.classList.add('active');
}

// ── Progress bar & time update ────────────────────────────────────────────────
audioPlayer.addEventListener('timeupdate', () => {
    if (!audioPlayer.duration) return;
    const pct = (audioPlayer.currentTime / audioPlayer.duration) * 100;
    progressFill.style.width = `${pct}%`;
    playerTime.textContent = formatTime(audioPlayer.currentTime);
});

audioPlayer.addEventListener('loadedmetadata', () => {
    playerDuration.textContent = formatTime(audioPlayer.duration);
});

// Click on progress bar to seek
progressTrack.addEventListener('click', e => {
    if (!audioPlayer.duration) return;
    const rect = progressTrack.getBoundingClientRect();
    const pct  = (e.clientX - rect.left) / rect.width;
    audioPlayer.currentTime = pct * audioPlayer.duration;
});

// ── Audio element events ──────────────────────────────────────────────────────
audioPlayer.addEventListener('ended', () => {
    setPlayerState('paused');
    progressFill.style.width = '0%';
    playerTime.textContent = '0:00';
    document.querySelectorAll('.clip-row.active').forEach(r => r.classList.remove('active', 'paused'));
});

audioPlayer.addEventListener('pause', () => setPlayerState('paused'));
audioPlayer.addEventListener('play',  () => setPlayerState('playing'));

// ── Play/pause button ─────────────────────────────────────────────────────────
playPauseBtn.addEventListener('click', togglePlayPause);

// ── Keyboard shortcut: Space to play/pause ────────────────────────────────────
document.addEventListener('keydown', e => {
    // Don't intercept Space when user is typing in the search box
    if (e.target === document.getElementById('radioSearch')) return;
    if (e.code === 'Space' && activeUrl) {
        e.preventDefault();
        togglePlayPause();
    }
});

// ── Utility ───────────────────────────────────────────────────────────────────
function trimUrl(url) {
    const parts = url.split('/');
    return parts[parts.length - 1] || url;
}

function formatTime(seconds) {
    if (!isFinite(seconds)) return '—';
    const m = Math.floor(seconds / 60);
    const s = Math.floor(seconds % 60).toString().padStart(2, '0');
    return `${m}:${s}`;
}

function showState(state) {
    driverGrid.style.display  = state === 'grid' || state === 'loading' ? 'grid'  : 'none';
    radioEmpty.style.display  = state === 'empty'   ? 'block' : 'none';
    radioError.style.display  = state === 'error'   ? 'block' : 'none';

    if (state === 'loading') {
        driverGrid.innerHTML = buildSkeletons(6);
    }
}

function buildSkeletons(count) {
    return Array.from({ length: count }, () => `
        <div class="radio-card skeleton-card">
            <div class="skeleton skeleton-title"></div>
            <div class="skeleton skeleton-line"></div>
            <div class="skeleton skeleton-line short"></div>
        </div>`
    ).join('');
}
