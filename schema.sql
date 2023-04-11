CREATE DATABASE  gamersOasis;
USE gamersOasis;


CREATE TABLE games (
    id integer PRIMARY KEY AUTO_INCREMENT,
    title TEXT NOT NULL,
    price TEXT NOT NULL,
    descriptions TEXT NOT NULL,
    link TEXT NOT NULL,
    genre TEXT NOT NULL,
    developers TEXT NOT NULL,
    publishers TEXT NOT NULL,
    inCart TEXT NOT NULL,
    rating TEXT NOT NULL,
    release_date TEXT NOT NULL,
    cover TEXT NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT NOW()
);


CREATE TABLE game_images (
  id INT PRIMARY KEY AUTO_INCREMENT,
  game_id INT NOT NULL,
  image_url TEXT NOT NULL,
  FOREIGN KEY (game_id) REFERENCES games(id)
  
);

CREATE TABLE game_platforms (
  id INT PRIMARY KEY AUTO_INCREMENT,
  game_id INT NOT NULL,
  plaforms TEXT NOT NULL,
  FOREIGN KEY (game_id) REFERENCES games(id)
  
);

ALTER TABLE games
DROP COLUMN images;

INSERT INTO games (title, price, descriptions, link, genre , developers, publishers , rating , release_date , cover   )
VALUES
("The Last Of Us Part 1", "£70", "Joel, a ruthless survivor, is hired to smuggle a 14 year-old girl, Ellie, out of an oppressive military quarantine zone, but what starts as a simple job soon transforms into a profound journey across the U.S. What does it take to survive in the brutal yet beautiful world that is The Last of Us?", "https://www.playstation.com/en-gb/games/the-last-of-us-part-i/", "Survival horror", "Naughty Dog" , "PlayStation Studios", "9" , "June 14, 2013", "https://asset.cloudinary.com/dzvgw21mp/e6b02d768a9ef8631cfadc99c6ebcd61" );



INSERT INTO game_platforms (game_id, plaforms) 
VALUES
(1, "PS5"),
(1, "PS4"),
(1, "PS3");


INSERT INTO game_images (game_id, image_url) 
VALUES
(1, "https://asset.cloudinary.com/dzvgw21mp/fc9e6f8519667d4aa1939d39f9f7e4ba"),
(1, "https://asset.cloudinary.com/dzvgw21mp/17fc4e2f231c4eeceb52281e5f80ac1a"),
(1, "https://asset.cloudinary.com/dzvgw21mp/591ac9e2b9ba306e74708fa9b355d596");




