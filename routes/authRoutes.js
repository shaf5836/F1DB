
// Router lets us define endpoints separately and mount them on the main app
import { Router } from 'express';
import bcrypt from 'bcrypt';
import db from '../config/db.js';

const router = Router();

// POST /api/auth/signup
// POST is used when the client is SENDING data to the server  or like sending a resource to the server
// Here the client sends user_name + password via req.body — same as a signup form submission

// Signup -> Validate input → Check duplicate → Hash → Insert → Set session → Respond
router.post('/signup', async (req, res) => {
    try {
        const { user_name, password, favorite_driver_id, favorite_team_id } = req.body;

        // Early return pattern — validates before doing any DB work
        if (!user_name || !password) {
            return res.status(400).json({ success: false, message: 'user_name and password are required' });
        }
        if (password.length < 6) {
            return res.status(400).json({ success: false, message: 'Password must be at least 6 characters' });
        }

        // GET pattern used inside a POST route — querying the DB to check if username exists and GET is when you want to request a resource
        const [existing] = await db.query(
            'SELECT user_name FROM User WHERE user_name = ?', [user_name]
        );
        if (existing.length > 0) {
            return res.status(409).json({ success: false, message: 'Username already taken' });
        }

        // Hash password then INSERT — the server processes the data sent by the client and it is saved into a database
        const password_hash = await bcrypt.hash(password, 10);
        await db.query(
            `INSERT INTO User (user_name, password_hash, favorite_driver_id, favorite_team_id, fantasy_points, f_league_id)
             VALUES (?, ?, ?, ?, 0, 1)`,
            [user_name, password_hash, favorite_driver_id || null, favorite_team_id || null]
        );

        // Auto-login: set session right after signup so the user doesn't need to log in separately
        req.session.user_name = user_name;

        res.status(201).json({ success: true, message: 'Account created', data: { user_name } });
    } catch (err) {
        console.error('Signup error:', err);
        res.status(500).json({ success: false, message: err.message });
    }
});

// POST /api/auth/login
// POST — client sends credentials, server verifies and responds

router.post('/login', async (req, res) => {
    try {
        const { user_name, password } = req.body;

        if (!user_name || !password) {
            return res.status(400).json({ success: false, message: 'user_name and password are required' });
        }

        // GET from DB — fetch user row to verify against
        const [rows] = await db.query(
            'SELECT user_name, password_hash FROM User WHERE user_name = ?', [user_name]
        );

        // 401 if user not found — same status pattern used in requireAuth
        if (rows.length === 0) {
            return res.status(401).json({ success: false, message: 'Invalid credentials' });
        }

        // bcrypt.compare checks the plain password against the stored hash
        const valid = await bcrypt.compare(password, rows[0].password_hash);
        if (!valid) {
            return res.status(401).json({ success: false, message: 'Invalid credentials' });
        }

        // Set session on successful login — this is what requireAuth checks later
        req.session.user_name = rows[0].user_name;
        res.json({ success: true, message: 'Logged in', data: { user_name: rows[0].user_name } });
    } catch (err) {
        console.error('Login error:', err);
        res.status(500).json({ success: false, message: err.message });
    }
});

// POST /api/auth/logout
// POST because this is an action that changes server state (destroys session)
// transcript: DELETE "deletes resources from the server" — logout is a POST because it acts on a session, not a named resource
router.post('/logout', (req, res) => {
    if (!req.session) {
        return res.json({ success: true, message: 'Already logged out' });
    }
    req.session.destroy((err) => {
        if (err) {
            return res.status(500).json({ success: false, message: err.message });
        }
        // Clear the session cookie from the browser so it's fully cleaned up
        res.clearCookie('connect.sid');
        res.json({ success: true, message: 'Logged out' });
    });
});

// GET /api/auth/me
// GET because the client is REQUESTING a resource — the current user's data

router.get('/me', async (req, res) => {
    try {
        if (!req.session || !req.session.user_name) {
            return res.status(401).json({ success: false, message: 'Not logged in' });
        }

        const [rows] = await db.query(
            `SELECT user_name, favorite_driver_id, favorite_team_id, fantasy_points, position_current
             FROM User WHERE user_name = ?`,
            [req.session.user_name]
        );

        // Edge case: session exists but user was deleted from DB — destroy the stale session
        if (rows.length === 0) {
            req.session.destroy(() => {});
            return res.status(401).json({ success: false, message: 'User no longer exists' });
        }

        res.json({ success: true, data: rows[0] });
    } catch (err) {
        console.error('Me error:', err);
        res.status(500).json({ success: false, message: err.message });
    }
});

export default router;

