import { apiFetch } from './main.js';

function formatDate(dateStr) {
    const date = new Date(dateStr);
    return date.toLocaleDateString(undefined, { year: 'numeric', month: 'short', day: 'numeric' });
}

async function loadNews() {
    const newsList = document.getElementById("newsList");
    const errorDiv = document.getElementById("news_file_error");
    try {
        const response = await apiFetch("/api/news");
        const newsItems = response.data;
        if (!newsItems.length) {
            newsList.innerHTML = `<div class="state-empty">No news available</div>`;
            return;
        }
        newsList.innerHTML = newsItems.map(news => {
            const preview = news.content.replace(/\n/g, ' ').slice(0, 150) + (news.content.length > 150 ? '...' : '');
            return `
                <div class="news-card" data-id="${news.id}">
                    <img src="${news.image_url || ''}" alt="news image" class="news-thumb">
                    <div style="flex:1;">
                        <h2 class="news-title">${news.title}</h2>
                        <div class="news-date">${formatDate(news.date)}</div>
                        <div class="news-preview">${preview}</div>
                        <div class="news-content">
                            <p>${news.content.replace(/\n/g, '<br>')}</p>
                        </div>
                    </div>
                </div>
            `;
        }).join("");
        errorDiv.style.display = "none";
    } catch (error) {
        newsList.innerHTML = "";
        errorDiv.textContent = "Error occurred while loading news";
        errorDiv.style.display = "block";
    }
}

// Load news on page load and set up click handler for toggling content
document.addEventListener("DOMContentLoaded", () => {
    loadNews();
    document.getElementById("newsList").addEventListener("click", function (e) {
        let card = e.target.closest(".news-card");
        if (card) {
            let preview = card.querySelector(".news-preview");
            let content = card.querySelector(".news-content");
            if (content) {
                // Hide preview and show content, or reverse
                if (content.style.display === "block") {
                    content.style.display = "none";
                    preview.style.display = "";
                } else {
                    content.style.display = "block";
                    preview.style.display = "none";
                }
            }
        }
    });
});