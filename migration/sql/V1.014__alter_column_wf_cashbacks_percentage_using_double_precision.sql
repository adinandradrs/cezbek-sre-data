alter table wf_cashbacks
    alter column cashback_percentage type double precision using cashback_percentage::double precision;

