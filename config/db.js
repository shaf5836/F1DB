import mysql from 'mysql2';
import dotenv from 'dotenv';

const envLoaded = dotenv.config(); // loading values from .env file
if(envLoaded.error){
    throw new Error(".env file is missing or failed to load");
}

const db = mysql.createConnection({
    host: process.env.DB_HOST || 'localhost',
    user: process.env.DB_USER || 'root',
    password: process.env.DB_PASSWORD || '',
    database: process.env.DB_NAME || 'f1_db'
});

// Error management 
db.connect((err) => {
    if(err){
        console.error("DB connection failed:", err);
    }
    else{
        console.log(`Connected to ${process.env.DB_NAME}`);
    }
});

export default db.promise();
