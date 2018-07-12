create database BS;

create table users(
	userid int,
    uname varchar(10),
    upwd varchar(10),
    limits int
);

insert into users values(111,'111','111',0);
insert into users values(153011,'111','111',1);
insert into users values(153022,'111','111',1);

/*课程*/
create table course(
courseid int PRIMARY KEY,
coursename varchar(10)
);

alter table course auto_increment=1;

insert into course values(1,'计算机网络');
insert into course values(2,'算法');
insert into course values(3,'SSH框架');
insert into course values(4,'JAVA基础');
insert into course values(5,'数据结构');

/*信息*/
create table information(
informationid int PRIMARY KEY,
informationname varchar(1000)
);


alter table information auto_increment=1;
select * from information;

insert into information values(1,'于明天中午12:00开会');

insert into information values(2,'各科教师在7月26号之前上交教课文档');


/*专业*/
create table specialty(
specialtyid int PRIMARY KEY,
specialtyname varchar(100),
specialtycollege varchar(100)
);

alter table specialty auto_increment=1;
select * from specialty;
insert into specialty values(1,'信息与控制学院','计科');
insert into specialty values(2,'经管学院','商业');
insert into specialty values(3,'机械学院','车辆');
insert into specialty values(4,'土木学院','土木');

/*成绩信息*/
create table score(
scoreid int PRIMARY KEY,
scorename varchar(10),
courseid int
);

alter table score auto_increment=1;

insert into score values(1,'99',2);
insert into score values(2,'99',2);
insert into score values(3,'优秀',2);


use bs;

/*学生信息*/
create table student(
studentid int PRIMARY KEY,
studentname varchar(100),
sex varchar(100),
place varchar(100),
tel varchar(11),
scoreid int,
specialtyid int,
sjjg int,
jsjwl int,
cyy int,
java int,
ssh int
);
select * from student



select studentid,studentname,sex,place,tel,scoreid,specialtyname from specialty,student where specialty.specialtyid = student.specialtyid;
                    
select * from student;
/*教师*/
create table teacher(
teacherid int PRIMARY KEY,
teachername varchar(10),
workage int,
wage int,
tel varchar(100)
);
alter table teacher auto_increment=1;
insert into teacher values(1,'张力尹',6,9000,'15848654856');
insert into teacher values(2,'昂立',5,5000,'15848656666');
insert into teacher values(3,'TUIG',7,7000,'15848654444');
insert into teacher values(4,'ADF',8,8000,'158486542226');
insert into teacher values(5,'法都',1,3000,'15848654333');
insert into teacher values(6,'帝都',2,9000,'15848654444');



