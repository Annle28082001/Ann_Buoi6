--bai1
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY right(Name, 3), ID;
--bai2
SELECT 
    user_id,
    concat(UPPER(left(name,1)), LOWER(right(name,length(name)-1))) as name
    From users
    ORDER BY user_id;
--bai 3
SELECT manufacturer, 
'$' || round(sum(total_sales)/1000000,0) || ' million' as sales
from pharmacy_sales
group by manufacturer 
ORDER BY round(sum(total_sales),0) desc, manufacturer
--bai4
SELECT
extract(month from submit_date) as month,
product_id, 
round(avg(stars), 2) as avg_start
from reviews
group by 
extract(month from submit_date), 
product_id
order by month, product_id;
--bai5
SELECT 
sender_id,
count(message_id) as message_count
from messages
where extract(month from sent_date) = '8'
and extract(year from sent_date) = '2022'
group by sender_id
order by message_count DESC
limit 2
--bai6 
select tweet_id from tweets
where length(content) > 15
--bai7
SELECT 
activity_date as day,
count(DISTINCT user_id) as active_users
from activity
where activity_date between '2019-06-27' and '2019-07-27'
group by activity_date
--bai 8 
select 
count(id)
from employees
where joining_date between '2022-01-01' and '2022-07-31'
--bai9
select 
first_name,
position ('a' in first_name)
from worker
where first_name = 'Amitah';
--bai10
