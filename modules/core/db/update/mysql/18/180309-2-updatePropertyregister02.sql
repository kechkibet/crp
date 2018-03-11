alter table propertyregister change column uploadTitleDeed uploadTitleDeed__UNUSED longblob;
alter table propertyregister change column uploadStampDuty uploadStampDuty__UNUSED longblob;
alter table propertyregister add column UPLOADSTAMPDUTY varchar(32) ;
alter table propertyregister add column UPLOADTITLEDEED varchar(32) ;
