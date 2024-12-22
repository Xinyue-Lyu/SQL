--a
CREATE TABLE sales(
name VARCHAR(100), 
discount VARCHAR(100),
month VARCHAR(100),
price INT);

.mode tabs
.import mrFrumbleData.txt Sales


--b
--name->discount not holds FD
SELECT count(*)
FROM sales AS s1, sales AS s2
WHERE s1.name = s2.name
AND s1.discount != s2.discount;

--name->price
SELECT count(*)
FROM sales AS s1, sales AS s2
WHERE s1.name = s2.name
AND s1.price != s2.price;

--month->discount
SELECT count(*)
FROM sales AS s1, sales AS s2
WHERE s1.month = s2.month
AND s1.discount != s2.discount;


--c
CREATE TABLE sales1(
name VARCHAR(100) PRIMARY KEY,
price INT);

CREATE TABLE sales2(
month VARCHAR(100) PRIMARY KEY,
discount VARCHAR(100));

CREATE TABLE sales3(
month VARCHAR(100) REFERENCES sales2(month),
name VARCHAR(100) REFERENCES sales1(name));


--d
INSERT INTO sales1 (name,price)
SELECT DISTINCT sales.name, sales.price
FROM sales;
--37(with title)

INSERT INTO sales2 (month,discount)
SELECT DISTINCT sales.month, sales.discount
FROM sales;
--13(with title)

INSERT INTO sales3 (month,name)
SELECT DISTINCT sales.month, sales.name
FROM sales;
--427(with title)
