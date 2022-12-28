create table partners
(
    id           bigint default nextval('partners_seq'::regclass)
        constraint partners_pk
            primary key,
    partner      varchar      not null,
    code         varchar(10)  not null,
    api_key      varchar(100) not null,
    salt         varchar(100) not null,
    secret       varchar      not null,
    email        varchar(300) not null,
    msisdn       varchar(15)  not null,
    officer      varchar      not null,
    address      varchar(350) not null,
    partner_logo varchar(300) not null,
    status       int          not null,
    is_deleted   bool,
    created_by   bigint,
    created_date timestamp,
    updated_by   bigint,
    updated_date timestamp
);