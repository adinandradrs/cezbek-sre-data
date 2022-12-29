create sequence users_seq;

create table IF NOT EXISTS users 
(
    id           bigint default nextval('users_seq'::regclass)
        constraint users_pk
            primary key,
	fullname varchar not null,
	msisdn varchar(15) not null,
	email varchar(300) not null,
	sub_id varchar not null,
	status int not null,
	is_deleted   bool,
    created_by   bigint,
    created_date timestamp,
    updated_by   bigint,
    updated_date timestamp
)

create table IF NOT EXISTS roles 
(
    id           bigint 
        constraint roles_pk
            primary key,
	name varchar(150) not null,
	description varchar(300) not null,
	status int not null,
	is_deleted   bool,
    created_by   bigint,
    created_date timestamp,
    updated_by   bigint,
    updated_date timestamp
)

create table IF NOT EXISTS permissions 
(
    id           bigint 
        constraint permissions_pk
            primary key,
	permission_name varchar(150) not null,
	permission_path varchar(350) not null,
	method varchar(10) not null
)

create table IF NOT EXISTS role_permissions 
(
	role_id bigint,
	permission_id bigint
)

create table IF NOT EXISTS user_role 
(
	role_id bigint,
	user_id bigint
)