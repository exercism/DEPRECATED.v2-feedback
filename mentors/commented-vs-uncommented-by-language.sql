WITH feedback_comments AS (
	SELECT c.*
	FROM comments c
	INNER JOIN submissions s
	ON c.submission_id=s.id
	AND c.user_id<>s.user_id
)
,
submission_comment_counts AS (
	SELECT s.id, count(c.id) AS tally
	FROM submissions s
	LEFT JOIN feedback_comments c
	ON s.id=c.submission_id
	GROUP BY s.id
)
,

uncommented_submissions_by_language AS (
SELECT COUNT(s.id) AS tally, s.language
FROM submissions s
INNER JOIN submission_comment_counts cc
ON s.id=cc.id
WHERE cc.tally=0
AND s.created_at > DATE(NOW()) - INTERVAL '6 months'
GROUP BY s.language
)
,

commented_submissions_by_language AS (
SELECT COUNT(s.id) AS tally, s.language
FROM submissions s
INNER JOIN submission_comment_counts cc
ON s.id=cc.id
WHERE cc.tally>0
AND s.created_at > DATE(NOW()) - INTERVAL '6 months'
GROUP BY s.language
)

SELECT
no.tally AS nope,
yes.tally AS yepp,
yes.language
FROM uncommented_submissions_by_language no
INNER JOIN commented_submissions_by_language yes
ON no.language=yes.language
ORDER BY (no.tally + yes.tally) DESC
;
