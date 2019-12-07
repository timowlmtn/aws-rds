-- drop table dw.dim_account;

create table if not exists dw.dim_account (
    id serial primary key,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(1027),
    start_date timestamp default now(),
    end_date timestamp default to_timestamp('2999-12-31', 'YYYY-MM-DD')
)