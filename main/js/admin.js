const togglePostFormBtn = document.getElementById('togglePostForm');
const postNewsCard = document.getElementById('postNewsCard');
const cancelPostBtn = document.getElementById('cancelPostBtn');
const postNewsBtn = document.getElementById('postNewsBtn');
const titleInput = document.getElementById('newsTitle');
const dateInput = document.getElementById('newsDate');
const imageInput = document.getElementById('newsImage');
const contentInput = document.getElementById('newsContent');
const msgDiv = document.getElementById('postMessage');

// Showing the post form when "+ Post News" is clicked
togglePostFormBtn.addEventListener('click', () => {
    postNewsCard.style.display = 'block';
    togglePostFormBtn.style.display = 'none';
});

// Hiding the form when Cancel is clicked
cancelPostBtn.addEventListener('click', () => {
    postNewsCard.style.display = 'none';
    togglePostFormBtn.style.display = 'inline-flex';
    clearForm();
    hideMessage();
});

// Posting news and notify all subscribers 
postNewsBtn.addEventListener('click', async () => {
    const title = titleInput.value.trim();
    const date = dateInput.value.trim();
    const image = imageInput.value.trim();
    const content = contentInput.value.trim();

    // Basic validation [Rajesh]
    if (!title) {
        showMessage('Please enter a title.', 'error');
        return;
    }
    if (!date) {
        showMessage('Please enter a date.', 'error');
        return;
    }
    // Date format check 
    if (!isValidDate(date)) {
        showMessage('Invalid date format. Please use YYYY-MM-DD (e.g. 2025-05-02).', 'error');
        return;
    }
    if (!content) {
        showMessage('Please enter the article content.', 'error');
        return;
    }

    postNewsBtn.textContent = 'Posting...';
    postNewsBtn.disabled = true;

    try {
        const res  = await fetch('/api/admin/post-news', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ title, date, image, content })
        });
        const data = await res.json();

        if (data.success) {
            showMessage(`News posted! Notified ${data.notified} subscriber(s).`, 'success');
            // Waiting 2 seconds so that the user can read the message
            setTimeout(() => {
                clearForm();
                hideMessage();
                postNewsCard.style.display = 'none';
                togglePostFormBtn.style.display = 'inline-flex';
            }, 1000);
        } else {
            showMessage(data.message || 'Failed to post news.', 'error');
        }
    } catch (err) {
        showMessage('Server error. Please try again.', 'error');
    } finally {
        postNewsBtn.textContent = 'Post & Notify Subscribers';
        postNewsBtn.disabled = false;
    }
});

// Date format check
function isValidDate(value) {
    return /^\d{4}-\d{2}-\d{2}$/.test(value);
}

// Clears all form inputs
function clearForm() {
    titleInput.value = '';
    dateInput.value = '';
    imageInput.value = '';
    contentInput.value = '';
    dateError.style.display = 'none';
}

// Shows status message below the form
function showMessage(msg, type) {
    msgDiv.textContent = msg;
    msgDiv.className = type === 'success' ? 'sub-msg-success' : 'sub-msg-error';
    msgDiv.style.display = 'block';
}

// Hides the status message
function hideMessage() {
    msgDiv.style.display = 'none';
    msgDiv.textContent   = '';
}