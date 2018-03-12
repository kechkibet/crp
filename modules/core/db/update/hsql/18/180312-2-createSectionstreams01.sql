alter table sectionstreams add constraint FK_SECTIONSTREAMS_SECTION foreign key (SECTION) references revenuecategory(ID);
alter table sectionstreams add constraint FK_SECTIONSTREAMS_STREAM foreign key (STREAM) references revenuestreams(ID);
create index IDX_SECTIONSTREAMS_SECTION on sectionstreams (SECTION);
create index IDX_SECTIONSTREAMS_STREAM on sectionstreams (STREAM);
