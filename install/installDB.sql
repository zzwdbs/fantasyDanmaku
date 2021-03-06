CREATE DATABASE danmaku CHARACTER SET utf8mb4;

use danmaku;

CREATE TABLE users
(
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  password VARCHAR(128),
  nickname VARCHAR(128),
  reg_code VARCHAR(128) NOT NULL ,
  permission INTEGER,
  enrolled BOOLEAN NOT NULL
);

SELECT * FROM users;


CREATE TABLE comments
(
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  user VARCHAR(128),
  content VARCHAR(1024),
  time TIMESTAMP,
  color CHAR(16)
);