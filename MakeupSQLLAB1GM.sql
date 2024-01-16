
--Exercise 1
--Scenario:
--AdventureWorks management is attempting to learn more about the vendors in their database. 
--You have been asked to produce a list of vendors’ Account Number, Name, and Credit Rating.
--The main tasks in this exercise are:
--•	Identify which table contains the information you require
--•	Check what fields the table holds
--•	Generate a query by using the SELECT statement with the FROM clause.

--Answer1
/* 1. Vendor table contains the information needed
   2. It holds Businessentityid, accountnumber, name, 
      creditrating, preferredvendorstatus, activeflag, 
      purchasingwebserviceurl, modifieddate.
   3. Query is given below*/
   
 SELECT     V.AccountNumber, V.Name, V.CreditRating
 FROM       VENDOR V;
 
----------------------------------------------------------------------------------------------------------- 
/*
Exercise 2
Scenario
The human resources department needs a list of employees to do some diversity calculations. 
They are requesting the fields: job title, birth date, marital status, gender, and hire date. 
Sort in descending order.
The main tasks in this exercise are:
•	Identify the correct table in the database that contains the information you need. 
•	Write a SELECT statement that includes, job title, birth date, marital status, gender, and hire date.
•	Sort the results by the hire date in descending order. */

--Answer 2
/* 1. Employee is the table that contains all the datas.
   2. Query with the order is given below. */

 SELECT      E.JobTitle, E.BirthDate, E.MaritalStatus, E.Gender, E.HireDate
 FROM        Employee E
 ORDER BY    E.HireDate DESC;

------------------------------------------------------------------------------------------------------------ 
/* 
 Exercise 3
Scenario
The human resources department also wants a distinct list of job titles for their research. 
In their list they need the job title.
The main tasks in this exercise are:
•	Identify which table contains the information you require.
•	Write the SELECT statement that retrieves the correct field.
•	Make sure the list is a distinct list of job titles. */

--Answer 3
/* 1. The table that has this information is the employee table
   2. Given below is the query */
 
 SELECT DISTINCT   E.JobTitle
 FROM              Employee E;

-------------------------------------------------------------------------------------------------------------
/*
Exercise 4
Scenario
The marketing department is trying to get an ad created. 
They are wondering how many products the company has that are of the color ‘Red’. 
Get the name of the product, the product number, the size, weight, and color.  
Retrieve the details from the correct table using a SELECT statement and the WHERE clause.
*/

--Answer 4
/* Given below is the query with where clause. The table with this information product */

SELECT   P.Name, P.ProductNumber, P.SizeN, P.Weight, P.Color
FROM     Product P
WHERE    Color = 'Red';

-------------------------------------------------------------------------------------------------------------
/*
Exercise 5
Scenario
Select product information (product ID, name, standard cost, and color) 
that have names that start with “Long” or “Short”.
*/

--Answer 5
/* Using Table Product to retrive the data needed*/

SELECT   P.ProductID, P.Name, P.StandardCost, P.Color
FROM     Product P
WHERE    P.Name LIKE '%Long%'
OR       P.Name LIKE '%Short%';

-------------------------------------------------------------------------------------------------------------
/*
Exercise 6
Scenario
A linguist in the marketing department has requested a list of all people with 
last names that contain either ‘ton’ or ‘van’. 
Please include title, first name, middle name, and last name. 
Please sort by last name.
*/

--Answer 6
/* Person table contains all the needed data */

SELECT      Pr.TiTle, Pr.FirstName, Pr.MiddleName, Pr.LastName
FROM        Person Pr
WHERE       Pr.LastName LIKE '%ton%'
OR          Pr.LastName LIKE '%van%'
ORDER BY    Pr.LastName;

--------------------------------------------------------------------------------------------------------------
/*
Exercise 7
Scenario
Using Employee, list the different job titles that are not salaried (each title should appear only once). 
Include all non-salaried job titles in alphabetical order.
*/

--Answer 7
/* List of job titles that are not salaried using employee table */

SELECT      E.JobTitle, E.SalariedFlag 
FROM        Employee E
WHERE       E.SalariedFlag = 0
ORDER BY    E.JobTitle ASC;

--------------------------------------------------------------------------------------------------------------
/*Exercise 8
Scenario
Using SalesTerritory and SalesOrderHeader, provide a query showing TerritoryID, 
the Territory Name, the SalesYTD. Sort by SalesYTD descending.*/
 
--Answer 8 
/* Query showing TerritoryID, Territory Name, SalesYTD with SalesYTD descending */

SELECT      St.Name, St.SalesYTD, St.TerritoryID
FROM        SalesTerritory St
ORDER BY    St.SalesYTD DESC;

--------------------------------------------------------------------------------------------------------------
 
 
 
 
 
 
 
 
 