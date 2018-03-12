alter table departments add constraint FK_DEPARTMENTS_MINISTRYID foreign key (MINISTRYID) references ministries(ID);
