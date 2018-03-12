alter table offlinestreams add constraint FK_OFFLINESTREAMS_COLLECTOR foreign key (COLLECTOR) references revenuecollectors(ID);
