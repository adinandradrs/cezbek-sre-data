alter table transactions
    rename column kezbek_ref_no to kezbek_ref_code;

alter table transactions
    drop column used_cashback;

alter table transactions
    drop column is_cashback_applied;
	
alter table transactions
    alter column h2h_provider_id drop not null;
	
alter table transactions
    alter column h2h_provider drop not null;
	
alter table transactions
    alter column h2h_fee drop not null;