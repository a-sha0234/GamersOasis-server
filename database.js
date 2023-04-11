import mysql from "mysql2";
import dotenv from "dotenv";
dotenv.config();

const pool = mysql
  .createPool({
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DATABASE,
  })
  .promise();

export async function getGames() {
  //  all Games
  const [rows] = await pool.query("SELECT * FROM games");
  return rows;
}

export async function getGame(id) {
  //  get 1 Game
  const [rows] = await pool.query("SELECT * FROM games WHERE id = ?", [id]);
  return rows;
}

export async function getPlatform(id) {
  //  get platforms for game
  const [rows] = await pool.query(
    "SELECT * FROM game_platforms WHERE game_id = (SELECT id FROM games WHERE id = ?)",
    [id]
  );
  return rows;
}

export async function getImages(id) {
  //  get images for game
  const [rows] = await pool.query(
    "SELECT * FROM game_images WHERE game_id = (SELECT id FROM games WHERE id = ?)",
    [id]
  );
  return rows;
}

// const game = await getGame(1);

// console.log(game);
