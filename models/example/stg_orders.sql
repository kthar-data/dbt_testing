SELECT
    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_ID,
    p.Product_Name,
    o.Quantity,
    o.Order_Date
FROM
    `ivory-voyage-399322.orders.orders` as o 
JOIN 
    {{ ref("stg_customers") }} c ON o.Customer_ID =c.Customer_ID
JOIN 
    `ivory-voyage-399322.orders.Products` p ON o.Product_ID = p.Product_ID