CREATE DATABASE THREAT;
USE THREAT;
SHOW TABLES;
SELECT * FROM CYBER;

CREATE TABLE Attack_Type_Analysis AS
SELECT `Attack type`,COUNT(`Target Industry`)
FROM CYBER GROUP BY `Attack Type`;

SELECT * FROM Attack_Type_Analysis;

CREATE TABLE Country_Analysis AS 
SELECT Country,avg(`Number of Affected Users`) AS Avg_Affected_Users
FROM CYBER GROUP BY Country;

SELECT * FROM Country_Analysis ORDER BY Avg_Affected_Users DESC LIMIT 3;

/*Most Cyber Threats occurs in Brazil*/

CREATE TABLE Financial_Loss_Analysis AS
SELECT Country,SUM(`Financial Loss (in Million $)`) AS TOTAL_LOSS
FROM CYBER GROUP BY Country;

SELECT * FROM Financial_Loss_Analysis ORDER BY TOTAL_LOSS DESC LIMIT 5;

SELECT `Attack Type`,COUNT(*)
AS INCIDENTS FROM CYBER
GROUP BY `Attack Type` ORDER BY INCIDENTS DESC;

/*MOST COMMON ATTACK TYPE IS DDoS.*/

SELECT `Attack Source`,COUNT(*)
AS COMMON_SOURCE FROM CYBER GROUP BY `Attack Source`
ORDER BY COMMON_SOURCE DESC;

/*Nation-State contributes maximum that induces to the Threat.*/

SELECT `Target Industry`,COUNT(*) AS TOTAL_TARGETS
FROM CYBER GROUP BY `Target Industry`
ORDER BY TOTAL_TARGETS DESC;

/*IT is the most Targeted Industry.*/

SELECT `Attack Type`,
AVG(`Financial Loss (in Million $)`) AS Avg_Loss
FROM CYBER
GROUP BY `Attack Type`
ORDER BY Avg_Loss DESC;

/*DDoS leads to most Financial loss*/

SELECT `Defense Mechanism Used`,COUNT(*) AS DEFENCE
FROM CYBER GROUP BY `Defense Mechanism Used`
ORDER BY DEFENCE DESC;

/*Antivirus helps the most for defense tool agains cyber threats.*/

SELECT Year,AVG(`Financial Loss (in Million $)`) AS AVERAGE_LOSS
FROM CYBER GROUP BY Year ORDER BY AVERAGE_LOSS DESC;

/*The most  financial loss was faced in 2021.*/


