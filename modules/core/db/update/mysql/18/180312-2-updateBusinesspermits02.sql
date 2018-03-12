alter table businesspermits add constraint FK_BUSINESSPERMITS_BUSINESSID foreign key (BUSINESSID) references businesses(ID);
