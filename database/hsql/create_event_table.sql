-- HSQLDB script file for creating the database event interface table, schema version 1
-- set to your schema
SET AUTOCOMMIT TRUE;

/****** Database event table ******/
DROP TABLE DB_EVENT IF EXISTS;

CREATE CACHED TABLE DB_EVENT (
	EVENT_KEY bigint GENERATED BY DEFAULT AS IDENTITY,
	SOURCE_ID varchar(128) NOT NULL,
	IN_VALUE varchar(64) NOT NULL,
	EVENT_TIME timestamp(3) NULL,
	EVENT_TIME_OFFSET int NULL,
	STATUS varchar(16) NOT NULL,
	ERROR varchar(512) NULL,
	REASON varchar(64) NULL,
    PRIMARY KEY (EVENT_KEY)
);
	