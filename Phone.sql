#Selecting and using the Learning DB
USE Learning;

CREATE TABLE Phones (
                         SNO int AUTO_INCREMENT NOT NULL PRIMARY KEY,
                         phoneName varchar(60) NOT NULL,
                         phoneSize int NOT NULL DEFAULT 0,
                         processor varchar(60) NOT NULL DEFAULT 0,
                         RAM int NOT NULL DEFAULT 0,
                         storage int NOT NULL DEFAULT 0,
                         Price int NOT NULL
                    );

#Inserting values into the table

INSERT INTO Phones(phoneName, phoneSize, processor, RAM, storage, Price) VALUES ('iPhone 7',6, 'A10 Fusion', 3, 128, 42000);
INSERT INTO Phones(phoneName, phoneSize, processor, RAM, storage, Price) VALUES ('iPhone 7',6, 'A10 Fusion', 3, 256, 48000);
INSERT INTO Phones(phoneName, phoneSize, processor, RAM, storage, Price) VALUES ('iPhone 8',6, 'A11 Bionic', 3, 128, 58000);
INSERT INTO Phones(phoneName, phoneSize, processor, RAM, storage, Price) VALUES ('iPhone 10',6, 'A11 Bionic', 3, 128, 99000);
INSERT INTO Phones(phoneName, phoneSize, processor, RAM, storage, Price) VALUES ('iPhone 11',6, 'A12 Bionic', 3, 128, 100000);
INSERT INTO Phones
     (phoneName, phoneSize, processor, RAM, storage, Price)
VALUES
     ('Samsung Galaxy S20', 6, 'SnapDragon 855', 12, 128, 98000);

     INSERT INTO Phones
     (phoneName, phoneSize, processor, RAM, storage, Price)
VALUES
     ('Poco F1', 6, 'SnapDragon 720', 3, 258, 73000);



#Selecting entire table
SELECT * FROM Phones where phoneSize = 6;

#Selecting specific columns in a table
SELECT phoneName AS MODEL, price AS MRP
from Phones;

#Updating a single value
UPDATE Phones SET phoneSize = 7 WHERE phoneName = 'Poco F1';

#Updating multiple values
value
UPDATE Phones SET phoneSize = 7, price = 78900 WHERE phoneName = 'Poco F1';

#Deleting values
DELETE FROM Phones WHERE phoneSize = 7;
DELETE FROM Phones;