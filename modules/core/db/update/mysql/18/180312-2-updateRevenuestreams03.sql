alter table revenuestreams add constraint FK_REVENUESTREAMS_DEFAULTCREDITAC foreign key (DEFAULTCREDITAC) references chartofaccounts(ID);
