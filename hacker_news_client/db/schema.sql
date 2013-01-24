CREATE TABLE posts (
  id INTEGER PRIMARY KEY,
  hn_id INTEGER,
  title VARCHAR(255),
  article_link VARCHAR(255),
  post_link VARCHAR(255),
  author_id INTEGER
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY,
  hn_id INTEGER,
  body VARCHAR(255),
  author_id INTEGER,
  post_id INTEGER,
  parent_id INTEGER,
  comment_link VARCHAR(255)
);

CREATE TABLE authors (
  id INTEGER PRIMARY KEY,
  screen_name VARCHAR(255)
);