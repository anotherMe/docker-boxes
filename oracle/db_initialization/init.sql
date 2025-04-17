
-- ------------------------------------------------------------------------------------------------------------------------------------
--

ALTER SESSION SET CONTAINER = FREEPDB1; -- this is used only in a Container Database (CDB) to switch the session's context to a specific Pluggable Database (PDB).

-- ------------------------------------------------------------------------------------------------------------------------------------
-- schema bernie


CREATE USER bernie IDENTIFIED BY lomax
DEFAULT TABLESPACE users
QUOTA unlimited ON users;


-- etc...


-- ------------------------------------------------------------------------------------------------------------------------------------
-- schema bernie

CREATE TABLE "bernie"."CONFIGURATION"
(           
	"ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE,
    "NAME" VARCHAR2(255),
    "VALUE" VARCHAR2(255),
	CONSTRAINT "CONFIGURATION_PK" PRIMARY KEY ("ID") USING INDEX  ENABLE,
	CONSTRAINT "NAME_UQ" UNIQUE ("NAME") USING INDEX  ENABLE
);


INSERT INTO bernie.CONFIGURATION (ID,NAME,VALUE) VALUES
   (50,'ca_tr_last_key_dcrr','2025-01-27T08:31:58.591442Z'),
   (60,'ca_tr_last_key_crr','2025-01-24T08:46:44.860825Z');



-- ------------------------------------------------------------------------------------------------------------------------------------
-- schema DEVICE_2


CREATE TABLE DEVICE_2.DEVICES (
	DEVICE_ID NUMBER,
	MOD_VERSION NUMBER,
	DEVICE_TYPE_ID NUMBER,
	FIELD_NAME VARCHAR2(100),
	COMMON_NAME VARCHAR2(100),
	DESCRIPTION VARCHAR2(250),
	MOD_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT DEVICES_CK1 PRIMARY KEY (DEVICE_ID),
	CONSTRAINT SYS_C0040512 CHECK ("DEVICE_ID" IS NOT NULL),
	CONSTRAINT SYS_C0040513 CHECK ("MOD_VERSION" IS NOT NULL),
	CONSTRAINT SYS_C0040514 CHECK ("DEVICE_TYPE_ID" IS NOT NULL),
	CONSTRAINT SYS_C0040515 CHECK ("FIELD_NAME" IS NOT NULL),
	CONSTRAINT SYS_C0040516 CHECK ("COMMON_NAME" IS NOT NULL),
	CONSTRAINT SYS_C0040517 CHECK ("DESCRIPTION" IS NOT NULL)
);

INSERT INTO DEVICE_2.DEVICES (DEVICE_ID,MOD_VERSION,DEVICE_TYPE_ID,FIELD_NAME,COMMON_NAME,DESCRIPTION,MOD_TIME) VALUES (11920000,35722745400,26100,'9999: 31026-2','31026-2','SCC Device - 9999: 31026-2',TIMESTAMP '2023-09-12 15:13:29.442600');
INSERT INTO DEVICE_2.DEVICES (DEVICE_ID,MOD_VERSION,DEVICE_TYPE_ID,FIELD_NAME,COMMON_NAME,DESCRIPTION,MOD_TIME) VALUES (6025300,40542481,16100,'GMB13-TMS-OperationalPoint-GMB13: 087','087','QUIC Device - GMB13-TMS-OperationalPoint-GMB13: 087',TIMESTAMP '2024-09-24 09:55:05.000000');


-- ------------------------------------------------------------------------------------------------------------------------------------
-- schema TL_1

CREATE TABLE TL_1.DEVICE_COMMAND_REQUEST_RESPONSES (
	COMMAND_REQUEST_ID VARCHAR2(36),
	MOD_VERSION NUMBER,
	USER_NAME VARCHAR2(100),
	COMMAND_NAME VARCHAR2(100),
	RESPONSE VARCHAR2(256),
	DEVICE_ID NUMBER,
	MOD_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT DEVICE_COMMAND_REQUEST_RESPONSES_CK1 PRIMARY KEY (COMMAND_REQUEST_ID),
	CONSTRAINT SYS_C0040745 CHECK ("COMMAND_REQUEST_ID" IS NOT NULL),
	CONSTRAINT SYS_C0040746 CHECK ("MOD_VERSION" IS NOT NULL),
	CONSTRAINT SYS_C0040747 CHECK ("USER_NAME" IS NOT NULL),
	CONSTRAINT SYS_C0040748 CHECK ("COMMAND_NAME" IS NOT NULL),
	CONSTRAINT SYS_C0040749 CHECK ("RESPONSE" IS NOT NULL),
	CONSTRAINT SYS_C0040750 CHECK ("DEVICE_ID" IS NOT NULL)
);


CREATE TABLE TL_1.COMMAND_REQUEST_RESPONSES (
	COMMAND_REQUEST_ID VARCHAR2(36),
	MOD_VERSION NUMBER,
	USER_NAME VARCHAR2(100),
	COMMAND_NAME VARCHAR2(100),
	RESPONSE VARCHAR2(256),
	MOD_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT COMMAND_REQUEST_RESPONSES_CK1 PRIMARY KEY (COMMAND_REQUEST_ID),
	CONSTRAINT SYS_C0040485 CHECK ("COMMAND_REQUEST_ID" IS NOT NULL),
	CONSTRAINT SYS_C0040486 CHECK ("MOD_VERSION" IS NOT NULL),
	CONSTRAINT SYS_C0040487 CHECK ("USER_NAME" IS NOT NULL),
	CONSTRAINT SYS_C0040488 CHECK ("COMMAND_NAME" IS NOT NULL),
	CONSTRAINT SYS_C0040489 CHECK ("RESPONSE" IS NOT NULL)
);

-- ------------------------------------------------------------------------------------------------------------------------------------

COMMIT;
