alter table revenuestreams add constraint FK_REVENUESTREAMS_CATEGORY foreign key (CATEGORY) references revenuecategory(ID);
alter table revenuestreams add constraint FK_REVENUESTREAMS_`DEFAULTDEBITAC` foreign key (`DEFAULTDEBITAC`) references chartofaccounts(ID);
alter table revenuestreams add constraint FK_REVENUESTREAMS_`DEFAULTCREDITAC` foreign key (`DEFAULTCREDITAC`) references chartofaccounts(ID);
alter table revenuestreams add constraint FK_REVENUESTREAMS_DEPARTMENT foreign key (DEPARTMENT) references departments(ID);
create index IDX_REVENUESTREAMS_CATEGORY on revenuestreams (CATEGORY);
create index IDX_REVENUESTREAMS_`DEFAULTDEBITAC` on revenuestreams (`DEFAULTDEBITAC`);
create index IDX_REVENUESTREAMS_`DEFAULTCREDITAC` on revenuestreams (`DEFAULTCREDITAC`);
create index IDX_REVENUESTREAMS_DEPARTMENT on revenuestreams (DEPARTMENT);
