SELECT A.ANIMAL_ID,A.NAME
FROM ANIMAL_INS A LEFT JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE B.ANIMAL_ID IS NOT NULL
ORDER BY (B.DATETIME - A.DATETIME) DESC
LIMIT 2;