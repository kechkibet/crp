alter table valuationrolls add constraint FK_VALUATIONROLLS_`SUBCOUNTY` foreign key (`SUBCOUNTY`) references subcounties(ID);
create index IDX_VALUATIONROLLS_`SUBCOUNTY` on valuationrolls (`SUBCOUNTY`);
