SELECT CONCAT(NAME,CONCAT("(",CONCAT(SUBSTR(OCCUPATION,1,1),")"))) 
FROM OCCUPATIONS
ORDER BY NAME ASC;

SELECT "There are a total of ", COUNT(OCCUPATION), CONCAT(LOWER(OCCUPATION),"s.")
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION ASC;
