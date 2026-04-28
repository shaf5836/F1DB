import {
    apiFetch,
} from './main.js'; 
async function driverStandings() {
    const tbody = document.getElementById("driver_std");
    const errorDiv = document.getElementById("driver_std_error");
    try {
        const response = await apiFetch("/api/driverStandings");
        const drivers = response.data;
        if (drivers.length == 0) {
            tbody.innerHTML = `<tr><td colspan="5" class="state-empty">No data available</td></tr>`;
            return;
        }
        tbody.innerHTML = drivers.map(driver => `
            <tr>
                <td>${driver.position_current}</td>
                <td>${driver.full_name}</td>
                <td>${driver.name_acronym}</td>
                <td>${driver.team_name || '-'}</td>
                <td>${driver.points_current}</td>
            </tr>
        `).join("");
        errorDiv.style.display = "none";
    } catch (error) {
        tbody.innerHTML = "";
        errorDiv.textContent = "Error occurred while loading driver championship standings";
        errorDiv.style.display = "block";
    }
}

// Load standings on page load
document.addEventListener("DOMContentLoaded", driverStandings);