alter table partners
    alter column secret type bytea using secret::bytea;