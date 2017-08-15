-- v1 exercism activity, per track

WITH submissions_per_day AS (
	SELECT COUNT(id) as tally,
	DATE_TRUNC('day', created_at) as day,
	language
	FROM submissions
	WHERE created_at > DATE(NOW()) - INTERVAL '6 months'
	GROUP BY language, day
)

SELECT ROUND(AVG(tally), 2) average, language from submissions_per_day GROUP BY language ORDER BY average DESC;
