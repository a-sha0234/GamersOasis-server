import express from "express";

import { getGames, getGame, getImages, getPlatform } from "./database.js";
const app = express();
app.use(express.json());

app.use(function (err, req, res, next) {
  console.error(err.stack);
  res.status(500).send("Something broke!");
});

app.get("/games", async (req, res) => {
  // get all notes
  const games = await getGames();
  res.send(games);
});

app.get("/game/:id", async (req, res) => {
  // get all notes
  const id = req.params.id;
  const game = await getGame(id);
  res.send(game);
});

app.get("/images/:id", async (req, res) => {
  // get all notes
  const id = req.params.id;
  const game = await getImages(id);
  res.send(game);
});

app.get("/platform/:id", async (req, res) => {
  // get all notes
  const id = req.params.id;
  const game = await getPlatform(id);
  res.send(game);
});

app.listen(8080, () => {
  console.log("listening on port 8080");
});
