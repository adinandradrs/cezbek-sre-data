create sequence tier_journeys_seq;

create table IF NOT EXISTS tiers 
(
    id           bigint default nextval('tiers_seq'::regclass)
        constraint tiers_pk
            primary key,
	partner_id bigint not null,
    msisdn varchar(15) not null,
	email varchar(300),
	used_cashback decimal(19,2),
	next_level int,
	next_tier varchar(15),
	current_level int not null,
	current_tier varchar(15) not null,
	prev_level int,
	prev_tier varchar(15),
	expired_date date,
	transaction_recurring int,
	is_deleted   bool,
    created_by   bigint,
    created_date timestamp,
    updated_by   bigint,
    updated_date timestamp
);

create table IF NOT EXISTS tier_journeys 
(
    id           bigint default nextval('tier_journeys_seq'::regclass)
        constraint tier_journeys_pk
            primary key,
	partner_id bigint not null,
    msisdn varchar(15) not null,
	email varchar(300),
	current_level int not null,
	current_tier varchar(15) not null,
	last_transaction_id bigint not null,
	notes varchar(100),
	is_deleted   bool,
    created_by   bigint,
    created_date timestamp,
    updated_by   bigint,
    updated_date timestamp
);