alter table revenuestreams add constraint FK_REVENUESTREAMS_CATEGORY foreign key (CATEGORY) references revenuecategory(ID);
