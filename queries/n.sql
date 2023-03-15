SELECT brand.description, style.description
FROM tweets, brand, style
WHERE tweets.tweet = brand.description AND brand.description = style.description;
