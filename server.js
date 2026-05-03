import express from 'express';
import session from 'express-session'; 
import dotenv from 'dotenv';
import cors from 'cors';
import {dirname , join} from 'path';
import { fileURLToPath } from 'url';


import calendarRouter from './routes/calendar.js';
import driverStandingsRouter from './routes/driverStandings.js';
import teamStandingsRouter from './routes/teamStandings.js'
import radioRoutes from './routes/radioRoutes.js';
import authRoutes from './routes/authRoutes.js'; 
import fantasyRoutes from './routes/fantasyRoutes.js'; 
import shopRoutes from './routes/shopRoutes.js';

dotenv.config();

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors(
  {
    origin: true, 
    credentials: true
  }
)); 
app.use(express.json());
app.use(session({
    secret: process.env.SESSION_SECRET || 'dev-secret-change-me',
    resave: false,
    saveUninitialized: false,
    cookie: {
        httpOnly: true,
        maxAge: 1000 * 60 * 60 * 24 * 7  // 7 days
    }
}));
app.use(express.static(join(__dirname, 'main')));

// API Routes
app.use('/api/calendar', calendarRouter);
app.use('/api/driverStandings', driverStandingsRouter);
app.use('/api/teamStandings', teamStandingsRouter);
app.use('/api/radios', radioRoutes);
app.use('/api/auth', authRoutes);          
app.use('/api/fantasy', fantasyRoutes);
app.use('/api/shop', shopRoutes);

// Page fallback routes (existing)
app.get('/', (_req, res) =>
  res.sendFile(join(__dirname, 'main', 'index.html'))
);
app.get('/calendar', (_req, res) =>
  res.sendFile(join(__dirname, 'main', 'calendar.html'))
);
app.get('/driverStandings', (_req, res) =>
  res.sendFile(join(__dirname, 'main', 'driverStandings.html'))
);
app.get('/teamStandings', (_req, res) =>
  res.sendFile(join(__dirname, 'main', 'teamStandings.html'))
);
app.get('/radio', (req, res) => {
    res.sendFile('radio.html', { root: 'main' });
});

// New fantasy + auth page fallback routes [Nubayet]
app.get('/login', (_req, res) =>
  res.sendFile(join(__dirname, 'main', 'fantasyLogin.html'))
);
app.get('/signup', (_req, res) =>
  res.sendFile(join(__dirname, 'main', 'fantasySignup.html'))
);
app.get('/fantasy', (_req, res) =>
  res.sendFile(join(__dirname, 'main', 'fantasy.html'))
);
app.get('/leaderboard', (_req, res) =>
  res.sendFile(join(__dirname, 'main', 'fantasyLeaderboard.html'))
);
app.get('/shop', (_req, res) =>
  res.sendFile(join(__dirname, 'main', 'shop.html'))
);

// 404 Error handling
app.use((_req, res) =>
  res.status(404).json({ success: false, message: 'Route not found' })
);

// port listen
app.listen(PORT, () => {
  console.log(`\nF1 Website running at http://localhost:${PORT}\n`);
});