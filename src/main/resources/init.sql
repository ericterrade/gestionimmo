SET foreign_key_checks = 0;

insert ignore into User(login,enabled,password) values ('user3',true,'azerty');
insert ignore into User(login,enabled,password) values ('user4',true,'azerty');

delete from User_roles;

insert ignore into User_roles(User_login,roles) value ('user3','ROLE_USER');
insert ignore into User_roles(User_login,roles) value ('user4','ROLE_ADMIN');
insert ignore into User_roles(User_login,roles) value ('user4','ROLE_USER');

SET foreign_key_checks = 1;
