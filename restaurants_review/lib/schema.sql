-- Erik and Mario
-- Restaurant Reviews 1/23/13

CREATE TABLE chefs (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  mentor_id INTEGER
);

CREATE TABLE restaurants (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  neighborhood VARCHAR(255) NOT NULL,
  cuisine VARCHAR(255) NOT NULL
);

CREATE VIEW chefs_restaurants
  AS SELECT chefs.id, restaurants.id
  FROM chefs, restaurants
;

CREATE TABLE critics (
  id INTEGER PRIMARY KEY,
  screen_name VARCHAR(255) NOT NULL
);

CREATE TABLE restaurant_reviews (
  id INTEGER PRIMARY KEY,
  text_review VARCHAR(255) NOT NULL,
  score INTEGER
);

INSERT INTO chefs ('first_name', 'last_name', 'mentor_id')
  VALUES ('Erik', 'TheDude', 2), ('Mario', 'TheZig', 3), ('Hiro', 'Sushi', 1);


