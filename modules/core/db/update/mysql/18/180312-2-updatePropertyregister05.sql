alter table propertyregister add constraint FK_PROPERTYREGISTER_SUBCOUNTY foreign key (SUBCOUNTY) references subcounties(ID);
