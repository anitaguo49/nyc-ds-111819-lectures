SELECT *  
from sales.orders;

1. Return all the cites of customers located in California and the number of customers in each city.
SELECT s.city, COUNT(s.customer_id) AS Customer_num 
FROM sales.customers s
WHERE state='ca'
GROUP BY s.city;

2. Return the cities in California which has more than 10 customers.
SELECT s.city, count(s.customer_id) AS more_than_ten_cust
FROM sales.customers s
WHERE state='ca'
GROUP BY s.city
HAVING COUNT(s.customer_id)>10;

3. Use the GROUP BY clause to return distinct cities together with state and zip code from the sales.customers table.
SELECT s.city, s.state, s.zip_code
FROM sales.customers s
GROUP BY s.city;

4. Rewrite this query with the DISTINCT keyword.
SELECT DISTINCT s.city, s.state, s.zip_code
FROM sales.customers s;

5. Return the products whose list price is greater than 300 and model is 2018.
SELECT p.product_name, p.list_price, p.model_year
FROM production.products p
WHERE p.list_price>300
AND p.model_year=2018;

6. Return the products whose list prices are between 1,899 and 1,999.99.
SELECT p.product_name, p.list_price
FROM production.products p
WHERE p.list_price BETWEEN 1899 AND 1999.99;

7. Use the IN operator to find products whose list price is 299.99 or 466.99 or 489.99. Order by price descending.
SELECT p.product_name, p.list_price
FROM production.products p
WHERE p.list_price IN (299.99, 466.99, 489.99)
ORDER BY p.list_price DESC;

8. Return the average list price in the products table of product names that include the word 'Cruiser'.
SELECT AVG(p.list_price) Avg_list_price, p.product_name
FROM production.products p
WHERE p.product_name LIKE '%Cruiser%';


9. Return the customer_id, first_name, last_name, and phone number of sales.customers table where phone is not null, order by last name descending.
SELECT s.customer_id, s.first_name, s.last_name, s.phone
FROM sales.customers s
WHERE s.phone IS NOT NULL
ORDER BY s.last_name DESC;

10. Use the cast function to explicitly filter orders from the orders table where requiredDate is greater than 2017-01-01 and 2017-01-31.


11. Return the order number, order status and total sales from the orders and orderdetails tables.
SELECT s.order_id, s.order_status, COUNT(s.order_id) Total_sales
FROM sales.orders s
GROUP BY s.order_id;

12. Return the list of customers that placed no phone numbers.
SELECT s.first_name, s.last_name, s.phone
FROM sales.customers s
WHERE s.phone IS NULL;

13. Return the customer first name, last name, email, phone and the number of the orders that customers with no phone number have made.
SELECT s.first_name, s.last_name, s.email, s.phone, COUNT(o.order_id) Total_order
FROM sales.customers s
JOIN sales.orders o
USING (customer_id)
WHERE s.phone IS NULL
GROUP BY s.email;
