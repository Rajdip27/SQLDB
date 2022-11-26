create proc em_intsert_Employeer
@EmployeeName nvarchar(50),
@Designation nvarchar(100),
@Basic float
as
insert into Employee_tb(EmployeeName,Designation,[Basic]) values(@EmployeeName,@Designation,@Basic)
select * from Employee_tb

em_intsert_Employeer 'Santanu','CEO','70000'
em_intsert_Employeer 'Raj','Manager','50000'
em_intsert_Employeer 'Hriody','It Oficer','40000'
em_intsert_Employeer 'Noyon','It Oficer','30000'
em_intsert_Employeer 'Sajib','It Oficer','25000'
em_intsert_Employeer 'Sanjip','It Oficer','20000'
em_intsert_Employeer 'Raja','It Oficer','25000'
em_intsert_Employeer 'Polash','It Oficer','23000'
em_intsert_Employeer 'Dip','It Oficer','22000'
em_intsert_Employeer 'Ayon','It Oficer','20000'
em_intsert_Employeer 'Shipu','It Oficer','26000'
em_intsert_Employeer 'Anutap','It Oficer','27000'
em_intsert_Employeer 'Kobir','It Oficer','25000'
em_intsert_Employeer 'Tamim','It Oficer','28000'
em_intsert_Employeer 'Rifat','It Oficer','29000'
em_intsert_Employeer 'Anik','It Oficer','24000'
em_intsert_Employeer 'Ripon','It Oficer','27000'
em_intsert_Employeer 'Sudipto','It Oficer','28000'
em_intsert_Employeer 'Niloy','It Oficer','28000'
em_intsert_Employeer 'Emran','It Oficer','29000'

em_intsert_Employeer 'Shipu','It Oficer','26000'
em_intsert_Employeer 'Shipu','It Oficer','26000'

--select EmployeeId,EmployeeName,Designation,[Basic],([Basic]*50/100 ) as HR,([Basic]*5/100)as PF,([Basic]*5/100)as TA,([Basic]*5/100)as MA ,([Basic]*5/100)as Gross ,
--([Basic]+HR+PF+MA+Gross) as total from Employee_tb 

--select *from Employee_tb
create view VEmployeeInfo
as
select EmployeeId,EmployeeName,Designation,[Basic],([Basic]*50/100 ) as HR,([Basic]*5/100)as PF,([Basic]*5/100)as TA,
([Basic]*5/100)as MA ,([Basic]*5/100)as Gross ,([Basic]+([Basic]*50/100 )+([Basic]*5/100)+([Basic]*5/100)+([Basic]*5/100)-([Basic]*5/100)) as total
  from Employee_tb 

  select  EmployeeId,EmployeeName,Designation,[Basic],  HR, PF, TA, MA , Gross , (total*10/100) as Bonus from VEmployeeInfo where total>=50000
  select * from VEmployeeInfo



  --- create view

--alter view vEmployee
--  as
--  select EmployeeId,EmployeeName,Designation,[Basic],([Basic]*50/100 ) as HR,([Basic]*5/100)as PF,([Basic]*5/100)as TA,([Basic]*5/100)as MA ,([Basic]*5/100)as Gross 
-- from Employee_tb 

-- select *from vEmployee 


-- select EmployeeId,EmployeeName,Designation,[Basic],  HR, PF, TA, MA , Gross ,
--([Basic]+HR+PF+MA+Gross) as total from vEmployee





