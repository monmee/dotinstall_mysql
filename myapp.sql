drop table if exists users;
create table users (
  id int unsigned,
  name varchar(20),
  score float
);

/*
insert into users (id, name, score) values (1, 'taguchi', 8.3);
insert into users (id, name, score) values (2, 'fkoji', 5.6);
insert into users (id, name, score) values (3, 'dotinstall', 6.2);
insert into users (id, name, score) values (4, 'yamada', null);
*/

insert into users (id, name, score) values
  (1, 'taguchi', 8.3),
  (2, 'fkoji', 5.6),
  (3, 'dotinstall', 6.2),
  (4, 'yamada', null);

select * from users;
