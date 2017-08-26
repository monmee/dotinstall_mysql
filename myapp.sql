drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float,
  coins set('gold', 'silver', 'bronze')
);

insert into users (name, score, coins) values ('taguchi', 5.8, 'gold,silver');
insert into users (name, score, coins) values ('fkoji', 8.2, 'bronze,gold');
insert into users (name, score, coins) values ('dotinstall', 6.1, 'bronze');
insert into users (name, score) values ('Tanaka', 4.2);
insert into users (name, score) values ('yamada', null);
insert into users (name, score) values ('tashiro', 7.9);

select * from users;
select * from users where coins = 'gold,silver';
select * from users where coins like '%gold%';
select * from users where coins = 3;
