--- 1. Create the table structure
Create table dim_locations( 
    location_id INT IDENTITY(1,1) PRIMARY KEY,
    location_name VARCHAR(100));


--- 2. Pull unique locations into it from your main table
Insert into dim_locations(location_name)
select distinct Location
from [Devbhumi restaurant dashboard]
where Location is not null;


select * from dim_locations;


--- 1. Create the table structure
Create table dim_food_items(
     food_item_id INT IDENTITY(1,1) PRIMARY KEY,
     food_item VARCHAR(100),
     food_category VARCHAR(50));


--- 2. Pull unique dishes into it from your main table 
Insert into dim_food_items(food_item, food_category)
select distinct [Food_Item],[Food_Category]
from [Devbhumi restaurant dashboard]
where [Food_Item] is not null;


select * from dim_food_items;


--- fact restaurant order table 
CREATE TABLE fact_restaurant_orders (
    -- Date and Keys
    Order_Date varchar(50),
    location_id INT,
    food_item_id INT,
    
    -- Order Details
    Price INT,
    Quantity INT,
    Order_Value INT,
    Ratings INT,
    Order_Type VARCHAR(50),
    Platform VARCHAR(50),
    
    -- Operational Metrics
    Sales_Amount INT,
    Food_Cost DECIMAL(10,2),
    Staff_Cost DECIMAL(10,2),
    Packaging_Cost DECIMAL(10,2),
    Rent_Allocation DECIMAL(10,2),
    Commission_Fee DECIMAL(10,2),
    Discount_Amount DECIMAL(10,2),
    Gross_Profit DECIMAL(10,2),
    Net_Profit DECIMAL(10,2),
    
    -- Context Columns
    Weather VARCHAR(50)
);


INSERT INTO fact_restaurant_orders (
    Order_Date,
    Price,
    Quantity,
    Order_Value,
    Ratings,
    Order_Type,
    Platform,
    Sales_Amount,
    Food_Cost,
    Staff_Cost,
    Packaging_Cost,
    Rent_Allocation,
    Commission_Fee,
    Discount_Amount,
    Gross_Profit,
    Net_Profit,
    Weather,
    location_id,
    food_item_id
)

SELECT 
    d.[Order_Date],
    d.Price,
    d.Quantity,
    d.[Order_Value],
    d.Ratings,
    d.[Order_Type],
    d.Platform,
    d.Sales_Amount,
    d.Food_Cost,
    d.Staff_Cost,
    d.Packaging_Cost,
    d.Rent_Allocation,
    d.Commission_Fee,
    d.Discount_Amount,
    d.Gross_Profit,
    d.Net_Profit,
    d.Weather,
    l.location_id,
    f.food_item_id
FROM [Devbhumi restaurant dashboard] d
LEFT JOIN dim_locations l ON d.Location = l.location_name
LEFT JOIN dim_food_items f ON d.[Food_Item] = f.food_item;


----- INVENTORY MODEL

WITH DailySales AS (
    -- Step 1: Calculate total quantities sold per day per item per location
    SELECT 
        Location,
        [Food_Item],
        [Order_Date],
        SUM(Quantity) AS Total_Qty_Sold
    FROM [Devbhumi restaurant dashboard]
    GROUP BY Location, [Food_Item], [Order_Date]
),

InventoryMetrics AS (
    -- Step 2: Find Average and Max sales to calculate inventory bounds
    SELECT 
        Location,
        [Food_Item],
        AVG(Total_Qty_Sold) AS Avg_Daily_Demand,
        MAX(Total_Qty_Sold) AS Max_Daily_Demand
    FROM DailySales
    GROUP BY Location, [Food_Item]
)


-- Step 3: Calculate final Safety Stock and Reorder Points (Assuming 1 day Lead Time)
    SELECT 
        Location,
        [Food_Item],
        CEILING(Avg_Daily_Demand) AS Baseline_Stock,
        CEILING((Max_Daily_Demand * 2) - (Avg_Daily_Demand * 1)) AS Safety_Stock,
        CEILING((Avg_Daily_Demand * 1) + ((Max_Daily_Demand * 2) - (Avg_Daily_Demand * 1))) AS Reorder_Point
    INTO fact_inventory_stratergy 
    FROM InventoryMetrics; 

select * from fact_inventory_stratergy;
