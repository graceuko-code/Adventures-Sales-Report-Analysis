--Cleansed Dim.Customer table--
SELECT 
  c.CustomerKey As CustomerKey, 
  --[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.FirstName As [First Name], 
  --[MiddleName]
  c.LastName As [Last Name], 
  c.FirstName + ' ' + LastName As [Full Name], 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  Case c.Gender When 'M' Then 'Male' When 'F' Then 'Female' End As Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.DateFirstPurchase, 
  --,[CommuteDistance]
  g.City AS [Customer City] -- Joined in [Customer City] column from the Geography table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g 
  ON c.GeographyKey = g.GeographyKey
  ORDER BY 
  CustomerKey ASC;
