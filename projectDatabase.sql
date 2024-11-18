DROP DATABASE if exists CafeLA;
CREATE DATABASE CafeLA;
USE CafeLA;
CREATE TABLE UserAccountTable (
	UserID int(11) primary key not null auto_increment,
    Username varchar(50) unique not null,
    Password varchar(50) not null,
    Email varchar(50) unique not null,
    Fname varchar(50) not null,
    Lname varchar(50) not null,
    University varchar(50) not null
);
CREATE TABLE ImageTable (
	ImageID int(11) primary key not null auto_increment,
    Image varchar(255) unique not null
);
CREATE TABLE PostTable (
	PostID int(11) primary key not null auto_increment,
    Name varchar(50) unique not null,
    Address varchar(100) not null,
    ImageArray varchar(255) not null,
    UserID int(11) not null,
    Latitude double(10, 6) not null,
    Longitude double(10, 6) not null,
    Description text(65535) not null,
	Rating tinyint(11) not null,
	Directions text(65535) not null,
	Ambiance text(65535) not null,
	Views int(11) not null,
    Time datetime(0) default current_timestamp not null,
    FOREIGN KEY fk1(UserID) REFERENCES UserAccountTable(UserID)
);

INSERT INTO UserAccountTable (Username, Password, Email, Fname, Lname, University) VALUES 
('username1', 'password1', 'email1@gmail.com', 'tommy', 'trojan', 'USC'),
('username2', 'password2', 'email2@gmail.com', 'billy', 'bruin', 'UCLA'),
('username3', 'password3', 'email3@gmail.com', 'john', 'smith', 'N/A');

INSERT INTO ImageTable (Image) VALUES
('https://lh3.googleusercontent.com/p/AF1QipPDKKI416C530U0AiN5HTUNLDQa_AamJe_iViDX=s1360-w1360-h1020'),
('https://lh3.googleusercontent.com/p/AF1QipNlQ5IjrSXWFEwj7ZkFCu387DJG6Isc9PaeCC77=s1360-w1360-h1020'),
('https://lh3.googleusercontent.com/p/AF1QipMxerkdhKDJ9dajeqiPakIu-r73TrsZNO8rBJe4=s1360-w1360-h1020'),
('https://lh3.googleusercontent.com/p/AF1QipPqGsR4Ka-dKieNeB6pEk-JlSFP_WkR9_BVSF8=s1360-w1360-h1020'),
('https://lh3.googleusercontent.com/p/AF1QipO0uQV23fgCqTuz5pyWWr-3i00Rm-wVkbP7TCUT=s1360-w1360-h1020'),
('https://lh3.googleusercontent.com/p/AF1QipMleu9CGwfKL6AqjCoXMzKDmrI8GqprMxc2CjKR=s1360-w1360-h1020');

INSERT INTO PostTable (Name, Address, ImageArray, UserID, Latitude, Longitude, Description, Rating, Directions, Ambiance, Views) VALUES
('Starbucks', '3201 S Hoover St, Los Angeles, CA 90089', '1, 2, 3', 3, '34.026272', '-118.284019', 'example description', 4.4, 'example directions', 'example ambiance', 326),
('DULCE', '3096 McClintock Ave Ste 1420, Los Angeles, CA 90007', '4, 5, 6', 1, '34.025321', '-118.285365', 'example description', 4.9, 'example directions', 'example ambiance', 449);
