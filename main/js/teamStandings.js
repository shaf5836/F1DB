import { apiFetch } from "./main.js";

async function teamStandings() {
    const tbody = document.getElementById("team_std");
    const errorDiv = document.getElementById("team_std_error");
    try {
        const response = await apiFetch("/api/teamStandings");
        const teams = response.data;
        if (teams.length==0) {
            tbody.innerHTML = `<tr><td colspan="3" class="state-empty">No data available</td></tr>`;
            return;
        }
        tbody.innerHTML = teams.map(team => `
            <tr>
                <td>${team.position_current}</td>
                <td>${team.team_name}</td>
                <td>${team.points_current}</td>
            </tr>
        `).join("");
        errorDiv.style.display = "none";
    } catch(error) {
        tbody.innerHTML = "";
        errorDiv.textContent = "Error occurred while loading team championship standings";
        errorDiv.style.display = "block";
    }
}

// Load standings on page load
document.addEventListener("DOMContentLoaded", teamStandings);