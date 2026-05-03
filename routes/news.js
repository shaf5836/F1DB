import { Router } from 'express';
import db from '../config/db.js';

const router = Router();

router.get('/', async (req, res) => {
    try {
        const [rows] = await db.query(
            'SELECT id, title, date, content, image_url FROM news ORDER BY date DESC'
        );
        res.json({ success: true, data: rows });
    } catch (err) {
        console.error('Driver standings error:', err);
        res.status(500).json({ success: false, message: err.message });
    }
});

export default router;
