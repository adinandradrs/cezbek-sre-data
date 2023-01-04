alter table tiers
    rename column next_level to next_grade;

alter table tiers
    rename column current_level to current_grade;

alter table tiers
    rename column prev_level to prev_grade;