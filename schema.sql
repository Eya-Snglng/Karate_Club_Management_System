CREATE TABLE Members (
  MemberID INTEGER PRIMARY KEY,
  RankID VARCHAR,
  FirstName VARCHAR,
  LastName VARCHAR,
  DateOfBirth DATE,
  Gender VARCHAR,
  ContactNumber VARCHAR,
  EmergencyContactNumber VARCHAR,
  Email VARCHAR,
  Address TEXT,
  EnrollmentDate DATE,
  Status VARCHAR
);

CREATE TABLE MemberInstructors (
  MemberID INTEGER,
  InstructorID INTEGER,
  AssignDate DATE
);

CREATE TABLE Instructors (
  InstructorID INTEGER PRIMARY KEY,
  FirstName VARCHAR,
  LastName VARCHAR,
  Qualification TEXT,
  Experience INTEGER,
  ContactNumber VARCHAR,
  Email VARCHAR
);

CREATE TABLE BeltRanks (
  RankID INTEGER PRIMARY KEY,
  RankName VARCHAR,
  Description TEXT,
  Color VARCHAR
);

CREATE TABLE BeltTests (
  TestID INTEGER PRIMARY KEY,
  MemberID INTEGER,
  InstructorID INTEGER,
  RankID INTEGER,
  TestDate DATE,
  Result VARCHAR
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
  PaymentMethod VARCHAR
);
