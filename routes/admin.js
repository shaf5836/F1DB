import { Router } from 'express';
import db from '../config/db.js';
import { sendNewsNotification } from '../services/mailer.js';

const router = Router();

router.post('/post-news', async (req, res) => {
    const { title, date, image, content } = req.body;

    // Basic validation
    if (!title || !date || !content) {
        return res.status(400).json({ success: false, message: 'Title, date and content are required' });
    }

    // Save news article to database
    try {
        await db.query(
            'INSERT INTO news (title, date, content, image_url) VALUES (?, ?, ?, ?)',
            [title, date, content, image || null]
        );
    } catch (err) {
        console.error('News insert error:', err);
        return res.status(500).json({ success: false, message: 'Failed to save news article' });
    }

    // Get all subscribers from database
    let subscribers = [];
    try {
        const [rows] = await db.query('SELECT email FROM subscribers');
        subscribers = rows;
    } catch (err) {
        console.error('Subscriber fetch error:', err);
        return res.status(500).json({ success: false, message: 'News saved but failed to fetch subscribers' });
    }

    // Send email notification to every subscriber
    let notified = 0;
    for (const subscriber of subscribers) {
        try {
            await sendNewsNotification({ email: subscriber.email, title, date, content, image });
            notified++;
        } catch (err) {
            // Log failure for this subscriber but keep going for the rest
            console.error(`Failed to notify ${subscriber.email}:`, err.message);
        }
    }

    res.json({
        success: true,
        message: 'News posted and subscribers notified',
        notified  // how many emails were sent successfully
    });
});

export default router;