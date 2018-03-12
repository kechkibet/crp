alter table departments add constraint FK_DEPARTMENTS_`MINISTRYID` foreign key (`MINISTRYID`) references ministries(ID);
create index IDX_DEPARTMENTS_`MINISTRYID` on departments (`MINISTRYID`);
