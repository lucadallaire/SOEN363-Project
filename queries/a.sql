-- Tweets: 5 columns (id, text, user, hashtag, created_at)
-- To find the row with the maximum id
SELECT *
FROM Tweets
WHERE id = (SELECT MAX(id) FROM Tweets);