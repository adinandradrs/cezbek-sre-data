drop table roles;
drop table user_role;
drop table permissions;
alter table cashbacks
    rename column cashback_amount to amount;

alter table cashbacks
    rename column cashback_reward to reward;

