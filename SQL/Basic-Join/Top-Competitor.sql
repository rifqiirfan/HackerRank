/* Julia just finished conducting a coding contest, and she needs your help 
assembling the leaderboard! Write a query to print the respective hacker_id 
and name of hackers who achieved full scores for more than one challenge. 
Order your output in descending order by the total number of challenges 
in which the hacker earned a full score. If more than one hacker received 
full scores in same number of challenges, then sort them by ascending 
hacker_id.
*/

SELECT H.HACKER_ID, H.NAME
FROM SUBMISSIONS S
INNER JOIN CHALLENGES C
ON S.CHALLENGE_ID = C.CHALLENGE_ID
INNER JOIN DIFFICULTY D
ON C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
INNER JOIN HACKERS H
ON S.HACKER_ID = H.HACKER_ID
WHERE S.SCORE = D.SCORE and C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
GROUP BY H.HACKER_ID, H.NAME
HAVING COUNT(S.HACKER_ID) > 1
ORDER BY COUNT(S.HACKER_ID) DESC, S.HACKER_ID ASC
