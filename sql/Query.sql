use query

create table uploaddata(ID int identity(1,1) primary key,
						FileUpload varchar(100),
						Title varchar(100),
						Description varchar(500),
						Visibility varchar(30),
						DateOfPublishing varchar(20));
select * from uploaddata
truncate table uploaddata
drop table uploaddata
create table signup(ID int IDENTITY(101, 1) PRIMARY KEY,
					FullName varchar(20),
					Email varchar(40),
					PhoneNumber varchar(20),
					LoginRole varchar(10),
					Profile varchar(100),
					UserName varchar(30),
					Password varchar(30),
					ConformPassword varchar(30));
drop table signup;
truncate table signup
select * from signup