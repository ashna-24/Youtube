use query

create table uploaddata(ID int identity(1,1) primary key,
						FileUpload varchar(30));
select * from uploaddata

create table signup(ID int IDENTITY(101, 1) PRIMARY KEY,
					FullName varchar(20),
					Email varchar(20),
					PhoneNumber varchar(20),
					LoginRole varchar(10),
					UserName varchar(20),
					Password varchar(20),
					ConformPassword varchar(20));
drop table signup;
select * from signup