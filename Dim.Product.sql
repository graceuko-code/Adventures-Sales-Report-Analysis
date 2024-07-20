--Cleansed Dim.Product Table-- 
SELECT 
  P.[ProductKey], 
  P.[ProductAlternateKey] AS ProductCode, 
  --,[ProductSubcategoryKey] 
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  P.[EnglishProductName] AS [Prduct Name], 
  PS.[EnglishProductSubcategoryName] AS [Sub Category], 
  ---Joined from Product Sub Category Table
  PC.[EnglishProductCategoryName] AS [Product Category], 
  --joined from Product Category Table
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  P.[Color] AS [Product Color], 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  P.[Size] AS [Product Size], 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  P.[ProductLine] AS [Product Line], 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  P.[ModelName] AS [Product Mode Name], 
  --,[LargePhoto]
  P.[EnglishDescription] AS [Produnt Description], 
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  ISNULL (P.Status, 'Outdated') AS [Product Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS P 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductSubcategory] as PS ON PS.[ProductSubcategoryKey] = P.[ProductSubcategoryKey] 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductCategory] as PC ON PS.[ProductCategoryKey] = PC.[ProductCategoryKey] 
ORDER BY 
  P.ProductKey ASC;

  