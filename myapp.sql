drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20) unique,
  -- score float not null
  score float default 0.0
);
desc users;

insert into users (name, score) values ('taguchi', 8.3);
insert into users (name, score) values ('fkoji', 5.6);
insert into users (name, score) values ('dotinstall', 6.2);
insert into users (name, score) values ('yamada', null);

/*
insert into users (id, name, score) values (1, 'taguchi', 8.3);
insert into users (id, name, score) values (2, 'fkoji', 5.6);
insert into users (id, name, score) values (3, 'dotinstall', 6.2);
insert into users (id, name, score) values (4, 'yamada', null);
insert into users (id, name, score) values (5, 'tanaka', 6.2);
insert into users (id, name, score) values (6, 'tanaka', 6.2);
*/

select * from users;
