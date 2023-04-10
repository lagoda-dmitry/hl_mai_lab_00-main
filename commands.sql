CREATE DATABASE sql_test;
CREATE TABLE IF NOT EXISTS `Author` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `title` VARCHAR(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`),
  KEY `fn` (`first_name`),
  KEY `ln` (`last_name`)
);
CREATE TABLE IF NOT EXISTS Message (
  id INT NOT NULL AUTO_INCREMENT,
  id_from INT NOT NULL,
  id_to INT NOT NULL,
  message VARCHAR(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (id),
  KEY ft (id_from, id_to)
);
insert into Author (first_name,last_name,email,title) values ('Иван','Иванов','ivanov@yandex.ru','господин');
insert into Author (first_name,last_name,email,title) values ('Петр','Петров','petrov@yandex.ru','господин');
CREATE TABLE IF NOT EXISTS `User` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(256) NOT NULL,
  `last_name` VARCHAR(256) NOT NULL,
  `login` VARCHAR(256) NOT NULL,
  `pswd` VARCHAR(256) NOT NULL,
  `email` VARCHAR(256) NULL,
  `title` VARCHAR(256) NULL,
  PRIMARY KEY (`id`));
  INSERT INTO User (first_name, last_name, login, password, email, title)
VALUES ('John', 'Doe', 'jdoe', '123456', 'jdoe@socialnet.com', 'CEO'),
       ('Jane', 'Doe', 'jadoe', 'qwerty', 'jadoe@socialnet.com', 'Marketing Manager'),
       ('Mike', 'Smith', 'msmith', 'password', 'msmith@socialnet.com', 'Software Developer'),
       ('Anna', 'Lee', 'alee', 'abc123', 'alee@socialnet.com', 'Graphic Designer');
CREATE TABLE IF NOT EXISTS `Message` (
  `message_id` INT NOT NULL AUTO_INCREMENT,
  `sender_id` INT NOT NULL,
  `receiver_id` INT NOT NULL,
  `text_message` VARCHAR(256) NULL,
  PRIMARY KEY (`message_id`));
INSERT INTO Message (sender_id, receiver_id, text_message)
VALUES (1, 2, 'Hi Jane! How are you?'),
       (2, 1, 'Hi John! I am good, thanks. How about you?'),
       (3, 4, 'Hey Anna, can you send me your design mockups?'),
       (4, 3, 'Sure, Mike. I will email them to you.');  
 CREATE TABLE IF NOT EXISTS `Wall` (
  `post_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `post_title` VARCHAR(256) NOT NULL,
  `post_text` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`post_id`));   
INSERT INTO Wall (user_id, post_title, post_text)
VALUES (1, 'New Product Launch', 'We are excited to announce the launch of our new product.'),
       (2, 'Marketing Campaign Update', 'Our latest marketing campaign is showing great results.'),
       (3, 'Code Update', 'We have updated our codebase to improve performance.'),
       (4, 'New Design Mockups', 'Here are the latest design mockups for the new project.');       
