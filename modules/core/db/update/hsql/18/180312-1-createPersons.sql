create table persons (
    ID int generated by default as identity(start with 1) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    `personFirstName` varchar(255),
    `personLastName` varchar(255),
    `idNumber` varchar(255),
    `phoneNumber` varchar(255),
    address varchar(255),
    `emailAddress` varchar(255)
);