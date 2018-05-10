WITH comments_in_track AS (
	SELECT c.*, s.language
	FROM comments c
	INNER JOIN submissions s
	ON c.submission_id=s.id
)
,
comments_per_day AS (
	SELECT COUNT(id) as tally,
	DATE_TRUNC('day', created_at) as day,
	language
	FROM comments_in_track
	WHERE created_at > DATE(NOW()) - INTERVAL '6 months'
	GROUP BY language, day
)
,
submissions_per_day AS (
	SELECT COUNT(id) as tally,
	DATE_TRUNC('day', created_at) as day,
	language
	FROM submissions
	WHERE created_at > DATE(NOW()) - INTERVAL '6 months'
	GROUP BY language, day
)

SELECT
ROUND(AVG(c.tally), 2) average_comments,
ROUND(AVG(s.tally), 2) average_submissions,
s.language
FROM submissions_per_day s
INNER JOIN comments_per_day c
ON s.day=c.day
AND s.language=c.language
GROUP BY s.language ORDER BY average_submissions DESC;
