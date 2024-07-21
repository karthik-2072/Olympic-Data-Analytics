--count the no.of athletes from each country
SELECT Country, COUNT(*) AS TotalAthletes
FROM tbl_athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;

--calculate total medals won by each country
SELECT TeamCountry,SUM(GOLD) Total_Gold,
SUM(SILVER) Total_Silver,
SUM(BRONZE) Total_Bronze 
FROM tbl_medals
GROUP BY TeamCountry
ORDER BY Total_Gold DESC;

--Calculate the average number of entries by gender for each discipline
SELECT Discipline,
AVG(Female) Avg_Female,
AVG(Male) Avg_Male 
FROM tbl_entriesgender
GROUP BY Discipline;