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

select
  name,
  score,
  case floor(score) % 2
    when 0 then 'even'
    when 1 then 'odd'
  end as type
from 
  users;

select
  name,
  score,
  if (score > 5.0, 'OK', 'NG') as result
from 
  users;
