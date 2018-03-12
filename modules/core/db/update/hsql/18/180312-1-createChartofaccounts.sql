create table chartofaccounts (
    ID int generated by default as identity(start with 1) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    code varchar(255),
    name varchar(255),
    `accountType` varchar(255),
    category integer
);