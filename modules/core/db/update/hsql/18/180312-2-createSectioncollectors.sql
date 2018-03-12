alter table sectioncollectors add constraint FK_SECTIONCOLLECTORS_COLLECTOR foreign key (COLLECTOR) references revenuecollectors(ID);
alter table sectioncollectors add constraint FK_SECTIONCOLLECTORS_SECTION foreign key (SECTION) references revenuecategory(ID);
create index IDX_SECTIONCOLLECTORS_COLLECTOR on sectioncollectors (COLLECTOR);
create index IDX_SECTIONCOLLECTORS_SECTION on sectioncollectors (SECTION);
