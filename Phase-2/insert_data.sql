USE travel;

INSERT INTO `travel`.`Department` (`Department_name`) VALUES
('Finance'), ('HR'), ('IT'), ('Marketing'), ('Operations'),
('Legal'), ('Travel'), ('Procurement'), ('Research'), ('Admin'),
('Security'), ('Customer Support'), ('Training'), ('Design'), ('Quality'),
('Logistics'), ('Public Relations'), ('Compliance'), ('Risk Management'), ('Strategy');

INSERT INTO `travel`.`Employee` (`Employee_ID`,`FName`, `Minit`, `LName`, `Email`, `Workstation_address`) VALUES
(1,'John', 'A', 'Doe', 'john.doe@example.com', '123 Main St'),
(2,'Jane', 'B', 'Smith', 'jane.smith@example.com', '456 Maple Ave'),
(3,'Alice', 'C', 'Johnson', 'alice.j@example.com', '789 Oak Dr'),
(4,'Bob', 'D', 'Brown', 'bob.brown@example.com', '101 Birch Rd'),
(5,'Carol', 'E', 'Davis', 'carol.d@example.com', '202 Cedar Ln'),
(6,'Dan', 'F', 'Miller', 'dan.miller@example.com', '303 Pine St'),
(7,'Eve', 'G', 'Wilson', 'eve.wilson@example.com', '404 Spruce Ct'),
(8,'Frank', 'H', 'Moore', 'frank.moore@example.com', '505 Elm St'),
(9,'Grace', 'I', 'Taylor', 'grace.taylor@example.com', '606 Walnut Ave'),
(10,'Hank', 'J', 'Anderson', 'hank.anderson@example.com', '707 Poplar Blvd'),
(11,'Ivy', 'K', 'Thomas', 'ivy.thomas@example.com', '808 Aspen Dr'),
(12,'Jack', 'L', 'Jackson', 'jack.jackson@example.com', '909 Willow Ln'),
(13,'Karen', 'M', 'White', 'karen.white@example.com', '111 Chestnut Pl'),
(14,'Leo', 'N', 'Harris', 'leo.harris@example.com', '222 Fir St'),
(15,'Mona', 'O', 'Martin', 'mona.martin@example.com', '333 Cypress Ave'),
(16,'Nate', 'P', 'Clark', 'nate.clark@example.com', '444 Redwood Blvd'),
(17,'Olive', 'Q', 'Lewis', 'olive.lewis@example.com', '555 Ash Dr'),
(18,'Paul', 'R', 'Lee', 'paul.lee@example.com', '666 Beech St'),
(19,'Quinn', 'S', 'Walker', 'quinn.walker@example.com', '777 Magnolia Ave'),
(20,'Rose', 'T', 'Hall', 'rose.hall@example.com', '888 Hemlock Ct');

INSERT INTO `travel`.`Employee_Department` (`Department_ID`, `Employee_ID`) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20);

INSERT INTO `travel`.`Budget Officer` (`BudgetOfficer_ID`, `Payment_Date`, `Approval_Auth`) VALUES
(5, '2024-06-01 12:00:00', 1),
(10, '2024-06-01 12:00:00', 1),
(15, '2024-06-01 12:00:00', 1),
(20, '2024-06-01 12:00:00', 1);

INSERT INTO `travel`.`Supervisor` (`Supervisor_ID`, `Approval_Auth`) VALUES
(6, 1), (9, 1),
(12, 1), (16, 1);

INSERT INTO `travel`.`University Financial Service Officer` (`UFS_ID`, `Role`) VALUES
(7, 'Policy Monitor'), (14, 'Compliance Officer');

