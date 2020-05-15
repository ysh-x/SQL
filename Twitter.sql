#Problem Statement using CRUD 
#Create a database named Learning. Create a table which could save all the user details and accounts
#A column to count the user number
#Username of text
#Followers and following
#-----------
#Solution

#To create a new DB
CREATE DATABASE Learning;

#To switch to a current DB
USE Learning;

#To view which database you are using
SELECT database();

#--Creating a Table --# C
#Creating a table
CREATE TABLE Twitter (noOfUsers int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
						username varchar(50) NOT NULL UNIQUE,
						password varchar(50) NOT NULL default 'Password',
						followers int NOT NULL default 0,
						following int NOT NULL default 0,
						noOfPosts int NOT NULL default 0
						
					);

#To see the descriptions of the table 
DESC Twitter;

#--Inserting --# C

#inserting values into the table
INSERT INTO Twitter(username, password, following, followers, noOfPosts) VALUES('iamrockyrock','RI123EINT', 124, 456, 4);

#inserting multiple values to the table
INSERT INTO Twitter(username, password, following, followers, noOfPosts) VALUES('iamrockyrock2312','RI123EINT', 124, 456, 4);
INSERT INTO Twitter(username, password, following, followers, noOfPosts) VALUES('isi3m34ijain','RI1werweerT', 1234, 4536, 42);
INSERT INTO Twitter(username, password, following, followers, noOfPosts) VALUES('prash.x','werwerw34er', 12234, 432, 23);
INSERT INTO Twitter(username, password, following, followers, noOfPosts) VALUES('ygsh.x2','R234erwer', 12423, 231, 5);
INSERT INTO Twitter(username, password, following, followers, noOfPosts) VALUES('werwe324','23r23r2er', 412446, 432, 1);
INSERT INTO Twitter(username, password, following, followers, noOfPosts) VALUES('i342342ew','23423r2fwef', 514524, 654, 9);

#--Reading a Table --# R

#Viewing the Table
SELECT * FROM Twitter;

#dropping the table from the DB
#DROP TABLE twitter;

#--Updating a Table --#  U

#Updating the table using WHERE
UPDATE Twitter SET username = ' iamrockyfool ' WHERE username = 'iamrockyrock2312';

#--Deleting a table --#
DELETE FROM Twitter WHERE username = 'iamrockyrock2312';
