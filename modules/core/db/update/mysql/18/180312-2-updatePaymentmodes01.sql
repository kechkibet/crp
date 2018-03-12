alter table paymentmodes add constraint FK_PAYMENTMODES_DEBITACCOUNT foreign key (DEBITACCOUNT) references chartofaccounts(ID);
