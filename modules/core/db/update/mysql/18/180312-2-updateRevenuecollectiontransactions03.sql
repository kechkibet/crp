alter table revenuecollectiontransactions add constraint FK_REVENUECOLLECTIONTRANSACTIONS_REVENUESECTION foreign key (REVENUESECTION) references revenuecategory(ID);