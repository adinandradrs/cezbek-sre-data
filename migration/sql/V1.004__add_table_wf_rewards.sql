create table wf_rewards
(
    id           bigint default nextval('wf_rewards_seq'::regclass)
        constraint wf_rewards_pk
            primary key,
    tier   varchar(15)      not null,
    reward decimal(19,2) not null,
	recurring int not null,
	tier_level int not null,
	status int not null,
	is_deleted   bool,
    created_by   bigint,
    created_date timestamp,
    updated_by   bigint,
    updated_date timestamp
);