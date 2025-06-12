

--Gender count
SELECT 
  Gender,
  COUNT(*) AS Count
FROM dbo.[Sheet1$]
GROUP BY Gender;

--Age group count
SELECT 
  AgeGroup,
  COUNT(*) AS Count
FROM dbo.[Sheet1$]
GROUP BY AgeGroup;


-- Daily usage V.S. Avg Happiness
SELECT 
  DailyUsage,
  AVG(CAST(HappinessScore AS FLOAT)) AS AvgHappiness
FROM dbo.[Sheet1$]
GROUP BY DailyUsage;



--Age V.S Activity

SELECT 
  AgeGroup,
  AVG(CAST(ActivityLevel AS FLOAT)) AS AvgActivity
FROM dbo.[Sheet1$]
GROUP BY AgeGroup;


--Preffered Time slot
SELECT 
  PreferredTimeSlot,
  COUNT(*) AS Count
FROM dbo.[Sheet1$]
GROUP BY PreferredTimeSlot
ORDER BY Count DESC;


--Platform count
SELECT 
  TRIM(value) AS Platform,
  COUNT(*) AS Count
FROM dbo.[Sheet1$]
CROSS APPLY STRING_SPLIT(PlatformsUsed, ',')
GROUP BY TRIM(value)
ORDER BY Count DESC;


--Clean time slot
SELECT 
  UPPER(LTRIM(RTRIM(PreferredTimeSlot))) AS CleanTimeSlot,
  COUNT(*) AS Count
FROM dbo.[Sheet1$]
GROUP BY UPPER(LTRIM(RTRIM(PreferredTimeSlot)))
ORDER BY Count DESC;

--Gender vs Platform Preference
SELECT 
  Gender,
  TRIM(value) AS Platform,
  COUNT(*) AS Count
FROM dbo.[Sheet1$]
CROSS APPLY STRING_SPLIT(PlatformsUsed, ',')
GROUP BY Gender, TRIM(value)
ORDER BY Gender, Count DESC;


 --AgeGroup vs Platform Preference
 SELECT 
  AgeGroup,
  TRIM(value) AS Platform,
  COUNT(*) AS Count
FROM dbo.[Sheet1$]
CROSS APPLY STRING_SPLIT(PlatformsUsed, ',')
GROUP BY AgeGroup, TRIM(value)
ORDER BY AgeGroup, Count DESC;

--Age group and daily usage

SELECT 
  AgeGroup,
  DailyUsage,
  COUNT(*) AS UsersCount
FROM dbo.[Sheet1$]
GROUP BY AgeGroup, DailyUsage
ORDER BY AgeGroup, DailyUsage;