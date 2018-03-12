alter table chartofaccounts add constraint FK_CHARTOFACCOUNTS_CATEGORY foreign key (CATEGORY) references accountcategory(ID);
create index IDX_CHARTOFACCOUNTS_CATEGORY on chartofaccounts (CATEGORY);
