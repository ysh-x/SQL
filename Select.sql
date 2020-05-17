#DB USED: Learning.Books

# Refining selections
use Learning;

SELECT DISTINCT author_fname,author_lname FROM Books;

#Using Distinct and concat
SELECT DISTINCT(CONCAT_WS(' ', author_fname, author_lname)) AS 'AUTHORS'
FROM Books;

#Order By
#Number
SELECT *
From Books
ORDER BY released_year;

#NUmber Too
SELECT *
FROM Books
ORDER BY stock_quantity DESC;

#Words / Strings
SELECT *
FROM Books
ORDER BY title DESC;

#With Distinct
SELECT DISTINCT released_year
From Books
ORDER BY released_year;

#Using Concat and ORDER BY
SELECT CONCAT_WS(' ', author_fname,author_lname) AS 'Entitled Authors'
FROM Books
ORDER BY CONCAT(author_fname,author_lname);

#Using Multiple ORDER BY
SELECT CONCAT_WS(' ',author_fname,author_lname) AS 'Authors'
FROM Books
ORDER BY author_lname,author_fname;

#LIMITS
SELECT *
FROM Books
ORDER BY stock_quantity
LIMIT 10;

#LIKE WITH ORDER BY
SELECT *
FROM Books
WHERE stock_quantity like '___'
ORDER BY stock_quantity DESC;

#A Big QUERY (FROM WHERE LIKE ORDER BY CONCAT)
SELECT book_id, title, CONCAT_WS(' ',author_fname,author_lname) AS 'Author Name', released_year, stock_quantity, pages
FROM Books
WHERE stock_quantity
like '___'
ORDER BY stock_quantity DESC;

#Exercises
SELECT title
From Books
WHERE title like '%stories%';

SELECT title, pages
FROM Books
ORDER BY pages DESC
LIMIT 1;

SELECT CONCAT(title, ' - ', released_year) AS 'Summary'
FROM Books
ORDER BY released_year DESC
LIMIT 3;

SELECT title, author_lname
FROM Books
WHERE author_lname LIKE '% %';

select title, released_year, stock_quantity
FROM Books
ORDER BY stock_quantity
LIMIT 3


SELECT title, author_lname
FROM Books
ORDER BY author_lname;

SELECT CONCAT('MY FAVORITE AUTHOR IS ', UPPER(author_fname), ' ', UPPER(author_lname), '!' ) AS 'YELL'
FROM Books
ORDER BY author_lname;
