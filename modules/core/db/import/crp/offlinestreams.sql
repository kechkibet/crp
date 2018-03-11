-- Create new columns
alter table offlinestreams add column CREATE_TS datetime(3) ;
alter table offlinestreams add column CREATED_BY varchar(50) ;
alter table offlinestreams add column VERSION integer ;
alter table offlinestreams add column UPDATE_TS datetime(3) ;
alter table offlinestreams add column UPDATED_BY varchar(50) ;
alter table offlinestreams add column DELETE_TS datetime(3) ;
alter table offlinestreams add column DELETED_BY varchar(50) ;
update offlinestreams set CREATE_TS = current_timestamp,
 CREATED_BY = 'import',
 VERSION = 0,
 UPDATE_TS = current_timestamp,
 UPDATED_BY = 'import' ;
