# 다른 원인 찾기 
select author_id,author_name,category,sum(sales)*price as 'TOTAL_SALES'
from 
(select * from book_sales where year(sales_date)=2022 and month(sales_date)=1)s
left join book using (book_id)
left join author using (author_id)
group by author_id,category
order by author_id asc, category desc;


# select A.author_id,A.author_name,B.category,sum(BS.sales*B.price) AS 'TOTAL_SALES'
# from author A
# inner join book B ON A.author_id = B.author_id
# inner join book_sales BS ON B.book_id  = BS.book_id
# where year(BS.sales_date)=2022 and month(BS.sales_date)=1
# group by A.author_id,A.author_name,B.category
# order by A.author_id,B.category desc