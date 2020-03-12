-- Drops the day_planner_db if it already exists --
DROP DATABASE IF EXISTS burgers_db;

-- Create the database day_planner_db and specified it for use.

DROP DATABASE IF EXISTS burgers_db;
CREATE DATABASE burgers_db;

USE burgers_db;

-- Create the table plans.
CREATE TABLE burgers (
  id int NOT NULL AUTO_INCREMENT,
  burger varchar(255) NOT NULL,
  devoured BOOLEAN default false,
  PRIMARY KEY (id)
);