INSERT INTO `travel`.`Pre-Travel Approval Report` 
(`Employee_ID`, `Supervisor_ID`, `Est. Amount`, `Category`, `Number of Days`, `Approval Status`) 
VALUES
(1, 6, 1300.00, 'Conference', 5, 1),
(2, 9, 900.00, 'Training', 4, 1),
(3, 12, 1500.00, 'Meeting', 3, 1),
(4, 16, 1000.00, 'Workshop', 2, 0),
(5, 6, 1500.00, 'Conference', 5, 1),
(6, 9, 1000.00, 'Training', 3, 1),
(7, 12, 1400.00, 'Research', 7, 1),
(8, 16, 1200.00, 'Meeting', 2, 0),
(9, 6, 1000.00, 'Workshop', 3, 1),
(10, 9, 1200.00, 'Conference', 6, 1),
(11, 12, 1200.00, 'Meeting', 2, 1),
(12, 16, 1300.00, 'Training', 5, 0),
(13, 6, 1050.00, 'Conference', 3, 1),
(14, 9, 1500.00, 'Workshop', 4, 1),
(15, 12, 1200.00, 'Research', 6, 1),
(16, 16, 1000.00, 'Meeting', 2, 1),
(17, 6, 1100.00, 'Training', 4, 1),
(18, 9, 950.00, 'Conference', 5, 1),
(19, 12, 1300.00, 'Workshop', 3, 1),
(20, 16, 1000.00, 'Research', 6, 0);


INSERT INTO `travel`.`Reimbursement` (`Re_ID`, `BudgetOfficer_ID`, `Employee_ID`, `Amount`, `Date`) VALUES
(1, 5, 1, 1200.50, '2024-06-01 12:00:00'),
(2, 10, 2, 890.00, '2024-06-01 12:00:00'),
(3, 15, 3, 1350.75, '2024-06-01 12:00:00'),
(4, 20, 4, 980.25, '2024-06-01 12:00:00'),
(5, 5, 5, 1450.00, '2024-06-01 12:00:00'),
(6, 10, 6, 990.90, '2024-06-01 12:00:00'),
(7, 15, 7, 1235.50, '2024-06-01 12:00:00'),
(8, 20, 8, 1100.00, '2024-06-01 12:00:00'),
(9, 5, 9, 875.75, '2024-06-01 12:00:00'),
(10, 10, 10, 1150.25, '2024-06-01 12:00:00'),
(11, 15, 11, 1025.00, '2024-06-01 12:00:00'),
(12, 20, 12, 1195.80, '2024-06-01 12:00:00'),
(13, 5, 13, 980.65, '2024-06-01 12:00:00'),
(14, 10, 14, 1380.40, '2024-06-01 12:00:00'),
(15, 15, 15, 1120.00, '2024-06-01 12:00:00'),
(16, 20, 16, 925.00, '2024-06-01 12:00:00'),
(17, 5, 17, 1075.25, '2024-06-01 12:00:00'),
(18, 10, 18, 860.90, '2024-06-01 12:00:00'),
(19, 15, 19, 1240.60, '2024-06-01 12:00:00'),
(20, 20, 20, 990.75, '2024-06-01 12:00:00');

