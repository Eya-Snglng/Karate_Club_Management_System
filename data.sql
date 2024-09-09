-- Insert data into Members
INSERT INTO Members (MemberID, RankID, FirstName, LastName, DateOfBirth, Gender, ContactNumber, EmergencyContactNumber, Email, Address, EnrollmentDate, Status) VALUES
(1, 6, 'John', 'Doe', '1990-01-01', 'Male', '1234567890', '0987654321', 'john.doe@example.com', '123 Main St', '2023-01-01', 'Active'),
(2, 4, 'Jane', 'Smith', '1992-02-02', 'Female', '2345678901', '1987654321', 'jane.smith@example.com', '456 Elm St', '2023-02-01', 'Active'),
(3, 5, 'Alice', 'Johnson', '1994-03-03', 'Female', '3456789012', '2987654321', 'alice.johnson@example.com', '789 Oak St', '2023-03-01', 'Active'),
(4, 9, 'Bob', 'Brown', '1996-04-04', 'Male', '4567890123', '3987654321', 'bob.brown@example.com', '101 Pine St', '2023-04-01', 'Trial'),
(5, 2, 'Charlie', 'Davis', '1998-05-05', 'Male', '5678901234', '4987654321', 'charlie.davis@example.com', '202 Maple St', '2023-05-01', 'Suspended'),
(6, 1, 'Diana', 'Miller', '2000-06-06', 'Female', '6789012345', '5987654321', 'diana.miller@example.com', '303 Birch St', '2023-06-01', 'Active'),
(7, 3, 'Eve', 'Wilson', '2002-07-07', 'Female', '7890123456', '6987654321', 'eve.wilson@example.com', '404 Cedar St', '2023-07-01', 'Inactive'),
(8, 10, 'Frank', 'Moore', '2004-08-08', 'Male', '8901234567', '7987654321', 'frank.moore@example.com', '505 Spruce St', '2023-08-01', 'Trial'),
(9, 8, 'Grace', 'Taylor', '2006-09-09', 'Female', '9012345678', '8987654321', 'grace.taylor@example.com', '606 Fir St', '2023-09-01', 'Suspended'),
(10, 7, 'Hank', 'Anderson', '2008-10-10', 'Male', '0123456789', '9987654321', 'hank.anderson@example.com', '707 Willow St', '2023-10-01', 'Active');

-- Insert data into Instructors
INSERT INTO Instructors (InstructorID, FirstName, LastName, Qualification, Experience, ContactNumber, Email) VALUES
(1, 'Isaac', 'Newton', 'Black Belt', 10, '1234567890', 'isaac.newton@example.com'),
(2, 'Albert', 'Einstein', 'Black Belt', 8, '2345678901', 'albert.einstein@example.com'),
(3, 'Marie', 'Curie', 'Black Belt', 6, '3456789012', 'marie.curie@example.com'),
(4, 'Nikola', 'Tesla', 'Black Belt', 5, '4567890123', 'nikola.tesla@example.com'),
(5, 'Galileo', 'Galilei', 'Black Belt', 7, '5678901234', 'galileo.galilei@example.com');

-- Insert data into MemberInstructors
INSERT INTO MemberInstructors (MemberID, InstructorID, AssignDate) VALUES
(1, 4, '2023-01-01'),
(2, 1, '2023-02-01'),
(3, 1, '2023-03-01'),
(4, 2, '2023-04-01'),
(5, 5, '2023-05-01'),
(6, 2, '2023-06-01'),
(7, 5, '2023-07-01'),
(8, 3, '2023-08-01'),
(9, 4, '2023-09-01'),
(10, 3, '2023-10-01');

-- Insert data into SubscriptionPeriods
INSERT INTO SubscriptionPeriods (PeriodID, MemberID, PaymentID, StartDate, EndDate, Fees) VALUES
(1, 4, 2, '2023-04-01', '2023-12-31', 100.00),
(2, 3, 1, '2023-03-01', '2023-12-31', 100.00),
(3, 5, 4, '2023-05-01', '2023-12-31', 100.00),
(4, 1, 5, '2023-01-01', '2023-12-31', 100.00),
(5, 2, 3, '2023-02-01', '2023-12-31', 100.00);

-- Insert data into Payments
INSERT INTO Payments (PaymentID, MemberID, Amount, PaymentDate, PaymentMethod) VALUES
(1, 5, 100.00, '2023-01-01', 'Credit Card'),
(2, 3, 100.00, '2023-02-01', 'Cash'),
(3, 1, 100.00, '2023-03-01', 'Credit Card'),
(4, 2, 100.00, '2023-04-01', 'Cash'),
(5, 4, 100.00, '2023-05-01', 'Credit Card'),
(6, 6, 99.00, '2023-06-01', 'Cash'),
(7, 10, 150.00, '2023-07-01', 'Credit Card'),
(8, 9, 120.00, '2023-08-01', 'Credit Card'),
(9, 7, 108.00, '2023-09-01', 'Cash'),
(10, 8, 130.00, '2023-10-01', 'Cash');

-- Insert data into BeltTests
INSERT INTO BeltTests (TestID, MemberID, InstructorID, RankID, TestDate, Result) VALUES
(1, 2, 4, 5, '2023-01-01', 'Pass'),
(2, 4, 2, 1, '2023-02-01', 'Pass'),
(3, 3, 1, 2, '2023-03-01', 'Fail'),
(4, 5, 3, 4, '2023-04-01', 'Pass'),
(5, 1, 5, 3, '2023-05-01', 'Fail');

-- Insert data into BeltRanks
INSERT INTO BeltRanks (RankID, RankName, Description, Color) VALUES
(1, 'White Belt', 'Beginner level', 'White'),
(2, 'Yellow Belt', 'Intermediate level', 'Yellow'),
(3, 'Green Belt', 'Advanced level', 'Green'),
(4, 'Blue Belt', 'Expert level', 'Blue'),
(5, 'Brown Belt', 'Master level', 'Brown'),
(6, 'Black Belt', 'Grandmaster level', 'Black'),
(7, 'Red Belt', 'Special level', 'Red'),
(8, 'Purple Belt', 'Special level', 'Purple'),
(9, 'Orange Belt', 'Special level', 'Orange'),
(10, 'Gray Belt', 'Special level', 'Gray');
