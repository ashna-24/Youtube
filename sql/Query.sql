use query

create table uploaddata(ID int identity(1,1) primary key,
						FileUpload varchar(100));
select * from uploaddata
drop table uploaddata
create table signup(ID int IDENTITY(101, 1) PRIMARY KEY,
					FullName varchar(20),
					Email varchar(40),
					PhoneNumber varchar(20),
					LoginRole varchar(10),
					UserName varchar(30),
					Password varchar(30),
					ConformPassword varchar(30));
drop table signup;
truncate table signup
select * from signup