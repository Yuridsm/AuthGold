DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS RequestTrace;

CREATE TABLE Customers(
	Id INT PRIMARY KEY,
	FirstName VARCHAR(100) NOT NULL,
	LastName VARCHAR(100) NOT NULL,
	BuyAmount INT,
	CreatedAt TIMESTAMP NOT NULL,
	UpdatedAt TIMESTAMP NOT NULL,
	Password VARCHAR(256) NOT NULL
);

CREATE TABLE Books(
	Id INT PRIMARY KEY,
	Name VARCHAR(100) NOT NULL,
	Author VARCHAR(25) NOT NULL,
	Secret VARCHAR(256) NOT NULL,
	CreatedAt TIMESTAMP NOT NULL,
	UpdatedAt TIMESTAMP NOT NULL
);

CREATE TABLE RequestTrace(
	id VARCHAR(36) primary key,
	ClientCode VARCHAR(36) NOT NULL,
	HttpMethod VARCHAR(20) NOT NULL,
	Address VARCHAR(256) NOT NULL,
	HttpStatusCode INT NOT NULL,
	ElapsedTime TIME(6) NOT NULL,
	CreatedAt TIMESTAMP NOT NULL,
	UpdatedAt TIMESTAMP NOT NULL
);

