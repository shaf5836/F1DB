import express from 'express';
import dotenv from 'dotenv';
import cors from 'cors';
import {dirname , join} from 'path';
import { fileURLToPath } from 'url';


import calendarRouter from './routes/calendar.js';
import driverStandingsRouter from './routes/driverStandings.js';
import teamStandingsRouter from './routes/teamStandings.js'
import radioRoutes from './routes/radioRoutes.js';

dotenv.config();

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.static(join(__dirname, 'main')));

// Routes
app.use('/api/calendar', calendarRouter);
app.use('/api/driverStandings', driverStandingsRouter);
app.use('/api/teamStandings', teamStandingsRouter);
app.use('/api/radios', radioRoutes);

// Fallaback
app.get('/calendar', (_req, res) =>
  res.sendFile(join(__dirname, 'main', 'calendar.html'))
);
app.get('/driverStandings', (_req, res) =>
  res.sendFile(join(__dirname, 'main', 'driverStandings.html'))
);
app.get('/teamStandings', (_req, res) =>
  res.sendFile(join(__dirname, 'main', 'teamStandings.html'))
);
app.get('/', (_req, res) =>
  res.sendFile(join(__dirname, 'main', 'index.html'))
);
app.get('/radio', (req, res) => {
    res.sendFile('radio.html', { root: 'main' });
});

// 404 Error handling
app.use((_req, res) =>
  res.status(404).json({ success: false, message: 'Route not found' })
);
// port listen
app.listen(PORT, () => {
  console.log(`\nF1 Website running at http://localhost:${PORT}\n`);
});