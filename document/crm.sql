/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014/5/2 20:18:20                            */
/*==============================================================*/


drop table if exists Table_3;

drop table if exists c_discuss_detail;

drop table if exists c_discuss_main;

drop table if exists c_group_info;

drop table if exists c_log_info;

drop table if exists c_project_info;

drop table if exists c_user_info;

/*==============================================================*/
/* Table: Table_3                                               */
/*==============================================================*/
create table Table_3;

/*==============================================================*/
/* Table: c_discuss_detail                                      */
/*==============================================================*/
create table c_discuss_detail
(
   id                   bigint not null auto_increment,
   content              varchar(200),
   create_date          datetime,
   discuss_main_id      bigint,
   project_id           bigint,
   user_id              bigint,
   user_name            varchar(40),
   primary key (id)
);

/*==============================================================*/
/* Table: c_discuss_main                                        */
/*==============================================================*/
create table c_discuss_main
(
   id                   bigint not null auto_increment,
   content              varchar(200),
   create_date          datetime,
   project_id           bigint,
   create_user_id       bigint,
   primary key (id)
);

/*==============================================================*/
/* Table: c_group_info                                          */
/*==============================================================*/
create table c_group_info
(
   id                   bigint not null auto_increment,
   leader_id            bigint,
   create_date          datetime,
   leader_name          varchar(40),
   primary key (id)
);

/*==============================================================*/
/* Table: c_log_info                                            */
/*==============================================================*/
create table c_log_info
(
   id                   bigint not null,
   group_id             bigint,
   content              varchar(200),
   create_date          datetime,
   op_user_id           bigint,
   op_user_name         varchar(40),
   primary key (id)
);

/*==============================================================*/
/* Table: c_project_info                                        */
/*==============================================================*/
create table c_project_info
(
   id                   bigint not null auto_increment,
   project_name         varchar(100),
   remark               varbinary(1000),
   create_date          datetime,
   create_user_id       bigint,
   create_user_name     varchar(40),
   group_id             bigint,
   primary key (id)
);

/*==============================================================*/
/* Table: c_user_info                                           */
/*==============================================================*/
create table c_user_info
(
   id                   bigint not null auto_increment,
   login_name           varchar(20),
   name                 varchar(20),
   password             varchar(40),
   register_date        datetime,
   status               tinyint,
   email                varchar(40),
   salt                 varchar(40),
   roles                varchar(100),
   group_id             bigint,
   primary key (id)
);

