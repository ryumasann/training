[root@6f8c28e600a4 /]# mysql -u root -h db_host -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 3
Server version: 5.7.30 MySQL Community Server (GPL)

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

MySQL [(none)]> create database testdb;
Query OK, 1 row affected (0.00 sec)

MySQL [(none)]> use testdb;
Database changed
MySQL [testdb]> create table inf (name varchar(20), lastname varchar(20), age int(2));
Query OK, 0 rows affected (0.21 sec)

-- ###########descでさくせしたフィールドのメタ情報を取得##############
MySQL [testdb]> desc inf
    -> ;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| name     | varchar(20) | YES  |     | NULL    |       |
| lastname | varchar(20) | YES  |     | NULL    |       |
| age      | int(2)      | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

MySQL [testdb]> insert into inf values ('ryuma','hirayama',21);
Query OK, 1 row affected (0.06 sec)

MySQL [testdb]> select * from inf;
+-------+----------+------+
| name  | lastname | age  |
+-------+----------+------+
| ryuma | hirayama |   21 |
+-------+----------+------+
1 row in set (0.00 sec)

mysqldump -u root -h db_host -p testdb > /tmp/db.sql