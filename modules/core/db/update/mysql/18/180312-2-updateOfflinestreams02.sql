alter table offlinestreams add constraint FK_OFFLINESTREAMS_SECTION foreign key (SECTION) references revenuecategory(ID);
