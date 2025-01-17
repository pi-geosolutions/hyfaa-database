
-----------------------------------------------------
-- Create a tileserv role
-- Manage the access right, to expose only the tables we want to
-----------------------------------------------------

DROP ROLE IF EXISTS tileserv;
CREATE ROLE tileserv WITH
	LOGIN
	ENCRYPTED PASSWORD 'pg_tileserv'
	CONNECTION LIMIT 50;

GRANT USAGE ON SCHEMA geospatial TO tileserv;
GRANT USAGE ON SCHEMA hyfaa TO tileserv;
GRANT SELECT ON TABLE geospatial.drainage_mgb_niger_masked TO tileserv;
GRANT SELECT ON TABLE hyfaa.data_with_assim_aggregate_geo TO tileserv;
GRANT SELECT ON TABLE hyfaa.data_with_mgbstandard_aggregate_geo TO tileserv;
GRANT SELECT ON TABLE hyfaa.data_aggregated_geo TO tileserv;
GRANT SELECT ON TABLE geospatial.stations_geo TO tileserv;
