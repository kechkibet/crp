alter table propertyregister add constraint FK_PROPERTYREGISTER_UPLOADTITLEDEED foreign key (UPLOADTITLEDEED) references SYS_FILE(ID);
