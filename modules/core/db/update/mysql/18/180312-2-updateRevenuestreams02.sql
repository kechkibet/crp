alter table revenuestreams add constraint FK_REVENUESTREAMS_DEFAULTDEBITAC foreign key (DEFAULTDEBITAC) references chartofaccounts(ID);
