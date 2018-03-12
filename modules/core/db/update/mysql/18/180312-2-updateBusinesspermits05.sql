alter table businesspermits add constraint FK_BUSINESSPERMITS_RCPTNUMBER foreign key (RCPTNUMBER) references revenuecollectiontransactions(ID);
