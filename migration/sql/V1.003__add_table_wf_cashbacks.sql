create table wf_cashbacks
(
    id           bigint default nextval('wf_cashbacks_seq'::regclass)
        constraint wf_cashbacks_pk
            primary key,
    min_qty   int      not null,
    min_transaction decimal(19,2) not null,
	max_transaction decimal(19,2),
	cashback_percentage decimal(2,2) not null,
    status int not null,
	is_deleted   bool,
    created_by   bigint,
    created_date timestamp,
    updated_by   bigint,
    updated_date timestamp
);