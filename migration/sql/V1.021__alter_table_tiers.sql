alter table tiers
    drop column used_cashback;

alter table tier_journeys
    drop column partner_id;

alter table tier_journeys
    drop column msisdn;

alter table tier_journeys
    drop column email;

alter table tier_journeys
    add tier_id bigint;

