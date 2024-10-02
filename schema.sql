CREATE TABLE Members (
  MemberID INTEGER PRIMARY KEY,
  RankID VARCHAR (255),
  FirstName VARCHAR (255),
  LastName VARCHAR (255),
  DateOfBirth DATE,
  Gender VARCHAR (255),
  ContactNumber VARCHAR (255),
  EmergencyContactNumber VARCHAR (255),
  Email VARCHAR (255),
  Address TEXT,
  EnrollmentDate DATE,
  Status VARCHAR (255)
);

CREATE TABLE MemberInstructors (
  MemberID INTEGER,
  InstructorID INTEGER,
  AssignDate DATE
);

CREATE TABLE Instructors (
  InstructorID INTEGER PRIMARY KEY,
  FirstName VARCHAR (255),
  LastName VARCHAR (255),
  Qualification TEXT,
  Experience INTEGER,
  ContactNumber VARCHAR (255),
  Email VARCHAR (255)
);

CREATE TABLE BeltRanks (
  RankID INTEGER PRIMARY KEY,
  RankName VARCHAR (255),
  Description TEXT,
  Color VARCHAR (255)
);

CREATE TABLE BeltTests (
  TestID INTEGER PRIMARY KEY,
  MemberID INTEGER,
  InstructorID INTEGER,
  RankID INTEGER,
  TestDate DATE,
  Result VARCHAR (255)
);

CREATE TABLE SubscriptionPeriods (
  PeriodID INTEGER PRIMARY KEY,
  MemberID INTEGER,
  PaymentID INTEGER,
  StartDate DATE,
  EndDate DATE,
  Fees DECIMAL
);

CREATE TABLE Payments (
  PaymentID INTEGER PRIMARY KEY,
  MemberID INTEGER,
  Amount DECIMAL,
  PaymentDate DATE,
  PaymentMethod VARCHAR (255)
);
