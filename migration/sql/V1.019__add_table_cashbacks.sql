create sequence cashbacks_seq;

create table cashbacks
(
    id           bigint default nextval('cashbacks_seq'::regclass)
        constraint cashbacks_pk
            primary key,
    kezbek_ref_code      varchar(30)      not null,
    cashback_amount decimal(19,2),
    cashback_reward decimal(19,2),
	wallet_code varchar(20) not null,
	h2h_code varchar(20) not null,
	status       int          not null,
    is_deleted   bool,
    created_by   bigint,
    created_date timestamp,
    updated_by   bigint,
    updated_date timestamp
);