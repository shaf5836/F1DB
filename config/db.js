import mysql from 'mysql2';
import dotenv from 'dotenv';

const envLoaded = dotenv.config(); // loading values from .env file
if(envLoaded.error){
    throw new Error(".env file is missing or failed to load");
}

const db = mysql.createPool({
    host: process.env.DB_HOST || 'localhost',
    port: process.env.DB_PORT || 3306,
    user: process.env.DB_USER || 'root',
    password: process.env.DB_PASSWORD || '',
    database: process.env.DB_NAME || 'f1_db',
    waitForConnections:true,
});

// Error management 
db.getConnection((err, connection) => {
    if (err) {
        console.error("DB connection failed:", err);
    } else {
        console.log(`Connected to ${process.env.DB_NAME}`);
        connection.release();
    }
});

export default db.promise();
