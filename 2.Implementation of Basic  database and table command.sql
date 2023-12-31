/*Enter password: ************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 8.0.28 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.*/

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| firstcoding        |
| information_schema |
| mysql              |
| nucleus            |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.01 sec)
  
--------------------------------------------------------------------------
mysql> create database learn;
Query OK, 1 row affected (0.03 sec)
--------------------------------------------------------------------------
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| firstcoding        |
| information_schema |
| learn              |
| mysql              |
| nucleus            |
| performance_schema |
| sys                |
+--------------------+
7 rows in set (0.01 sec)
--------------------------------------------------------------------------
mysql> use learn;
Database changed
--------------------------------------------------------------------------
mysql> drop database learn;
Query OK, 0 rows affected (0.04 sec)
--------------------------------------------------------------------------
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| firstcoding        |
| information_schema |
| mysql              |
| nucleus            |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> create database learn;
Query OK, 1 row affected (0.02 sec)
--------------------------------------------------------------------------
mysql> use learn;
Database changed
--------------------------------------------------------------------------
mysql> create table user (id int(11) primary key, name varchar(100) not null, city varchar(50));
Query OK, 0 rows affected, 1 warning (0.10 sec)
--------------------------------------------------------------------------
mysql> show tables;
+-----------------+
| Tables_in_learn |
+-----------------+
| user            |
+-----------------+
1 row in set (0.01 sec)
--------------------------------------------------------------------------
mysql> desc user;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| id    | int          | NO   | PRI | NULL    |       |
| name  | varchar(100) | NO   |     | NULL    |       |
| city  | varchar(50)  | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.01 sec)
--------------------------------------------------------------------------
mysql> drop table user;
Query OK, 0 rows affected (0.05 sec)
--------------------------------------------------------------------------
mysql> show tables;
Empty set (0.00 sec)
--------------------------------------------------------------------------
mysql> create table user (id int(11) primary key, name varchar(100) not null, city varchar(50));
Query OK, 0 rows affected, 1 warning (0.07 sec)
--------------------------------------------------------------------------
mysql> alter table user rename to student;
Query OK, 0 rows affected (0.06 sec)
--------------------------------------------------------------------------
mysql> show tables;
+-----------------+
| Tables_in_learn |
+-----------------+
| student         |
+-----------------+
1 row in set (0.01 sec)
--------------------------------------------------------------------------
mysql> desc student;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| id    | int          | NO   | PRI | NULL    |       |
| name  | varchar(100) | NO   |     | NULL    |       |
| city  | varchar(50)  | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.01 sec)
--------------------------------------------------------------------------
mysql> truncate table student;
Query OK, 0 rows affected (0.10 sec)
--------------------------------------------------------------------------
mysql> insert into student (id,name,city) values(12,'durgesh','delhi');
Query OK, 1 row affected (0.02 sec)
--------------------------------------------------------------------------
mysql> insert into student values(23,'ankit','kanpur');
Query OK, 1 row affected (0.01 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----+---------+--------+
| id | name    | city   |
+----+---------+--------+
| 12 | durgesh | delhi  |
| 23 | ankit   | kanpur |
+----+---------+--------+
2 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> alter table student add country varchar(20);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0
--------------------------------------------------------------------------
mysql> select * from student;
+----+---------+--------+---------+
| id | name    | city   | country |
+----+---------+--------+---------+
| 12 | durgesh | delhi  | NULL    |
| 23 | ankit   | kanpur | NULL    |
+----+---------+--------+---------+
2 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> update student set country='india' where name='durgesh';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0
--------------------------------------------------------------------------
mysql> select * from student;
+----+---------+--------+---------+
| id | name    | city   | country |
+----+---------+--------+---------+
| 12 | durgesh | delhi  | india   |
| 23 | ankit   | kanpur | NULL    |
+----+---------+--------+---------+
2 rows in set (0.00 sec)
--------------------------------------------------------------------------
mysql> update student set city='delhi',country='india' where id=23;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0
--------------------------------------------------------------------------
mysql> delete from student where id=12;
Query OK, 1 row affected (0.01 sec)
--------------------------------------------------------------------------
mysql> select * from student;
+----+-------+-------+---------+
| id | name  | city  | country |
+----+-------+-------+---------+
| 23 | ankit | delhi | india   |
+----+-------+-------+---------+
1 row in set (0.00 sec)
--------------------------------------------------------------------------
mysql> update student set country='ind' where id=23;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0
--------------------------------------------------------------------------
mysql> select * from student;
+----+-------+-------+---------+
| id | name  | city  | country |
+----+-------+-------+---------+
| 23 | ankit | delhi | ind     |
+----+-------+-------+---------+
1 row in set (0.00 sec)
