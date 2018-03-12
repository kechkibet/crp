alter table businesspermits add constraint FK_BUSINESSPERMITS_PROPERTYREGISTERID foreign key (PROPERTYREGISTERID) references propertyregister(ID);
