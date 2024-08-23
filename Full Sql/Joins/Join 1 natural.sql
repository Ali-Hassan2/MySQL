create table employe1(
Eno int primary key identity(1,1),
E_name nvarchar(max) not null,
address nvarchar(max) not null);

create table Department(
Dno int primary key identity(1,1),
D_name varchar(max) not null,
Eno int foreign key references employe(Eno)
);

insert into employe1( E_name, address) values ('Ali Hassan', 'Gjrt'),('Shoaib','LHR'),('Ahmed','ISL'),('Shad','RWP');
select *from employe1;
insert into Department(D_name, Eno) values('CS',1),('IT',2),('SE',4);
select *from Department;

-- making the natural join it must have the common attributes both the tables and in natural join we equalize the values of the both tables common attribute

-- find the names of the employee whose are orking in the departments

select E_name from employe1,Department where employe1.Eno = Department.Eno;

-- we can also wite as in this manner

drop table Department;

select * from employe1 as e inner join Department as d on e.Eno = d.Eno;

