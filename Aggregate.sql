#Aggregate functions
# Using Learning.Books


#Count using Group By
SELECT author_fname, author_fname, count(author_fname), count(author_lname)
FROM Books
GROUP BY author_fname,author_lname;

#Count Avg Group By
SELECT released_year, avg(stock_quantity)
FROM Books
GROUP BY released_year
ORDER BY released_year;

#Count Avg Group By
SELECT author_lname, author_fname, max(pages) AS 'Book Size'
FROM Books
GROUP BY author_fname,author_lname;

#Count Sum Group By
SELECT CONCAT_WS(' ', author_fname, author_lname) AS Author, sum(pages)
FROM Books
GROUP BY author_lname,author_fname
ORDER BY sum(pages) DESC;

#Count Avg Group By and Sorting
SELECT author_fname, author_lname, avg(pages)
FROM Books
GROUP BY author_lname,author_fname
ORDER BY avg(pages) DESC;

#Count Avg Group By Concat and Alias
SELECT author_fname, author_lname, SUM(pages) as 'NUMBER OF PAGES', AVG(pages) AS 'AVERAGE PAGES WRITTEN'
FROM Books
GROUP BY author_lname,author_fname
ORDER BY avg(pages) DESC;


Exercise
SELECT count(title)
FROM Books;

SELECT released_year, count(title)
FROM Books
GROUP BY released_year;


SELECT SUM(stock_quantity)
FROM Books;

SELECT author_fname, author_lname, avg(released_year)
FROM Books
GROUP BY author_lname, author_fname;


Select CONCAT_WS(' ', author_fname, author_lname) AS 'Author', title, pages
FROM Books
WHERE pages = (SELECT MAX(pages)
FROM Books);

SELECT released_year AS 'Year', count(title) AS '# OF BOOKS', avg(pages) AS 'Avg Pages'
FROM Books
GROUP BY released_year
ORDER BY released_year;



