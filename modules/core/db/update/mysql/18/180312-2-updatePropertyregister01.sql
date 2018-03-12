alter table propertyregister add constraint FK_PROPERTYREGISTER_RATEPAYER foreign key (RATEPAYER) references persons(ID);
