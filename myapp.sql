drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float
);

-- insert into users (name, score, coins) values ('taguchi', 5.8, 'gold,silver');
-- insert into users (name, score, coins) values ('fkoji', 8.2, 'bronze,gold');
-- insert into users (name, score, coins) values ('dotinstall', 6.1, 'bronze');
-- insert into users (name, score) values ('Tanaka', 4.2);
-- insert into users (name, score) values ('yamada', null);
-- insert into users (name, score) values ('tashiro', 7.9);

alter table users add index index_score (score);
-- show index from users;
explain select * from users where score > 5.0;
explain select * from users where name = 'taguchi';
alter table users drop index index_score;
