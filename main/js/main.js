// Creating navigation bar and hiding menu option on pc[shafkat]
const menu = document.getElementById('menu');
const navLinks = document.getElementById('navLinks');

menu.addEventListener('click', () => { // makes the menu appear on phone when clicked [shafkat]
    navLinks.classList.toggle('open');
})

navLinks.querySelectorAll('a').forEach(a => { // looping through all links and rmoving open from navigation if any link is pressed[Shafkat]
    a.addEventListener('click', () => navLinks.classList.remove('open'));
})

export function showAlert(msg, duration = 5000) { // this will show an alert message on method call
    const alert = document.getElementById('alert');
    if (!alert) { // checking if the string  given is empty and if it actually is empty then I am returning early to avoid  errors
        return;
    }
    alert.textContent = msg;
    alert.classList.add('show');
    setTimeout(() => alert.classList.remove('show'), duration);
}

export function countryFlag(code) { // Here I am getting the country code from my database and converting the code to ISO format of two letters [Shafkat]
    if (!code || code.length !== 3) return '';
    const map = { // This map function is used for mapping the code for conversion as the data in my database is inserted in 3 lettr format 
        GBR: 'GB', USA: 'US', DEU: 'DE', FRA: 'FR', ESP: 'ES', ITA: 'IT',
        NLD: 'NL', MEX: 'MX', AUS: 'AU', CAN: 'CA', JPN: 'JP', CHN: 'CN',
        BRA: 'BR', ARG: 'AR', FIN: 'FI', DEN: 'DK', DNK: 'DK', MON: 'MC',
        MCO: 'MC', THA: 'TH', CHE: 'CH', AUT: 'AT', BEL: 'BE', PRT: 'PT',
        POL: 'PL', NZL: 'NZ', ZAF: 'ZA', SGP: 'SG', ARE: 'AE', SAU: 'SA',
        QAT: 'QA', BHR: 'BH', AZE: 'AZ', HUN: 'HU',
    };

    const a2 = (map[code.toUpperCase()] || code.slice(0, 2)).toUpperCase();
    return a2
        .split('')
        .map(c => String.fromCodePoint(0x1F1E6 + c.charCodeAt(0) - 65))
        .join('');

}

export function formatDate(iso) { //formating the data from f1 database to iso formatted date[shafkat]
    if (!iso) return 'Not a iso date format';
    const d = new Date(iso);
    if (isNaN(d)) return 'not iso dateformat';
    return d.toLocaleDateString('en-GB', {
        day: 'numeric', month: 'short', year: 'numeric'
    });
}

export function formatTime(iso) { // formating time 
    if (!iso) return 'no time in timeformat';
    const d = new Date(iso);
    if (isNaN(d)) return 'not a iso time format';
    return d.toLocaleTimeString('en-GB', { hour: '2-digit', minute: '2-digit', timeZoneName: 'short' });
}

export function formatDateShort(iso) { // using format for shorter date variant
    if (!iso) return 'no date in dateshort';
    const d = new Date(iso);
    if (isNaN(d)) return 'not iso in formatdateshort';
    return d.toLocaleDateString('en-GB', { day: 'numeric', month: 'short' });
}

// making year selector options in the calender [shafkat]
export function populateYearSelect(selectElem, currentYear, minYear = 2024) {
    selectElem.innerHTML = '';
    for (let y = currentYear; y >= minYear; y--) {
        const options = document.createElement('option');
        options.value = y;
        options.textContent = y;
        selectElem.appendChild(options);
    }
    selectElem.value = currentYear;
}

// this function formats the gap to the 1st position and if the driver himself is first then he is labelled as leader [shafkat]
export function formatGap(gap) {
    if (gap === null || gap === undefined) return '—';
    if (gap === 0) return 'Leader';
    return `+${Number(gap).toFixed(3)}s`;
}

export async function apiFetch(url) { // fetch function creation[shafkat]
    const res = await fetch(url); // making sure url response is being recieved 
    const resJson = await res.json();  // changing response to JSON
    if (!resJson.success) throw new Error(resJson.message || 'Error In Fetchapi'); // if res is not json then returnn error message
    return resJson;
}