alter table propertyregister add constraint FK_PROPERTYREGISTER_VALUATIONROLL foreign key (VALUATIONROLL) references valuationrolls(ID);
