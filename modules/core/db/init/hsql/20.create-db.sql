-- begin PROPERTYREGISTER
alter table propertyregister add constraint FK_PROPERTYREGISTER_`RATEPAYER` foreign key (`RATEPAYER`) references persons(ID)^
alter table propertyregister add constraint FK_PROPERTYREGISTER_`VALUATIONROLL` foreign key (`VALUATIONROLL`) references valuationrolls(ID)^
alter table propertyregister add constraint FK_PROPERTYREGISTER_`UPLOADSTAMPDUTY` foreign key (`UPLOADSTAMPDUTY`) references SYS_FILE(ID)^
alter table propertyregister add constraint FK_PROPERTYREGISTER_`UPLOADTITLEDEED` foreign key (`UPLOADTITLEDEED`) references SYS_FILE(ID)^
alter table propertyregister add constraint FK_PROPERTYREGISTER_`SUBCOUNTY` foreign key (`SUBCOUNTY`) references subcounties(ID)^
create index IDX_PROPERTYREGISTER_`RATEPAYER` on propertyregister (`RATEPAYER`)^
create index IDX_PROPERTYREGISTER_`VALUATIONROLL` on propertyregister (`VALUATIONROLL`)^
create index IDX_PROPERTYREGISTER_`UPLOADSTAMPDUTY` on propertyregister (`UPLOADSTAMPDUTY`)^
create index IDX_PROPERTYREGISTER_`UPLOADTITLEDEED` on propertyregister (`UPLOADTITLEDEED`)^
create index IDX_PROPERTYREGISTER_`SUBCOUNTY` on propertyregister (`SUBCOUNTY`)^
-- end PROPERTYREGISTER
-- begin VALUATIONROLLS
alter table valuationrolls add constraint FK_VALUATIONROLLS_`SUBCOUNTY` foreign key (`SUBCOUNTY`) references subcounties(ID)^
create index IDX_VALUATIONROLLS_`SUBCOUNTY` on valuationrolls (`SUBCOUNTY`)^
-- end VALUATIONROLLS
-- begin REVENUESTREAMS
alter table revenuestreams add constraint FK_REVENUESTREAMS_CATEGORY foreign key (CATEGORY) references revenuecategory(ID)^
alter table revenuestreams add constraint FK_REVENUESTREAMS_`DEFAULTDEBITAC` foreign key (`DEFAULTDEBITAC`) references chartofaccounts(ID)^
alter table revenuestreams add constraint FK_REVENUESTREAMS_`DEFAULTCREDITAC` foreign key (`DEFAULTCREDITAC`) references chartofaccounts(ID)^
alter table revenuestreams add constraint FK_REVENUESTREAMS_DEPARTMENT foreign key (DEPARTMENT) references departments(ID)^
create index IDX_REVENUESTREAMS_CATEGORY on revenuestreams (CATEGORY)^
create index IDX_REVENUESTREAMS_`DEFAULTDEBITAC` on revenuestreams (`DEFAULTDEBITAC`)^
create index IDX_REVENUESTREAMS_`DEFAULTCREDITAC` on revenuestreams (`DEFAULTCREDITAC`)^
create index IDX_REVENUESTREAMS_DEPARTMENT on revenuestreams (DEPARTMENT)^
-- end REVENUESTREAMS
-- begin CHARTOFACCOUNTS
alter table chartofaccounts add constraint FK_CHARTOFACCOUNTS_CATEGORY foreign key (CATEGORY) references accountcategory(ID)^
create index IDX_CHARTOFACCOUNTS_CATEGORY on chartofaccounts (CATEGORY)^
-- end CHARTOFACCOUNTS
-- begin DEPARTMENTS
alter table departments add constraint FK_DEPARTMENTS_`MINISTRYID` foreign key (`MINISTRYID`) references ministries(ID)^
create index IDX_DEPARTMENTS_`MINISTRYID` on departments (`MINISTRYID`)^
-- end DEPARTMENTS
-- begin REVENUECATEGORY
alter table revenuecategory add constraint FK_REVENUECATEGORY_`SUBCOUNTY` foreign key (`SUBCOUNTY`) references subcounties(ID)^
create index IDX_REVENUECATEGORY_`SUBCOUNTY` on revenuecategory (`SUBCOUNTY`)^
-- end REVENUECATEGORY
-- begin REVENUECOLLECTIONTRANSACTIONS
alter table revenuecollectiontransactions add constraint FK_REVENUECOLLECTIONTRANSACTIONS_`REVENUESTREAM` foreign key (`REVENUESTREAM`) references revenuestreams(ID)^
alter table revenuecollectiontransactions add constraint FK_REVENUECOLLECTIONTRANSACTIONS_`REVENUECOLLECTOR` foreign key (`REVENUECOLLECTOR`) references revenuecollectors(ID)^
alter table revenuecollectiontransactions add constraint FK_REVENUECOLLECTIONTRANSACTIONS_`REVENUESECTION` foreign key (`REVENUESECTION`) references revenuecategory(ID)^
alter table revenuecollectiontransactions add constraint FK_REVENUECOLLECTIONTRANSACTIONS_`PAYMENTMODEID` foreign key (`PAYMENTMODEID`) references paymentmodes(ID)^
create index IDX_REVENUECOLLECTIONTRANSACTIONS_`REVENUESTREAM` on revenuecollectiontransactions (`REVENUESTREAM`)^
create index IDX_REVENUECOLLECTIONTRANSACTIONS_`REVENUECOLLECTOR` on revenuecollectiontransactions (`REVENUECOLLECTOR`)^
create index IDX_REVENUECOLLECTIONTRANSACTIONS_`REVENUESECTION` on revenuecollectiontransactions (`REVENUESECTION`)^
create index IDX_REVENUECOLLECTIONTRANSACTIONS_`PAYMENTMODEID` on revenuecollectiontransactions (`PAYMENTMODEID`)^
-- end REVENUECOLLECTIONTRANSACTIONS
-- begin PAYMENTMODES
alter table paymentmodes add constraint FK_PAYMENTMODES_`DEBITACCOUNT` foreign key (`DEBITACCOUNT`) references chartofaccounts(ID)^
create index IDX_PAYMENTMODES_`DEBITACCOUNT` on paymentmodes (`DEBITACCOUNT`)^
-- end PAYMENTMODES
-- begin BUSINESSPERMITS
alter table businesspermits add constraint FK_BUSINESSPERMITS_`PERMITPAYER` foreign key (`PERMITPAYER`) references persons(ID)^
alter table businesspermits add constraint FK_BUSINESSPERMITS_`BUSINESSID` foreign key (`BUSINESSID`) references businesses(ID)^
alter table businesspermits add constraint FK_BUSINESSPERMITS_`ACTIVITYCODE` foreign key (`ACTIVITYCODE`) references activitycodes(ID)^
alter table businesspermits add constraint FK_BUSINESSPERMITS_`PROPERTYREGISTERID` foreign key (`PROPERTYREGISTERID`) references propertyregister(ID)^
alter table businesspermits add constraint FK_BUSINESSPERMITS_`RCPTNUMBER` foreign key (`RCPTNUMBER`) references revenuecollectiontransactions(ID)^
create index IDX_BUSINESSPERMITS_`PERMITPAYER` on businesspermits (`PERMITPAYER`)^
create index IDX_BUSINESSPERMITS_`BUSINESSID` on businesspermits (`BUSINESSID`)^
create index IDX_BUSINESSPERMITS_`ACTIVITYCODE` on businesspermits (`ACTIVITYCODE`)^
create index IDX_BUSINESSPERMITS_`PROPERTYREGISTERID` on businesspermits (`PROPERTYREGISTERID`)^
create index IDX_BUSINESSPERMITS_`RCPTNUMBER` on businesspermits (`RCPTNUMBER`)^
-- end BUSINESSPERMITS
-- begin SECTIONSTREAMS
alter table sectionstreams add constraint FK_SECTIONSTREAMS_SECTION foreign key (SECTION) references revenuecategory(ID)^
alter table sectionstreams add constraint FK_SECTIONSTREAMS_STREAM foreign key (STREAM) references revenuestreams(ID)^
create index IDX_SECTIONSTREAMS_SECTION on sectionstreams (SECTION)^
create index IDX_SECTIONSTREAMS_STREAM on sectionstreams (STREAM)^
-- end SECTIONSTREAMS
-- begin SECTIONCOLLECTORS
alter table sectioncollectors add constraint FK_SECTIONCOLLECTORS_COLLECTOR foreign key (COLLECTOR) references revenuecollectors(ID)^
alter table sectioncollectors add constraint FK_SECTIONCOLLECTORS_SECTION foreign key (SECTION) references revenuecategory(ID)^
create index IDX_SECTIONCOLLECTORS_COLLECTOR on sectioncollectors (COLLECTOR)^
create index IDX_SECTIONCOLLECTORS_SECTION on sectioncollectors (SECTION)^
-- end SECTIONCOLLECTORS
-- begin OFFLINESTREAMS
alter table offlinestreams add constraint FK_OFFLINESTREAMS_COLLECTOR foreign key (COLLECTOR) references revenuecollectors(ID)^
alter table offlinestreams add constraint FK_OFFLINESTREAMS_SECTION foreign key (SECTION) references revenuecategory(ID)^
alter table offlinestreams add constraint FK_OFFLINESTREAMS_STREAM foreign key (STREAM) references revenuestreams(ID)^
create index IDX_OFFLINESTREAMS_COLLECTOR on offlinestreams (COLLECTOR)^
create index IDX_OFFLINESTREAMS_SECTION on offlinestreams (SECTION)^
create index IDX_OFFLINESTREAMS_STREAM on offlinestreams (STREAM)^
-- end OFFLINESTREAMS
