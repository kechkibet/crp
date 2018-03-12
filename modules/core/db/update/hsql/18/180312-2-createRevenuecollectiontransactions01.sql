alter table revenuecollectiontransactions add constraint FK_REVENUECOLLECTIONTRANSACTIONS_`REVENUESTREAM` foreign key (`REVENUESTREAM`) references revenuestreams(ID);
alter table revenuecollectiontransactions add constraint FK_REVENUECOLLECTIONTRANSACTIONS_`REVENUECOLLECTOR` foreign key (`REVENUECOLLECTOR`) references revenuecollectors(ID);
alter table revenuecollectiontransactions add constraint FK_REVENUECOLLECTIONTRANSACTIONS_`REVENUESECTION` foreign key (`REVENUESECTION`) references revenuecategory(ID);
alter table revenuecollectiontransactions add constraint FK_REVENUECOLLECTIONTRANSACTIONS_`PAYMENTMODEID` foreign key (`PAYMENTMODEID`) references paymentmodes(ID);
create index IDX_REVENUECOLLECTIONTRANSACTIONS_`REVENUESTREAM` on revenuecollectiontransactions (`REVENUESTREAM`);
create index IDX_REVENUECOLLECTIONTRANSACTIONS_`REVENUECOLLECTOR` on revenuecollectiontransactions (`REVENUECOLLECTOR`);
create index IDX_REVENUECOLLECTIONTRANSACTIONS_`REVENUESECTION` on revenuecollectiontransactions (`REVENUESECTION`);
create index IDX_REVENUECOLLECTIONTRANSACTIONS_`PAYMENTMODEID` on revenuecollectiontransactions (`PAYMENTMODEID`);