INSERT INTO `travel`.`post-travel expense report` 
(`Report_ID`, `Employee_ID`, `BudgetOfficer_ID`, `UFS_ID`, `Amount`, `ReceiptFile`, `Vendor_Name`, `Start_Date`, `End_Date`, `Destination`, `Description`, `Insurance Coverage`, `Hotel_name`, `Meal_type`, `Transportation_Type`) 
VALUES
(1, 1, 5, 7, 1200.50, 2, 'CTA Transit', '2024-01-01 10:00:00', '2024-01-05 18:00:00', 'Chicago', 'Tech conference', 'Yes', 'Hilton Downtown', 'Breakfast', 'Public Transport'),
(2, 2, 10, 14, 890.00, 3, 'Delta Airlines', '2024-01-10 08:30:00', '2024-01-13 21:00:00', 'Atlanta', 'Training workshop ', 'Yes', 'Marriott Marquis', 'Lunch', 'Air'),
(3, 3, 15, 7, 1350.75, 3, 'Personal Vehicle', '2024-01-20 09:00:00', '2024-01-22 19:30:00', 'Denver', 'Annual sales meeting', 'No', 'Hyatt Regency', 'Dinner', 'Personal Vehicle'),
(4, 4, 20, 14, 980.25, 3, 'BART', '2024-02-01 07:15:00', '2024-02-08 20:45:00', 'San Francisco', 'Department training workshop', 'Yes', 'Holiday Inn', 'Breakfast, Lunch', 'Public Transport'),
(5, 5, 5, 7, 1450.00, 4, 'MTA Subway', '2024-02-10 11:00:00', '2024-02-14 22:15:00', 'New York', 'Attending industry conference', 'Yes', 'Westin Times Square', 'All Meals', 'Public Transport'),
(6, 6, 10, 14, 990.90, 4, 'Personal Vehicle', '2024-02-18 12:45:00', '2024-02-20 18:10:00', 'Los Angeles', 'Professional development training', 'No', 'JW Marriott', 'Lunch, Dinner', 'Personal Vehicle'),
(7, 7, 15, 7, 1235.50, 3, 'Uber', '2024-02-25 06:50:00', '2024-03-03 17:30:00', 'Miami', 'Conducting field research', 'Yes', 'Loews Miami Beach', 'Dinner', 'Ride-share'),
(8, 8, 20, 14, 1100.00, 2, 'Delta Airlines', '2024-03-03 10:20:00', '2024-03-04 20:20:00', 'Seattle', 'Business meeting with stakeholders', 'No', 'W Seattle', 'Breakfast', 'Air'),
(9, 9, 5, 7, 875.75, 3, 'MBTA', '2024-03-10 08:10:00', '2024-03-12 21:00:00', 'Boston', 'Skill-building workshop', 'Yes', 'Hilton Garden Inn', 'Lunch', 'Public Transport'),
(10, 10, 10, 14, 1150.25, 4, 'American Airlines', '2024-03-17 09:30:00', '2024-03-23 22:00:00', 'Orlando', 'Attending industry conference', 'No', 'Waldorf Astoria', 'All Meals', 'Air'),
(11, 11, 15, 7, 1025.00, 3, 'Lyft', '2024-03-22 07:00:00', '2024-03-24 19:00:00', 'Austin', 'Business meeting with stakeholders', 'Yes', 'Hyatt Place', 'Lunch', 'Ride-share'),
(12, 12, 20, 14, 1195.80, 2, 'Southwest Airlines', '2024-03-28 06:45:00', '2024-04-02 20:15:00', 'Phoenix', 'Professional development training', 'No', 'Embassy Suites', 'Breakfast', 'Air'),
(13, 13, 5, 7, 980.65, 4, 'Personal Vehicle', '2024-04-03 08:15:00', '2024-04-06 19:45:00', 'Philadelphia', 'Attending industry conference', 'Yes', 'Hilton Penn’s Landing', 'Lunch, Dinner', 'Personal Vehicle'),
(14, 14, 10, 14, 1380.40, 4, 'Delta Airlines', '2024-04-08 09:50:00', '2024-04-12 21:10:00', 'Dallas', 'Skill-building workshop', 'Yes', 'Omni Dallas', 'All Meals', 'Air'),
(15, 15, 15, 7, 1120.00, 3, 'Uber', '2024-04-13 10:10:00', '2024-04-18 20:30:00', 'Nashville', 'Conducting field research', 'No', 'Sheraton Downtown', 'Dinner', 'Ride-share'),
(16, 16, 20, 14, 925.00, 2, 'Personal Vehicle', '2024-04-19 07:35:00', '2024-04-20 18:25:00', 'Minneapolis', 'Business meeting with stakeholders', 'Yes', 'Radisson Blu', 'Breakfast', 'Personal Vehicle'),
(17, 17, 5, 7, 1075.25, 3, 'Southwest Airlines', '2024-04-24 08:25:00', '2024-04-27 21:00:00', 'Houston', 'Professional development training', 'Yes', 'Marriott Medical Center', 'Lunch', 'Air'),
(18, 18, 10, 14, 860.90, 3, 'Personal Vehicle', '2024-04-30 06:55:00', '2024-05-3 19:45:00', 'Detroit', 'Attending industry conference', 'No', 'DoubleTree', 'Lunch', 'Personal Vehicle'),
(19, 19, 15, 7, 1240.60, 4, 'Lyft', '2024-05-05 07:10:00', '2024-05-07 20:10:00', 'Las Vegas', 'Skill-building workshop', 'Yes', 'Hilton Grand', 'All Meals', 'Ride-share'),
(20, 20, 20, 14, 990.75, 3, 'Delta Airlines', '2024-05-10 09:00:00', '2024-05-15 18:30:00', 'Salt Lake City', 'Conducting field research', 'Yes', 'Marriott City Center', 'Breakfast, Dinner', 'Air');
