alter table offlinestreams add constraint FK_OFFLINESTREAMS_STREAM foreign key (STREAM) references revenuestreams(ID);
