-- > mysql -uroot -p mysql < create_db.sql

use mysql;

delete from user where User='puzzlecoding' and Host='localhost';
insert into user(User, Host, Password) values ('puzzlecoding', 'localhost', password('puzzlecoding'));
flush privileges; -- please don't forget to add the following command

drop database if exists makerslab_3dbot;
create database makerslab_3dbot;

grant all on makerslab_3dbot.* to 'puzzlecoding'@'localhost' identified by 'puzzlecoding';
flush privileges;