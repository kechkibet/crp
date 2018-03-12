alter table offlinestreams add constraint FK_OFFLINESTREAMS_COLLECTOR foreign key (COLLECTOR) references revenuecollectors(ID);
alter table offlinestreams add constraint FK_OFFLINESTREAMS_SECTION foreign key (SECTION) references revenuecategory(ID);
alter table offlinestreams add constraint FK_OFFLINESTREAMS_STREAM foreign key (STREAM) references revenuestreams(ID);
create index IDX_OFFLINESTREAMS_COLLECTOR on offlinestreams (COLLECTOR);
create index IDX_OFFLINESTREAMS_SECTION on offlinestreams (SECTION);
create index IDX_OFFLINESTREAMS_STREAM on offlinestreams (STREAM);
