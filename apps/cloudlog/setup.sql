-- create the databases
CREATE DATABASE IF NOT EXISTS cloudlog;
CREATE DATABASE IF NOT EXISTS options;

-- create the users for each database
CREATE USER 'admin' IDENTIFIED BY 'adminpass';
GRANT ALL PRIVILEGES ON *.* TO 'admin' IDENTIFIED BY 'adminpass';
