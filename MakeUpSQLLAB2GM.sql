/*Exercise 1 
Using Product, determine the number of products that the company has.*/

--Answer 1
/*Numberof Products given below*/

SELECT SUM (SAFETYSTOCKLEVEL)
FROM   Product;

---------------------------------------------------------------------------------------------------
/*Exercise 2
Using Product, list the different product colors (each color should appear only once). Include all 
colors with a SafetyStockLevel of 100 in alphabetical order.*/

--Answer 2
/* SELECT DISTINCT used to get the required color*/

SELECT DISTINCT  P.Color
FROM             Product P
WHERE            P.SafetyStockLevel = 100
ORDER BY         P.Color ASC;

---------------------------------------------------------------------------------------------------
/*Exercise 3
Using Employee, please show how many people are salaried by marital status. Include just the 
marital status and the quantity of salaried employees.*/

--Answer 3
/*Number of people salaried by marital status given in the below query*/

SELECT  COUNT (E.SalariedFlag)
FROM           Employee E
WHERE          E.MaritalStatus = 'M';

---------------------------------------------------------------------------------------------------
/*Exercise 4: 
Using SalesPerson, Person, and JobCandidate, use a UNION statement to pull all people who 
applied to the company as well as those who are now sales people. Please include the 
BusinessEntityID, the first name, and the last name of the person. Do not count people twice. 
(HINT: there are joins in both parts of the UNION).*/

--Answer 4
/*INNER JOIN used in the two parts of UNION, between PERSON and Jobcandidate & PERSON AND SALESPERSON*/

SELECT        Jc.BusinessEntityID, P.FirstName, P.LastName
FROM          JobCandidate  Jc
INNER JOIN    Person P
ON            Jc.BusinessEntityID = P.BusinessEntityID

UNION

SELECT        Sp.BusinessEntityID, P.FirstName, P.LastName
FROM          SalesPerson Sp
INNER JOIN    Person P
ON            Sp.BusinessEntityID = P.BusinessEntityID;

---------------------------------------------------------------------------------------------------
/*Exercise 5: 
Using PurchaseOrderHeader and Vendor, pull only the vendors that DO NOT have purchase 
orders by using a LEFT OUTER JOIN.  Show BusinessEntityID, Name, and ActiveFlag – but 
they can only show up once in the resultset. (NOTE: BusinessEntityID in the Vendor table (PK) 
is the same as VendorID in the PurchaseOrderHeader table(FK)).*/

--Answer 5
/*Used V.ActiveFlag =0*/
SELECT           V.BusinessEntityID, V.Name, V.Activeflag 
FROM             Vendor V
LEFT OUTER JOIN  PurchaseOrderHeader POH
ON               POH.VendorID = V.BusinessEntityID
WHERE            V.ActiveFlag = 0;

---------------------------------------------------------------------------------------------------
/*Exercise 6: 
From the SalesOrderHeader, find the SalesPersonID with the lowest orderdate on any sales 
order.  Show the SalespersonID, the date of the sale, and what the subtotal amount is. Use a 
subquery. (HINT: in the where clause. HINT: the subtotal needs to be added together as an 
aggregate)*/

--Answer 6

SELECT    SOH.SalespersonID, SOH.OrderDate, SOH.SubTotal
FROM      SalesOrderHeader SOH
WHERE     SOH.OrderDate = (SELECT MIN (SOH2.OrderDate) 
                           FROM        SalesOrderHeader SOH2);

---------------------------------------------------------------------------------------------------
/*Exercise 7: 
Using PurchaseOrderHeader and Vendor, show the total due (TotalDue) by vendor, for vendors 
that have had. Do not include vendors that do not have Return only the vendor and the total due.*/ 

--Answer 7
/*Total Due by vendor as shown in the query*/

SELECT DISTINCT  POH.TotalDue
FROM             PurchaseOrderHeader POH
LEFT OUTER JOIN  Vendor V
ON               POH.ModifiedDate = V.ModifiedDate;

---------------------------------------------------------------------------------------------------
