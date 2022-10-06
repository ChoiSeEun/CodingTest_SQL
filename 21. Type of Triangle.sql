SELECT CASE WHEN (A+B<=C) THEN 'Not A Triangle'
            WHEN (A=B) AND (B=C) AND (A=C) THEN 'Equilateral'
            WHEN ((A=B) AND (A<>C)) OR ((A=C) AND (A<>B)) OR ((B=C) AND (B<>A)) THEN 'Isosceles'
            WHEN (A<>B) AND (A<>C) AND (B<>C) THEN 'Scalene'
            END
FROM TRIANGLES;