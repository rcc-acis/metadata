DROP TABLE clim_div;
CREATE TABLE clim_div (
    clim_div_key smallint NOT NULL,
    clim_div_code character(2) NOT NULL,
    fips_state_code character(2),
    fips_state_abbr character(2),
    ncdc_state_code character(2) NOT NULL,
    clim_div_name character varying(30) NOT NULL,
    last_updated date NOT NULL,
    updated_by character(8) NOT NULL,
    remark character varying(254)
);

REVOKE ALL ON TABLE clim_div FROM PUBLIC;
GRANT SELECT ON TABLE clim_div TO acis;
COPY clim_div FROM '/usr/local/postgres/sql/clim_div.load'
USING DELIMITERS '|';


DROP TABLE country;
CREATE TABLE country (
    country_key smallint NOT NULL,
    fips_country_abbr character(2) NOT NULL,
    country_name character varying(80) NOT NULL,
    last_updated date NOT NULL,
    updated_by character(8) NOT NULL,
    remark character varying(254)
);

REVOKE ALL ON TABLE country FROM PUBLIC;
GRANT SELECT ON TABLE country TO acis;
COPY country FROM '/usr/local/postgres/sql/country.load'
USING DELIMITERS '|';


DROP TABLE county;
CREATE TABLE county (
    county_key smallint NOT NULL,
    fips_state_code character(2) NOT NULL,
    fips_state_abbr character(2) NOT NULL,
    fips_county_code character(3) NOT NULL,
    county_name character varying(31) NOT NULL,
    begin_date_flag character(2) NOT NULL,
    begin_date date NOT NULL,
    end_date_flag character(2) NOT NULL,
    end_date date NOT NULL,
    history_flag character(2) NOT NULL,
    last_updated date NOT NULL,
    updated_by character(8) NOT NULL,
    remark character varying(254)
);

REVOKE ALL ON TABLE county FROM PUBLIC;
GRANT SELECT ON TABLE county TO acis;
COPY county FROM '/usr/local/postgres/sql/county.load'
USING DELIMITERS '|';

DROP TABLE elev_type;
CREATE TABLE elev_type (
    elev_type_key smallint NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(254),
    last_updated date NOT NULL,
    updated_by character(8) NOT NULL,
    remark character varying(254)
);

REVOKE ALL ON TABLE elev_type FROM PUBLIC;
GRANT SELECT ON TABLE elev_type TO acis;


DROP TABLE id_type;
CREATE TABLE id_type (
    id_type_key smallint NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(254),
    controller_info character varying(50) NOT NULL,
    last_updated date NOT NULL,
    updated_by character(8) NOT NULL,
    remark character varying(254)
);

REVOKE ALL ON TABLE id_type FROM PUBLIC;
GRANT SELECT ON TABLE id_type TO acis;
COPY id_type FROM '/usr/local/postgres/sql/id_type.load'
USING DELIMITERS '|';


DROP TABLE network;
CREATE TABLE network (
    network_key smallint NOT NULL,
    network_code character(8) NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    id_type_key smallint NOT NULL,
    last_updated date NOT NULL,
    updated_by character(8) NOT NULL,
    remark character varying(254)
);

REVOKE ALL ON TABLE network FROM PUBLIC;
GRANT SELECT ON TABLE network TO acis;
COPY network FROM '/usr/local/postgres/sql/network.load'
USING DELIMITERS '|';


DROP TABLE state;
CREATE TABLE state (
    state_key smallint NOT NULL,
    country_key smallint NOT NULL,
    fips_country_abbr character(2) NOT NULL,
    fips_state_code character(2) NOT NULL,
    ncdc_state_code character(2),
    fips_state_abbr character(2),
    state_name character varying(30) NOT NULL,
    last_updated date NOT NULL,
    updated_by character(8) NOT NULL,
    remark character varying(254)
);

REVOKE ALL ON TABLE state FROM PUBLIC;
GRANT SELECT ON TABLE state TO acis;
COPY state FROM '/usr/local/postgres/sql/state.load'
USING DELIMITERS '|';


DROP TABLE zipcode;
CREATE TABLE zipcode (
    zipcode character(5) NOT NULL,
    longitude double precision NOT NULL,
    latitude double precision NOT NULL
);

REVOKE ALL ON TABLE zipcode FROM PUBLIC;
GRANT SELECT ON TABLE zipcode TO acis;
COPY zipcode FROM '/usr/local/postgres/sql/zipcode.load'
USING DELIMITERS '|';

CREATE INDEX zipcode_zipcode_indx ON zipcode USING btree (zipcode);

