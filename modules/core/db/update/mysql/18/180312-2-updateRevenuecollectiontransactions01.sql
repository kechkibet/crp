alter table revenuecollectiontransactions add constraint FK_REVENUECOLLECTIONTRANSACTIONS_REVENUESTREAM foreign key (REVENUESTREAM) references revenuestreams(ID);
