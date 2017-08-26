drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float,
  rank enum('gold', 'silver', 'blonze')
);

insert into users (name, score, rank) values ('taguchi', 5.8, 'silver');
insert into users (name, score, rank) values ('fkoji', 8.2, 'gold');
insert into users (name, score, rank) values ('dotinstall', 6.1, 'blonze');
insert into users (name, score) values ('Tanaka', 4.2);
insert into users (name, score) values ('yamada', null);
insert into users (name, score) values ('tashiro', 7.9);

select * from users where rank = 'silver';
select * from users where rank = 2;
