SELECT Name || '(' || LEFT(Occupation,1) || ')'
FROM OCCUPATIONS
ORDER BY Name ASC;

SELECT 'There are a total of ' || CAST(COUNT(Occupation)AS CHAR(1)) ||
CASE WHEN Occupation='Doctor' THEN ' doctors.'
     WHEN Occupation='Singer' THEN ' singers.'
     WHEN Occupation='Actor' THEN ' actors.'
     WHEN Occupation='Professor' THEN ' professors.'
     END
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation);