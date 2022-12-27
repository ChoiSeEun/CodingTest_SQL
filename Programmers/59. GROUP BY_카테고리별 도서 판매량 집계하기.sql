select category,sum(sales) as 'TOTAL_SALES'
from book_sales left join book using (book_id)
where year(sales_date)=2022 and month(sales_date)=1
group by category
order by category;