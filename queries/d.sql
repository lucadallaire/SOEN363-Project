-- To print the sum and average of the character used in the tweet, grouped by the user who posted the tweet
SELECT user, SUM(LENGTH(text)) AS sum_characters, AVG(LENGTH(text)) AS avg_characters
FROM Tweets
GROUP BY user;

-- To print the sum and average of the character used in the tweets for a specific user called 'alexpetros'
SELECT SUM(LENGTH(text)) AS sum_characters, AVG(LENGTH(text)) AS avg_characters
FROM Tweets
WHERE user = 'alexpetros';