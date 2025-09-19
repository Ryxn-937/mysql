CREATE DATABASE user_management;
CREATE TABLE users(name VARCHAR(20), mail_id VARCHAR(20), password VARCHAR(20));
INSERT INTO users VALUES('Jacob', 'jacob@gmail.com', 'Jacob@123');
INSERT INTO users VALUES('John', 'john@gmail.com', 'John@123');


CREATE TABLE user_complaints(name VARCHAR(20), complaint VARCHAR(100));
INSERT INTO user_complaints VALUES('Jacob', 'App is not working properly');
INSERT INTO user_complaints VALUES('John', 'Unable to login');
