alter table revenuecategory add constraint FK_REVENUECATEGORY_`SUBCOUNTY` foreign key (`SUBCOUNTY`) references subcounties(ID);
create index IDX_REVENUECATEGORY_`SUBCOUNTY` on revenuecategory (`SUBCOUNTY`);
