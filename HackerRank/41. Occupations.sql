select 
    max(case when occupation='Doctor' then name end) as 'Doctor',
    max(case when occupation='Professor' then name end )as 'Professor',
    max(case when occupation='Singer' then name end) as 'Singer',
    max(case when occupation='Actor' then name end) as 'Actor'
from (select *,row_number() over (partition by occupation order by name) RN from occupations) TEMP
group by RN

/* 
occupation별로 name으로 정렬해서 row_number를 생성
row_number로 그룹화하여 1인 것끼리 맨 윗줄에, 2인 것끼리 두 번째 줄에 출력
group by 를 사용하기 위해서는 집계함수가 존재해야 하기 때문에 max를 사용 
값이 존재하지 않는다면 null값으로 처리해주기 위해 max를 넣어준 것 
string 값이므로 max를 넣는다고 해서 값이 변하지 않음 
*/