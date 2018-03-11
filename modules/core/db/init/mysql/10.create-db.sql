-- begin PROPERTYREGISTER
create table propertyregister (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    `lrNumber` varchar(255),
    `ratePayer` integer not null,
    `valuationRoll` integer not null,
    status integer,
    `physicalLocation` varchar(255),
    `gpsLongitude` varchar(255),
    `gpsLatitude` varchar(255),
    `gpsAltitude` varchar(255),
    `uploadStampDuty` varchar(32),
    `sellingValue` integer,
    `uploadTitleDeed` varchar(32),
    `sizeInHa` integer,
    `subCounty` integer,
    interest varchar(255),
    `leaseExpiry` integer,
    `leaseStartDate` date,
    --
    primary key (ID)
)^
-- end PROPERTYREGISTER
-- begin PERSONS
create table persons (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    `personFirstName` varchar(255),
    `personLastName` varchar(255),
    `idNumber` varchar(255),
    `phoneNumber` varchar(255),
    address varchar(255),
    `emailAddress` varchar(255),
    --
    primary key (ID)
)^
-- end PERSONS
-- begin SUBCOUNTIES
create table subcounties (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    name varchar(255),
    `iebcCode` varchar(255),
    --
    primary key (ID)
)^
-- end SUBCOUNTIES
-- begin VALUATIONROLLS
create table valuationrolls (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    `valuationCode` integer,
    name varchar(255) not null,
    `rollType` integer not null,
    `landUse` integer not null,
    `siteValue` varchar(255),
    `valuationMethod` integer,
    `ratingMethod` integer,
    `annualRate` varchar(255),
    `rentBasedOn` integer,
    exempt varchar(255),
    `rateableValue` varchar(255),
    `sizeInHa` integer,
    `subCounty` integer,
    --
    primary key (ID)
)^
-- end VALUATIONROLLS
-- begin ACCOUNTCATEGORY
create table accountcategory (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    name varchar(255),
    description varchar(255),
    --
    primary key (ID)
)^
-- end ACCOUNTCATEGORY
-- begin CHARTOFACCOUNTS
create table chartofaccounts (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    code varchar(255),
    name varchar(255),
    `accountType` varchar(255),
    category integer,
    --
    primary key (ID)
)^
-- end CHARTOFACCOUNTS
-- begin DEPARTMENTS
create table departments (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    `deptName` varchar(255),
    `ministryID` integer,
    --
    primary key (ID)
)^
-- end DEPARTMENTS
-- begin MINISTRIES
create table ministries (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    `ministryName` varchar(255),
    --
    primary key (ID)
)^
-- end MINISTRIES
-- begin REVENUECATEGORY
create table revenuecategory (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    name varchar(255),
    `subCounty` integer,
    --
    primary key (ID)
)^
-- end REVENUECATEGORY
-- begin REVENUESTREAMS
create table revenuestreams (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    category integer,
    `revenueCode` integer,
    `revenueName` varchar(255),
    price varchar(255),
    status integer,
    `defaultDebitAC` integer,
    `defaultCreditAC` integer,
    `revenuceCode` integer,
    department integer,
    --
    primary key (ID)
)^
-- end REVENUESTREAMS
-- begin PAYMENTMODES
create table paymentmodes (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    `modeName` varchar(255),
    `debitAccount` integer,
    --
    primary key (ID)
)^
-- end PAYMENTMODES
-- begin REVENUECOLLECTIONTRANSACTIONS
create table revenuecollectiontransactions (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    `revenueStream` integer,
    `revenueCollector` integer,
    datetime datetime(3),
    description varchar(255),
    `paymentMode` varchar(255),
    `paymentID` varchar(255),
    `revenueSection` integer,
    amount integer,
    `offlineID` varchar(255),
    `paymentModeID` integer,
    `reconStatus` integer,
    `reconFileID` integer,
    --
    primary key (ID)
)^
-- end REVENUECOLLECTIONTRANSACTIONS
-- begin REVENUECOLLECTORS
create table revenuecollectors (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    name varchar(255),
    `idNumber` varchar(255),
    `deviceSN` varchar(255),
    `devicePIN` integer,
    `offlineCreditLimit` integer,
    `offlineRcptNumber` integer,
    `isBackOffice` boolean,
    --
    primary key (ID)
)^
-- end REVENUECOLLECTORS
-- begin ACTIVITYCODES
create table activitycodes (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    `countyActivityCode` varchar(255),
    description varchar(255),
    `permitYearlyAmount` integer,
    status integer,
    --
    primary key (ID)
)^
-- end ACTIVITYCODES
-- begin BUSINESSES
create table businesses (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    name varchar(255),
    description varchar(255),
    `regNo` varchar(255),
    email varchar(255),
    `phoneNumber` varchar(255),
    address varchar(255),
    status integer,
    town varchar(255),
    street varchar(255),
    `buildingName` varchar(255),
    --
    primary key (ID)
)^
-- end BUSINESSES
-- begin BUSINESSPERMITS
create table businesspermits (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    status varchar(50),
    `amountPaid` integer,
    `expiryDate` date,
    `creationDate` date,
    `permitPayer` integer,
    description varchar(255),
    `businessID` integer,
    `activityCode` integer,
    `propertyRegisterID` integer,
    `numberOfEmployees` integer,
    `certificateNo` integer,
    `rcptNumber` integer,
    --
    primary key (ID)
)^
-- end BUSINESSPERMITS
-- begin OFFLINESTREAMS
create table offlinestreams (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    collector integer,
    section integer,
    stream integer,
    --
    primary key (ID)
)^
-- end OFFLINESTREAMS
-- begin SECTIONCOLLECTORS
create table sectioncollectors (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    collector integer,
    section integer,
    --
    primary key (ID)
)^
-- end SECTIONCOLLECTORS
-- begin SECTIONSTREAMS
create table sectionstreams (
    ID int auto_increment,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    VERSION integer,
    --
    section integer,
    stream integer,
    --
    primary key (ID)
)^
-- end SECTIONSTREAMS
