create sequence h2h_transaction_refs_seq;

create table IF NOT EXISTS transactions 
(
    id           bigint default nextval('transactions_seq'::regclass)
        constraint transactions_pk
            primary key,
	status int not null,
    partner_id bigint not null,
	partner varchar not null,
	wallet_code varchar(10) not null,
	msisdn varchar(15) not null,
	email varchar(300) not null,
	used_cashback decimal(19,2),
	is_cashback_applied bool,
	qty int not null,
	amount decimal(19,2) not null,
	partner_ref_code varchar(25) not null,
	kezbek_ref_no varchar(20),
	reward decimal(19,2),
	cashback_percentage decimal(2,2),
	h2h_provider bigint not null,
	h2h_provider varchar not null,
	h2h_fee decimal(19,2) not null,
	is_deleted   bool,
    created_by   bigint,
    created_date timestamp,
    updated_by   bigint,
    updated_date timestamp
);