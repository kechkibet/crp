alter table propertyregister add constraint FK_PROPERTYREGISTER_UPLOADSTAMPDUTY foreign key (UPLOADSTAMPDUTY) references SYS_FILE(ID);
