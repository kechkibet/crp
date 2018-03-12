create table activitycodes (
    ID int generated by default as identity(start with 1) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    `countyActivityCode` varchar(255),
    description varchar(255),
    `permitYearlyAmount` integer,
    status integer
);
