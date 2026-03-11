create database mahesh;
use mahesh;
show databases;
select*from employee;
select*from emp;
select*from emp order by salary desc;
select*from emp order by salary ASC;
select *from emp order by name desc;
select*from emp order by name asc;
select *from emp limit 2;
select*from emp  limit 2 offset 2;
select*from emp limit 2 offset 3;
select*from emp order by salary desc limit 1,1;
select*from emp order by salary asc limit 2,2;
select department,count(id)from emp group by department;

select department,count(id)from emp group by department having department='hr';
select count(id),department from emp group by department;
select department,sum(salary)from emp group by department having department='hr';
select department,sum(salary)from emp where department in('hr','finance') group by department;
select DISTINCT(department)from emp;
select name ,id,department from emp;
select*from emp;
select DISTINCT(city)from emp;
select*from emp where salary>50000;
select*from emp where department='it';
use mahesh;
select*from emp;

-- operators

update emp set salary=salary+5000 where department='admin';
update emp set salary=salary-(salary*0.05) where department='admin';
update emp set salary=salary+1000 where salary %2=0;
select*from emp;
alter table emp add column age int, add column experience float;
select count(*)from emp;
update emp set age=case
when id=12 then 20
when id=13 then 21
when id=14 then 22
when id=15 then 23 
when id=16 then 24
when id=17 then 25
when id=18 then 26
when id=19 then 27
when id=20 then 28
when id=21 then 29
when id=22 then 30
end,
experience=CASE 
when id=12 then 1 
WHEN id = 13 THEN 2
WHEN id = 13 THEN 2
WHEN id = 14 THEN 3
WHEN id = 15 THEN 4
WHEN id = 16 THEN 5
WHEN id = 17 THEN 6
WHEN id = 18 THEN 7
WHEN id = 19 THEN 8
WHEN id = 20 THEN 9
WHEN id = 21 THEN 10
WHEN id = 22 THEN 11
end;
select*from emp where department='it' and experience>2;
select*from emp where not department='it';
select *from emp where name like 's%';
select*from emp;
select*from emp where name like '%t';
select*from emp where name like '%e%';
select*from emp where name like '_____';
select*from emp where name like '_a%';

select*from emp where name like '%finanace%';
select*from emp where department !='hr';
select*from emp where id in(12,14,17,24);
select*from emp where id between 12 and 20;
select*from emp where experience>=5;
select*from emp where salary>40000;
select*from emp where department='hr';
select*from emp where experience<=5;
select*from emp where department='hr' and salary>50000;
select*from emp where department='hr' or 'finance;'

select*from emp where salary not in(salary>40000);
use mahesh;
select*from emp;
select department ,avg(salary)from emp group by department having avg(salary)<50000;
select max(salary) as secondhs from emp
ORDER BY salary DESC
limit 2;
select DISTINCT  salary from emp;
select *from emp ORDER BY salary desc;
select *from emp order by salary;
SELECT department, AVG(salary) AS avg_salary
FROM emp
WHERE salary > 30000
GROUP BY department
HAVING AVG(salary) > 50000
ORDER BY avg_salary DESC;
use mahesh;
select*from emp;
select*from employee;
select id, count(id) name from emp group by id;
select department,count(*)  from emp group by department;
alter table emp change column name to ename;
ALTER TABLE emp RENAME COLUMN name TO ename;
alter table emp rename column ename to name;



 





