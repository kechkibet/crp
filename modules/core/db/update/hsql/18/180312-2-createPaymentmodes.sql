alter table paymentmodes add constraint FK_PAYMENTMODES_`DEBITACCOUNT` foreign key (`DEBITACCOUNT`) references chartofaccounts(ID);
create index IDX_PAYMENTMODES_`DEBITACCOUNT` on paymentmodes (`DEBITACCOUNT`);
