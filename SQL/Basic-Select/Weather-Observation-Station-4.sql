/* Find the difference between the total number of CITY entries in the table 
and the number of distinct CITY entries in the table.
Where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;
