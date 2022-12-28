drop sequence h2h_providers_fees_seq;
create sequence h2h_provider_fees_seq;

drop table h2h_providers;
drop table h2h_provider_fees;

create table h2h_providers
(
    id           bigint default nextval('h2h_providers_seq'::regclass)
        constraint h2h_providers_pk
            primary key,
    provider   varchar      not null,
    status int not null,
	is_deleted   bool,
    created_by   bigint,
    created_date timestamp,
    updated_by   bigint,
    updated_date timestamp
);

create table h2h_provider_fees
(
    id           bigint default nextval('h2h_provider_fees_seq'::regclass)
        constraint h2h_provider_fees_pk
            primary key,
    h2h_provider_bigint   bigint      not null,
    wallet_code varchar(10) not null,
	fee decimal(19,2) not null,
	status int not null,
	is_deleted   bool,
    created_by   bigint,
    created_date timestamp,
    updated_by   bigint,
    updated_date timestamp
);