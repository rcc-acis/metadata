CREATE TABLE global_variable_maj_min
( major_id               smallint     NOT NULL,
  minor_id               smallint     NOT NULL,
  long_name              varchar(40)  NOT NULL,
  method                 char(8),
  measure_interval       char(8),
  report_interval        char(8),
  default_units          varchar(20),
  data_source            varchar(20),
  remark                 varchar(254));

CREATE TABLE station_variable_maj_min
( ucan_station_id        integer      NOT NULL,
  major_id               smallint     NOT NULL,
  minor_id               smallint     NOT NULL,
  long_name              varchar(40)  NOT NULL,
  method                 char(8),
  measure_interval       char(8),
  report_interval        char(8),
  default_units          varchar(20),
  data_source            varchar(20),
  remark                 varchar(254));

CREATE TABLE station_minor_id_pref
( ucan_station_id        integer      NOT NULL,
  major_id               smallint     NOT NULL,
  minor_id_list          varchar(50)  NOT NULL,
  begin_date             date         NOT NULL,
  end_date               date         NOT NULL);
