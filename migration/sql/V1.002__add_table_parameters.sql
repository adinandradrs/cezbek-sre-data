create table parameters
(
    id           bigint default nextval('parameters_seq'::regclass)
        constraint parameters_pk
            primary key,
    param_desc   varchar      not null,
    param_group varchar(15) not null,
	param_value varchar(1000) not null,
    is_deleted   bool,
    created_by   bigint,
    created_date timestamp,
    updated_by   bigint,
    updated_date timestamp
);