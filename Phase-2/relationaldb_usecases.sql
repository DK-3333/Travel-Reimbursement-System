-- Test Cases for testing the database.

-- This fetches approved pre-travel reports with their estimated amounts and categories
SELECT p.Approval_report_ID, e.FName, e.LName, p.`Est. Amount`, p.Category, p.`Number of Days`
FROM `Pre-Travel Approval Report` p
JOIN Employee e ON p.Employee_ID = e.Employee_ID
WHERE p.`Approval Status` = 1
ORDER BY p.`Est. Amount` DESC;

-- This fetches total reimbursement amount for each department
SELECT d.Department_name, SUM(r.Amount) as Total_Reimbursement
FROM Reimbursement r
JOIN Employee e ON r.Employee_ID = e.Employee_ID
JOIN Employee_Department ed ON e.Employee_ID = ed.Employee_ID
JOIN Department d ON ed.Department_ID = d.Department_ID
GROUP BY d.Department_name
ORDER BY Total_Reimbursement DESC;

-- This fetches the most common travel destinations
SELECT Destination, COUNT(*) as Visit_Count
FROM `post-travel expense report`
GROUP BY Destination
ORDER BY Visit_Count DESC;

-- This compares the estimated vs. actual travel expenses for each employee
SELECT e.Employee_ID, e.FName, e.LName, 
p.`Est. Amount` as Estimated_Amount, 
pt.Amount as Actual_Amount,
(pt.Amount - p.`Est. Amount`) as Difference
FROM `Pre-Travel Approval Report` p
JOIN Employee e ON p.Employee_ID = e.Employee_ID
JOIN `post-travel expense report` pt ON p.Employee_ID = pt.Employee_ID
WHERE p.`Approval Status` = 1
ORDER BY Difference DESC;

-- This fetches employees with the highest travel expenses
SELECT e.Employee_ID, e.FName, e.LName, SUM(pt.Amount) as Total_Expenses
FROM Employee e
JOIN `post-travel expense report` pt ON e.Employee_ID = pt.Employee_ID
GROUP BY e.Employee_ID, e.FName, e.LName
ORDER BY Total_Expenses DESC
LIMIT 5;

-- This fetches most commonly used transportation types and their average costs
SELECT Transportation_Type, COUNT(*) as Usage_Count, AVG(Amount) as Avg_Cost
FROM `post-travel expense report`
GROUP BY Transportation_Type
ORDER BY Usage_Count DESC;

-- This list all supervisors and the number of travel requests they've approved
SELECT s.Supervisor_ID, e.FName, e.LName, COUNT(*) as Approval_Count
FROM `Pre-Travel Approval Report` p
JOIN Supervisor s ON p.Supervisor_ID = s.Supervisor_ID
JOIN Employee e ON s.Supervisor_ID = e.Employee_ID
WHERE p.`Approval Status` = 1
GROUP BY s.Supervisor_ID, e.FName, e.LName
ORDER BY Approval_Count DESC;

-- This calculates the average meal expenses by meal type
SELECT Meal_type, AVG(Amount) as Avg_Expense
FROM `post-travel expense report`
GROUP BY Meal_type
ORDER BY Avg_Expense DESC;

-- This compares the reimbursement processing by different budget officers
SELECT b.BudgetOfficer_ID, e.FName, e.LName, 
COUNT(r.Re_ID) as Reimbursement_Count, 
AVG(r.Amount) as Avg_Amount
FROM `Budget Officer` b
JOIN Employee e ON b.BudgetOfficer_ID = e.Employee_ID
JOIN Reimbursement r ON b.BudgetOfficer_ID = r.BudgetOfficer_ID
GROUP BY b.BudgetOfficer_ID, e.FName, e.LName
ORDER BY Reimbursement_Count DESC;

-- This list travel reports that had both air transportation and included all meals
SELECT pt.Report_ID, e.FName, e.LName, pt.Destination, pt.Start_Date, pt.End_Date
FROM `post-travel expense report` pt
JOIN Employee e ON pt.Employee_ID = e.Employee_ID
WHERE pt.Transportation_Type = 'Air'
AND pt.Meal_type LIKE '%All Meals%';