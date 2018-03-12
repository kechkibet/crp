alter table businesspermits add constraint FK_BUSINESSPERMITS_PERMITPAYER foreign key (PERMITPAYER) references persons(ID);
