alter table revenuecategory add constraint FK_REVENUECATEGORY_SUBCOUNTY foreign key (SUBCOUNTY) references subcounties(ID);
