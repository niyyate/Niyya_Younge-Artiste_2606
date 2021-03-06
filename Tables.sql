33. Provide Oracle relational database table definitions that correspond to the logical data model previously provided. 


CREATE TABLE Books
(
Book_Name VARCHAR(50) NOT Null,
Author Varchar(35) NOT NUll,
Book_Number INT AUTO_INCREMENT NOT NULL,
ISBN_Number VARCHAR(25) NOT Null,
Usage_Type VARCHAR(10) NOT NULL,
User_Seller VARCHAR(25) NOT NULL,
Price FLOAT NOT NULL,
Kiosk INT(7) NOT NULL, 
Views INT(10) NOT NULL,
Timestamp TIMESTAMP NOT NULL,
PRIMARY KEY(BOOKNAME),
UNIQUE(Book_Number),
FOREIGN KEY(Usage_Type) REFERENCES Usage_Type(Usage_Condition),
FOREIGN KEY(User_Seller) REFERENCES User_Accounts(Username),
FOREIGN KEY(Kiosk) REFERENCES Kiosk(Kiosk_Num)
);

CREATE TABLE User_Accounts
(
Account_type VARCHAR(10), 
School VARCHAR(255) NOT NULL,
Username VARCHAR(25) NOT NULL,
Password Varchar(10) Not Null,
First_Name VARCHAR(25) NOT NULL,
Last_Name VARCHAR(25) NOT NULL,
Email VARCHAR(25) NOT NULL,
Phone_Number INT(10) NOT NULL,
Address_1 VARCHAR(255) NOT NULL,
Address_2 VARCHAR(255) NOT NULL,
City VARCHAR(25) NOT NULL,
State VARCHAR(25) NOT NULL,
Zip INT(5) NOT NULL,
Name_On_Card VARCHAR(25) NOT NULL,
B_Address_1 VARCHAR(255) NOT NULL,
B_Address_2 VARCHAR(255) NOT NULL, 
B_City VARCHAR(25) NOT NULL,
B_State VARCHAR(25) NOT NULL,
B_Zip INT(5) NOT NULL, 
Credit Card number INT(16) NOT NULL,
Security code INT(3) NOT NULL,
Books INT(10),
Transactions INT(20),
Money Spent FLOAT,
PRIMARY KEY(Username),
FOREIGN KEY(Account_Type) REFERENCES Account_Types(Account_Types)
);

CREATE TABLE Transactions
(
Tran_Num INT AUTO_INCREMENT NOT NULL,
User_Seller VARCHAR(25) NOT NULL, 
User_Buy_Rent VARCHAR(25) NOT NULL, 
Book_Num VARCHAR(50) NOT Null, 
Price FLOAT NOT NULL,
Rent BOOLEAN NOT NULL,
Date_Due DATE, 
Kiosk INT(7) NOT NULL,  
Refund BOOLEAN,
UNIQUE(Tran_Num),
PRIMARY KEY(Tran_Num),
FOREIGN KEY(User_Seller) REFERENCES User_Accounts(Username),
FOREIGN KEY(User_Buy_Rent) REFERENCES User_Accounts(Username),
FOREIGN KEY(Book_Num) REFERENCES Books(Book_Number),
FOREIGN KEY(Kiosk) REFERENCES Kiosk(Kiosk_Num)
);

CREATE TABLE Schools
(
School_Name VARCHAR(25) NOT NULL,
Number_Kiosks INT(10),
Number_Users INT(40),
School Account BOOLEAN NOT NULL, 
Number_Transactions Int(40),
Number_Refunds Int(40),
PRIMARY KEY(School_Name)
);

CREATE TABLE EmployeeAccounts
(
Username VARCHAR(25) NOT NULL,
First Name VARCHAR(25) NOT NULL,
Last Name VARCHAR(25) NOT NULL, 
Email VARCHAR(25) NOT NULL,
Account_type VARCHAR(10) NOT NULL, 
PRIMARY KEY(Username),
UNIQUE(Username),
FOREIGN KEY(Account_Type) REFERENCES Account_Types(Account_Types)
);

CREATE TABLE Kiosk
(
Kiosk_Num INT(7) NOT NULL, 
School_Name VARCHAR(25) NOT NULL,
Books INT(20),
Views INT(20),
Transactions INT(20),
Refunds INT(20),
UNIQUE(Kiosk_Num),
PRIMARY KEY(Kiosk_Num),
FOREIGN KEY(School_Name) REFERENCES Schools(School_Name)
);

CREATE TABLE Account_Types
(Account_type VARCHAR(10) NOT NULL, 
View_Profile BOOLEAN NOT NULL,
Validate_User BOOLEAN NOT NULL
Can_Rent BOOLEAN NOT NULL,
Delete_Account BOOLEAN, 
Process_Refund BOOLEAN,
PRIMARY KEY(Account_Type)
);

CREATE TABLE Usage_Type
(
Used_Condition VARCHAR(25)
Usage_Num INT(1)
);

CREATE TABLE Refunds
(
Username VARCHAR(25) NOT NULL,
Amount Float NOT NULL,
Reason VARCHAR(500) NOT NULL,
Employee VARCHAR(25) NOT NULL,
Tran_Num INT AUTO_INCREMENT NOT NULL,
PRIMARY KEY(Tran_Num),
FOREIGN KEY(Username) REFERENCES User_Accounts(Username), 
FOREIGN KEY(Employee) REFERENCES EmployeeAccounts(Username)
);



