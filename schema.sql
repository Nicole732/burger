-- Drops the day_planner_db if it already exists --
DROP DATABASE IF EXISTS burgers_db;

-- Create the database day_planner_db and specified it for use.

DROP DATABASE IF EXISTS burgers_db;
CREATE DATABASE burgers_db;

USE burgers_db;

-- Create the table plans.
CREATE TABLE burgers (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  devoured BOOLEAN default false,
  PRIMARY KEY (id)
);

-- will go in the seeds.sql file

-- Insert a set of records.

INSERT INTO burgers (name) VALUES ('Happy meal burger');
INSERT INTO burgers (name, devoured) VALUES ('Chicken burger', true );
INSERT INTO burgers (name) VALUES ('Double cheese');