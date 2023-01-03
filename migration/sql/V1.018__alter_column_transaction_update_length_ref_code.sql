alter table transactions
    alter column partner_ref_code type varchar(30) using partner_ref_code::varchar(30);

alter table transactions
    alter column kezbek_ref_code type varchar(30) using kezbek_ref_code::varchar(30);

