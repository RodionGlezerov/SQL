select *
from distributor

-- 1.Display the distributor sorted by branch code in ascending order and additionally by pay in descending order.
select *
from distributor
order by branch_id


select *
from distributor
order by salary desc

-- 2. Select the highest salary and lowest salary from the Distributor table.
select max(salary),min(salary)
from distributor

-- 3. Retrieve from the Distributor and Branch tables the fields: Branch_id,
-- Branch_name, Distributor_name, Salary
select d.branch_id, b.branch_name,d.Distributor_name,d.salary
from distributor d
join branch b
on d.branch_id = b.branch_id

-- 4. Display the quantity of the distributor per branch.

select Distributor_name
from distributor
group by branch_id

-- 5. Display in each branch the distributor with the smallest distributor_id.

select branch_id, distributor_id
from distributor
order by  distributor_id

-- 6.Show the branch distributor_name in the last opened branch.

select d.distributor_name, b.DATE_OPENED
from distributor d
left join branch b
on d.branch_id = b.branch_id
order by DATE_OPENED desc limit 1

-- 7. Display the distributor names in branch number 201 that earn less than 12000

select  d.distributor_name, d.salary
from distributor d
where d.branch_id = 201 and salary < 12000

-- 8. Display from branch branch the branch_name that opens first (on the earliest date according to date_opened). 

select branch_name, date_opened
from branch 
order by date_opened limit 1
