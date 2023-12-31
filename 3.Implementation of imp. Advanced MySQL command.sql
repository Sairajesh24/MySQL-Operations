mysql> use learn;
Database changed
--------------------------------------------------------------------------
mysql> show tables;
+-----------------+
| Tables_in_learn |
+-----------------+
| student         |
+-----------------+
1 row in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       23 | ankit   | delhi   | ind     |
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       23 | ankit   | delhi   | ind     |
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where city='lucknow';
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
4 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where country='india';
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
5 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where country='india';
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
5 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select name,city,country from student where country='india';
+---------+---------+---------+
| name    | city    | country |
+---------+---------+---------+
| sanket  | lucknow | india   |
| ishant  | lucknow | india   |
| sumit   | lucknow | india   |
| aman    | kanpur  | india   |
| ramsigh | lucknow | india   |
+---------+---------+---------+
5 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select name as  "USERNAME" , city as "CITYNAME" from student ;
+----------+----------+
| USERNAME | CITYNAME |
+----------+----------+
| ankit    | delhi    |
| sanket   | lucknow  |
| ishant   | lucknow  |
| sumit    | lucknow  |
| aman     | kanpur   |
| ramsigh  | lucknow  |
+----------+----------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where city='kanpur';
+------+------+--------+---------+
| id   | name | city   | country |
+------+------+--------+---------+
| 2334 | aman | kanpur | india   |
+------+------+--------+---------+
1 row in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       23 | ankit   | delhi   | ind     |
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select country from student;
+---------+
| country |
+---------+
| ind     |
| india   |
| india   |
| india   |
| india   |
| india   |
+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select distinct(country) from student;
+---------+
| country |
+---------+
| ind     |
| india   |
+---------+
2 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       23 | ankit   | delhi   | ind     |
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where country='india' and  city='lucknow';
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
4 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where country='india' or city='lucknow';
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
5 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       23 | ankit   | delhi   | ind     |
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where id >=24 and id<=2334;
+------+--------+---------+---------+
| id   | name   | city    | country |
+------+--------+---------+---------+
|   24 | sanket | lucknow | india   |
|  234 | ishant | lucknow | india   |
|  246 | sumit  | lucknow | india   |
| 2334 | aman   | kanpur  | india   |
+------+--------+---------+---------+
4 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where id between 24 and 2334;
+------+--------+---------+---------+
| id   | name   | city    | country |
+------+--------+---------+---------+
|   24 | sanket | lucknow | india   |
|  234 | ishant | lucknow | india   |
|  246 | sumit  | lucknow | india   |
| 2334 | aman   | kanpur  | india   |
+------+--------+---------+---------+
4 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where id >24 and id<2334;
+-----+--------+---------+---------+
| id  | name   | city    | country |
+-----+--------+---------+---------+
| 234 | ishant | lucknow | india   |
| 246 | sumit  | lucknow | india   |
+-----+--------+---------+---------+
2 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       23 | ankit   | delhi   | ind     |
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where id=23 or id=234 or id=246;
+-----+--------+---------+---------+
| id  | name   | city    | country |
+-----+--------+---------+---------+
|  23 | ankit  | delhi   | ind     |
| 234 | ishant | lucknow | india   |
| 246 | sumit  | lucknow | india   |
+-----+--------+---------+---------+
3 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where id in(23,234,246);
+-----+--------+---------+---------+
| id  | name   | city    | country |
+-----+--------+---------+---------+
|  23 | ankit  | delhi   | ind     |
| 234 | ishant | lucknow | india   |
| 246 | sumit  | lucknow | india   |
+-----+--------+---------+---------+
3 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       23 | ankit   | delhi   | ind     |
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student limit 4;
+-----+--------+---------+---------+
| id  | name   | city    | country |
+-----+--------+---------+---------+
|  23 | ankit  | delhi   | ind     |
|  24 | sanket | lucknow | india   |
| 234 | ishant | lucknow | india   |
| 246 | sumit  | lucknow | india   |
+-----+--------+---------+---------+
4 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student limit 2 offset 2;
+-----+--------+---------+---------+
| id  | name   | city    | country |
+-----+--------+---------+---------+
| 234 | ishant | lucknow | india   |
| 246 | sumit  | lucknow | india   |
+-----+--------+---------+---------+
2 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       23 | ankit   | delhi   | ind     |
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student order by id;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       23 | ankit   | delhi   | ind     |
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student order by id desc;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
| 24234236 | ramsigh | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
|      246 | sumit   | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|       24 | sanket  | lucknow | india   |
|       23 | ankit   | delhi   | ind     |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student order by name desc;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|      246 | sumit   | lucknow | india   |
|       24 | sanket  | lucknow | india   |
| 24234236 | ramsigh | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|       23 | ankit   | delhi   | ind     |
|     2334 | aman    | kanpur  | india   |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student order by name asc;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|     2334 | aman    | kanpur  | india   |
|       23 | ankit   | delhi   | ind     |
|      234 | ishant  | lucknow | india   |
| 24234236 | ramsigh | lucknow | india   |
|       24 | sanket  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student order by name;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|     2334 | aman    | kanpur  | india   |
|       23 | ankit   | delhi   | ind     |
|      234 | ishant  | lucknow | india   |
| 24234236 | ramsigh | lucknow | india   |
|       24 | sanket  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
|       23 | ankit   | delhi   | ind     |
|       24 | sanket  | lucknow | india   |
|      234 | ishant  | lucknow | india   |
|      246 | sumit   | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
| 24234236 | ramsigh | lucknow | india   |
+----------+---------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student order by id desc limit 2;
+----------+---------+---------+---------+
| id       | name    | city    | country |
+----------+---------+---------+---------+
| 24234236 | ramsigh | lucknow | india   |
|     2334 | aman    | kanpur  | india   |
+----------+---------+---------+---------+
2 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> update student set name='ram singh' where id=24234236;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0
--------------------------------------------------------------------------
mysql> select * from student;
+----------+-----------+---------+---------+
| id       | name      | city    | country |
+----------+-----------+---------+---------+
|       23 | ankit     | delhi   | ind     |
|       24 | sanket    | lucknow | india   |
|      234 | ishant    | lucknow | india   |
|      246 | sumit     | lucknow | india   |
|     2334 | aman      | kanpur  | india   |
| 24234236 | ram singh | lucknow | india   |
+----------+-----------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----------+-----------+---------+---------+
| id       | name      | city    | country |
+----------+-----------+---------+---------+
|       23 | ankit     | delhi   | ind     |
|       24 | sanket    | lucknow | india   |
|      234 | ishant    | lucknow | india   |
|      246 | sumit     | lucknow | india   |
|     2334 | aman      | kanpur  | india   |
| 24234236 | ram singh | lucknow | india   |
+----------+-----------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where name like 'a%';
+------+-------+--------+---------+
| id   | name  | city   | country |
+------+-------+--------+---------+
|   23 | ankit | delhi  | ind     |
| 2334 | aman  | kanpur | india   |
+------+-------+--------+---------+
2 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where city like "_u%";
+----------+-----------+---------+---------+
| id       | name      | city    | country |
+----------+-----------+---------+---------+
|       24 | sanket    | lucknow | india   |
|      234 | ishant    | lucknow | india   |
|      246 | sumit     | lucknow | india   |
| 24234236 | ram singh | lucknow | india   |
+----------+-----------+---------+---------+
4 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student where city like "%o_";
+----------+-----------+---------+---------+
| id       | name      | city    | country |
+----------+-----------+---------+---------+
|       24 | sanket    | lucknow | india   |
|      234 | ishant    | lucknow | india   |
|      246 | sumit     | lucknow | india   |
| 24234236 | ram singh | lucknow | india   |
+----------+-----------+---------+---------+
4 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----------+-----------+---------+---------+
| id       | name      | city    | country |
+----------+-----------+---------+---------+
|       23 | ankit     | delhi   | ind     |
|       24 | sanket    | lucknow | india   |
|      234 | ishant    | lucknow | india   |
|      246 | sumit     | lucknow | india   |
|     2334 | aman      | kanpur  | india   |
| 24234236 | ram singh | lucknow | india   |
+----------+-----------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select SUM(id) from student;
+----------+
| SUM(id)  |
+----------+
| 24237097 |
+----------+
1 row in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select SUM(id) as "Total Salary" from student;
+--------------+
| Total Salary |
+--------------+
|     24237097 |
+--------------+
1 row in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select AVG(id) from student;
+--------------+
| AVG(id)      |
+--------------+
| 4039516.1667 |
+--------------+
1 row in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select COUNT(id) from student;
+-----------+
| COUNT(id) |
+-----------+
|         6 |
+-----------+
1 row in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select MIN(id) from student;
+---------+
| MIN(id) |
+---------+
|      23 |
+---------+
1 row in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select name from student where id = (select MIN(id) from student) ;
+-------+
| name  |
+-------+
| ankit |
+-------+
1 row in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select name from student where id = (select MAX(id) from student) ;
+-----------+
| name      |
+-----------+
| ram singh |
+-----------+
1 row in set (0.00 sec)
--------------------------------------------------------------------------
mysql> show tables;
+-----------------+
| Tables_in_learn |
+-----------------+
| student         |
+-----------------+
1 row in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----------+-----------+---------+---------+
| id       | name      | city    | country |
+----------+-----------+---------+---------+
|       23 | ankit     | delhi   | ind     |
|       24 | sanket    | lucknow | india   |
|      234 | ishant    | lucknow | india   |
|      246 | sumit     | lucknow | india   |
|     2334 | aman      | kanpur  | india   |
| 24234236 | ram singh | lucknow | india   |
+----------+-----------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> create table laptops(lid int primary key, lmodel varchar(200), studentId int , foreign key(studentId) references student(id));
Query OK, 0 rows affected (0.09 sec)
--------------------------------------------------------------------------
mysql> show tables;
+-----------------+
| Tables_in_learn |
+-----------------+
| laptops         |
| student         |
+-----------------+
2 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> desc student;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int          | NO   | PRI | NULL    |       |
| name    | varchar(100) | NO   |     | NULL    |       |
| city    | varchar(50)  | YES  |     | NULL    |       |
| country | varchar(50)  | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> desc laptops;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| lid       | int          | NO   | PRI | NULL    |       |
| lmodel    | varchar(200) | YES  |     | NULL    |       |
| studentId | int          | YES  | MUL | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> insert into laptops values(13414,'HP',96418565);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`learn`.`laptops`, CONSTRAINT `laptops_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`))
mysql> insert into laptops values(13414,'HP',23);
Query OK, 1 row affected (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from laptops;
+-------+--------+-----------+
| lid   | lmodel | studentId |
+-------+--------+-----------+
| 13414 | HP     |        23 |
+-------+--------+-----------+
1 row in set (0.00 sec)
--------------------------------------------------------------------------
mysql> insert into laptops values(13414,'Dell',24);
ERROR 1062 (23000): Duplicate entry '13414' for key 'laptops.PRIMARY'
mysql> insert into laptops values(134132454,'Dell',24);
Query OK, 1 row affected (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from laptops;
+-----------+--------+-----------+
| lid       | lmodel | studentId |
+-----------+--------+-----------+
|     13414 | HP     |        23 |
| 134132454 | Dell   |        24 |
+-----------+--------+-----------+
2 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----------+-----------+---------+---------+
| id       | name      | city    | country |
+----------+-----------+---------+---------+
|       23 | ankit     | delhi   | ind     |
|       24 | sanket    | lucknow | india   |
|      234 | ishant    | lucknow | india   |
|      246 | sumit     | lucknow | india   |
|     2334 | aman      | kanpur  | india   |
| 24234236 | ram singh | lucknow | india   |
+----------+-----------+---------+---------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select student.name,student.city , laptops.lmodel from student , laptops where student.id=laptops.studentId;
+--------+---------+--------+
| name   | city    | lmodel |
+--------+---------+--------+
| ankit  | delhi   | HP     |
| sanket | lucknow | Dell   |
+--------+---------+--------+
2 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select student.name,student.city , laptops.lmodel from student , laptops where student.id=laptops.studentId and student.name='Ankit';
+-------+-------+--------+
| name  | city  | lmodel |
+-------+-------+--------+
| ankit | delhi | HP     |
+-------+-------+--------+
1 row in set (0.00 sec)
--------------------------------------------------------------------------
mysql> select student.name , laptops.lmodel from student inner join laptops on student.id=laptops.studentId;
+--------+--------+
| name   | lmodel |
+--------+--------+
| ankit  | HP     |
| sanket | Dell   |
+--------+--------+
2 rows in set (0.00 sec)
--------------------------------------------------------------------------
