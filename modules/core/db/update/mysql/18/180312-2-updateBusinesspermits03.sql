alter table businesspermits add constraint FK_BUSINESSPERMITS_ACTIVITYCODE foreign key (ACTIVITYCODE) references activitycodes(ID);
