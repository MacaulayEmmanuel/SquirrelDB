--1. What was the date for the highest number of sightings?
SELECT Date, COUNT(*) as Sightings
FROM squirrel
GROUP BY Date
ORDER BY Sightings DESC
LIMIT 1;

--2. Who runs more, adults or juveniles?
SELECT Age, COUNT(*) as Total_Runs
FROM squirrel
WHERE Running = 1
GROUP BY Age;


--3. Which squirrels are more willing to approach humans, and in which areas?
SELECT [Unique Squirrel ID], [Hectare], [Approaches], [Age], [Primary Fur Color]
FROM squirrel
WHERE Approaches = 1
ORDER BY Approaches DESC;

/* SELECT Unique Squirrel ID, Hectare, Approaches, Age, Primary Fur Color
FROM squirrel
WHERE Approaches = 1
ORDER BY Approaches DESC; 
*/ 

--4. Do squirrels who approach humans eat more frequently?
SELECT COUNT(*) as Squirels, Approaches, Eating as Frequent_Eating
FROM squirrel
WHERE Approaches = 1
GROUP BY Approaches, Eating;



