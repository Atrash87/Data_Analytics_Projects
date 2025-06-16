#  SQL Queries – Social Media Interaction Project

This folder contains all SQL queries used to analyze and extract insights from the social media interaction dataset collected via survey and expanded using AI.

---

##  Query Summary

## 1. Data Cleansing

Several preprocessing steps were applied using SQL to improve data quality:

- **Trimmed and uppercased** values (e.g., `PreferredTimeSlot`) for consistency
- **Split multi-value fields** (e.g., `PlatformsUsed`) using `STRING_SPLIT` and `TRIM()` to normalize entries
- **Converted scores to `FLOAT`** to calculate averages correctly
- **Dropped duplicate rows** to avoid skewed counts
- **Filtered out NULL or NaN values** in key columns before aggregation

These steps ensured that the data was clean, consistent, and ready for analysis.

---

### 2. **Demographic Analysis**
- Count of users by `Gender` and `AgeGroup`

### 3. **Usage Behavior**
- Average `HappinessScore` by `DailyUsage`
- Average `ActivityLevel` by `AgeGroup`
- User count by `AgeGroup` and `DailyUsage`

### 4. **Platform Preferences**
- Most used platforms (`PlatformsUsed` column split by comma)
- Platform preference by `Gender` and by `AgeGroup`

### 5. **Time Preferences**
- Count of users by `PreferredTimeSlot`
- Cleaned and standardized time slot values for accurate grouping

---



##  Notes

- All queries assume the data is stored in a table named `dbo.[Sheet1$]`, imported from Excel.
- Queries are modular and can be run independently depending on the analysis goal.

---

Feel free to explore and adapt these queries for your own datasets or analytical workflows!

