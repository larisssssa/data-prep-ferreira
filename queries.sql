-- Query 1 (Filtering): Write a query to select the title, director, and release_year of all content where the country is exactly 'Japan'.
SELECT title,
    director,
    release_year,
    country
FROM netflix_content
WHERE country LIKE 'Japan' -- Query 2 (Aggregation): Write a query to count how many items are "Movie" and how many are "TV Show". Your result should have two columns: type and the count, grouped by the type.
SELECT type,
    COUNT(type)
FROM netflix_content
GROUP BY type;
-- Query 3 (Sorting & Limits): Write a query to find the top 10 oldest movies in the dataset. Return the title and release_year, ordered by the release year from oldest to newest.
SELECT title,
    release_year
FROM netflix_content
ORDER BY release_year ASC
LIMIT 10;