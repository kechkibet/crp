alter table propertyregister add constraint FK_PROPERTYREGISTER_UPLOADSTAMPDUTY foreign key (UPLOADSTAMPDUTY) references SYS_FILE(ID);
create index IDX_PROPERTYREGISTER_UPLOADSTAMPDUTY on propertyregister (UPLOADSTAMPDUTY);
