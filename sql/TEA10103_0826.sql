--------------------------------------------------------
--  File created - Wednesday-August-26-2020   
--------------------------------------------------------
DROP SEQUENCE "TEA10103"."SEQ_BOOKING_SER";
DROP SEQUENCE "TEA10103"."SEQ_MANAGER_ID";
DROP TABLE "TEA10103"."BOOKING";
DROP TABLE "TEA10103"."CARD";
DROP TABLE "TEA10103"."EMPWORKDATE";
DROP TABLE "TEA10103"."HISTORYCARDDATA";
DROP TABLE "TEA10103"."HOROSCOPE";
DROP TABLE "TEA10103"."MANAGER";
DROP TABLE "TEA10103"."MEMBER";
--------------------------------------------------------
--  DDL for Sequence SEQ_BOOKING_SER
--------------------------------------------------------

   CREATE SEQUENCE  "TEA10103"."SEQ_BOOKING_SER"  MINVALUE 1 MAXVALUE 5000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MANAGER_ID
--------------------------------------------------------

   CREATE SEQUENCE  "TEA10103"."SEQ_MANAGER_ID"  MINVALUE 1 MAXVALUE 1000000000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BOOKING
--------------------------------------------------------

  CREATE TABLE "TEA10103"."BOOKING" 
   (	"USERID" VARCHAR2(20 BYTE), 
	"EMPID" NUMBER, 
	"BDATE" DATE, 
	"BTIMES" VARCHAR2(5 BYTE), 
	"SERID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TEA10103"."BOOKING"."USERID" IS '預約的使用者serid';
   COMMENT ON COLUMN "TEA10103"."BOOKING"."EMPID" IS '被預約的員工id';
   COMMENT ON COLUMN "TEA10103"."BOOKING"."BDATE" IS '預約日期';
   COMMENT ON COLUMN "TEA10103"."BOOKING"."BTIMES" IS '(Day/N上午/o下午/晚上)on/night';
   COMMENT ON COLUMN "TEA10103"."BOOKING"."SERID" IS '預約單流水號';
   COMMENT ON TABLE "TEA10103"."BOOKING"  IS 'BOOKING.SERID 用序號機SEQ_BOOKING_SER產生';
--------------------------------------------------------
--  DDL for Table CARD
--------------------------------------------------------

  CREATE TABLE "TEA10103"."CARD" 
   (	"ID" NUMBER(20,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"OVERALL" VARCHAR2(400 BYTE), 
	"LOVE" VARCHAR2(400 BYTE), 
	"RICH" VARCHAR2(400 BYTE), 
	"HEALTH" VARCHAR2(400 BYTE), 
	"PICTURE" BLOB, 
	"KEYWORD" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("PICTURE") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table EMPWORKDATE
--------------------------------------------------------

  CREATE TABLE "TEA10103"."EMPWORKDATE" 
   (	"EMPID" NUMBER, 
	"WDATE" DATE, 
	"WTIME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TEA10103"."EMPWORKDATE"."WDATE" IS '上班日期';
   COMMENT ON COLUMN "TEA10103"."EMPWORKDATE"."WTIME" IS '上午/下午/晚上';
--------------------------------------------------------
--  DDL for Table HISTORYCARDDATA
--------------------------------------------------------

  CREATE TABLE "TEA10103"."HISTORYCARDDATA" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(20 BYTE), 
	"OVERALL" VARCHAR2(400 BYTE), 
	"LOVE" VARCHAR2(400 BYTE), 
	"RICH" VARCHAR2(400 BYTE), 
	"HEALTH" VARCHAR2(400 BYTE), 
	"PICTURE" BLOB, 
	"KEYWORD" VARCHAR2(40 BYTE), 
	"EAMIL" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("PICTURE") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table HOROSCOPE
--------------------------------------------------------

  CREATE TABLE "TEA10103"."HOROSCOPE" 
   (	"ID" NUMBER, 
	"COLUMN2" VARCHAR2(1000 BYTE), 
	"PICTURE" BLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("PICTURE") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table MANAGER
--------------------------------------------------------

  CREATE TABLE "TEA10103"."MANAGER" 
   (	"SERIAL" NUMBER, 
	"ACCOUNT" VARCHAR2(50 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"NICKNAME" VARCHAR2(50 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"PICTURE" BLOB, 
	"AUTHORITY" NUMBER(1,0), 
	"INTRODUCTION" VARCHAR2(200 BYTE), 
	"MAINPULATE" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(200 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("PICTURE") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "TEA10103"."MANAGER"."SERIAL" IS '序號';
   COMMENT ON COLUMN "TEA10103"."MANAGER"."ACCOUNT" IS '帳號';
   COMMENT ON COLUMN "TEA10103"."MANAGER"."NAME" IS '姓名';
   COMMENT ON COLUMN "TEA10103"."MANAGER"."NICKNAME" IS '暱稱';
   COMMENT ON COLUMN "TEA10103"."MANAGER"."PASSWORD" IS '密碼';
   COMMENT ON COLUMN "TEA10103"."MANAGER"."PICTURE" IS '大頭照';
   COMMENT ON COLUMN "TEA10103"."MANAGER"."AUTHORITY" IS '權限';
   COMMENT ON COLUMN "TEA10103"."MANAGER"."INTRODUCTION" IS '自我介紹';
   COMMENT ON COLUMN "TEA10103"."MANAGER"."MAINPULATE" IS '操作';
   COMMENT ON COLUMN "TEA10103"."MANAGER"."DESCRIPTION" IS '身分說明';
   COMMENT ON COLUMN "TEA10103"."MANAGER"."EMAIL" IS '電子信箱';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "TEA10103"."MEMBER" 
   (	"EMAIL" VARCHAR2(50 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"PHONE" VARCHAR2(10 BYTE), 
	"CITY" VARCHAR2(10 BYTE), 
	"AREA" VARCHAR2(10 BYTE), 
	"ADDRESS" VARCHAR2(50 BYTE), 
	"BIRTHDAY" DATE, 
	"GENDER" VARCHAR2(1 BYTE), 
	"KNOW" VARCHAR2(100 BYTE), 
	"OCCUPATION" VARCHAR2(50 BYTE), 
	"EPAPER" NUMBER(1,0), 
	"NICKNAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "TEA10103"."MEMBER"."EMAIL" IS '電子信箱';
   COMMENT ON COLUMN "TEA10103"."MEMBER"."PASSWORD" IS '密碼';
   COMMENT ON COLUMN "TEA10103"."MEMBER"."NAME" IS '姓名';
   COMMENT ON COLUMN "TEA10103"."MEMBER"."PHONE" IS '行動電話';
   COMMENT ON COLUMN "TEA10103"."MEMBER"."CITY" IS '縣市別';
   COMMENT ON COLUMN "TEA10103"."MEMBER"."AREA" IS '郵遞區域';
   COMMENT ON COLUMN "TEA10103"."MEMBER"."ADDRESS" IS '地址';
   COMMENT ON COLUMN "TEA10103"."MEMBER"."BIRTHDAY" IS '生日';
   COMMENT ON COLUMN "TEA10103"."MEMBER"."GENDER" IS '性別';
   COMMENT ON COLUMN "TEA10103"."MEMBER"."KNOW" IS '如何得知本站';
   COMMENT ON COLUMN "TEA10103"."MEMBER"."OCCUPATION" IS '職業';
   COMMENT ON COLUMN "TEA10103"."MEMBER"."EPAPER" IS '是否訂閱電子報';
   COMMENT ON COLUMN "TEA10103"."MEMBER"."NICKNAME" IS '暱稱';
REM INSERTING into TEA10103.BOOKING
SET DEFINE OFF;
REM INSERTING into TEA10103.CARD
SET DEFINE OFF;
REM INSERTING into TEA10103.EMPWORKDATE
SET DEFINE OFF;
REM INSERTING into TEA10103.HISTORYCARDDATA
SET DEFINE OFF;
REM INSERTING into TEA10103.HOROSCOPE
SET DEFINE OFF;
REM INSERTING into TEA10103.MANAGER
SET DEFINE OFF;
REM INSERTING into TEA10103.MEMBER
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index BOOKING_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEA10103"."BOOKING_PK1" ON "TEA10103"."BOOKING" ("SERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MANAGER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEA10103"."MANAGER_PK" ON "TEA10103"."MANAGER" ("SERIAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HOROSCOPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEA10103"."HOROSCOPE_PK" ON "TEA10103"."HOROSCOPE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HISTORYCARDDATA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEA10103"."HISTORYCARDDATA_PK" ON "TEA10103"."HISTORYCARDDATA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEA10103"."CARD_PK" ON "TEA10103"."CARD" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger BOOKING_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TEA10103"."BOOKING_TRG" 
BEFORE INSERT ON BOOKING 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING THEN
      SELECT SEQ_BOOKING_SER.NEXTVAL INTO :NEW.SERID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "TEA10103"."BOOKING_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table HISTORYCARDDATA
--------------------------------------------------------

  ALTER TABLE "TEA10103"."HISTORYCARDDATA" ADD CONSTRAINT "HISTORYCARDDATA_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEA10103"."HISTORYCARDDATA" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."HISTORYCARDDATA" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MANAGER
--------------------------------------------------------

  ALTER TABLE "TEA10103"."MANAGER" MODIFY ("SERIAL" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."MANAGER" ADD CONSTRAINT "MANAGER_PK" PRIMARY KEY ("SERIAL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEA10103"."MANAGER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."MANAGER" MODIFY ("ACCOUNT" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."MANAGER" MODIFY ("PASSWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CARD
--------------------------------------------------------

  ALTER TABLE "TEA10103"."CARD" ADD CONSTRAINT "CARD_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEA10103"."CARD" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."CARD" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HOROSCOPE
--------------------------------------------------------

  ALTER TABLE "TEA10103"."HOROSCOPE" ADD CONSTRAINT "HOROSCOPE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEA10103"."HOROSCOPE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPWORKDATE
--------------------------------------------------------

  ALTER TABLE "TEA10103"."EMPWORKDATE" MODIFY ("EMPID" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."EMPWORKDATE" MODIFY ("WDATE" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."EMPWORKDATE" MODIFY ("WTIME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOKING
--------------------------------------------------------

  ALTER TABLE "TEA10103"."BOOKING" MODIFY ("SERID" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."BOOKING" ADD CONSTRAINT "BOOKING_PK" PRIMARY KEY ("SERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEA10103"."BOOKING" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."BOOKING" MODIFY ("EMPID" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."BOOKING" MODIFY ("BDATE" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."BOOKING" MODIFY ("BTIMES" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "TEA10103"."MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."MEMBER" ADD PRIMARY KEY ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TEA10103"."MEMBER" MODIFY ("EPAPER" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "TEA10103"."MEMBER" MODIFY ("PHONE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOOKING
--------------------------------------------------------

  ALTER TABLE "TEA10103"."BOOKING" ADD CONSTRAINT "BOOKING_FK1" FOREIGN KEY ("EMPID")
	  REFERENCES "TEA10103"."MANAGER" ("SERIAL") ENABLE;
  ALTER TABLE "TEA10103"."BOOKING" ADD CONSTRAINT "BOOKING_FK2" FOREIGN KEY ("USERID")
	  REFERENCES "TEA10103"."MEMBER" ("EMAIL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPWORKDATE
--------------------------------------------------------

  ALTER TABLE "TEA10103"."EMPWORKDATE" ADD CONSTRAINT "EMPWORKDATE_FK1" FOREIGN KEY ("EMPID")
	  REFERENCES "TEA10103"."MANAGER" ("SERIAL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HISTORYCARDDATA
--------------------------------------------------------

  ALTER TABLE "TEA10103"."HISTORYCARDDATA" ADD CONSTRAINT "HISTORYCARDDATA_FK1" FOREIGN KEY ("EAMIL")
	  REFERENCES "TEA10103"."MEMBER" ("EMAIL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MANAGER
--------------------------------------------------------

  ALTER TABLE "TEA10103"."MANAGER" ADD CONSTRAINT "FK_MANAGER_EMAIL" FOREIGN KEY ("EMAIL")
	  REFERENCES "TEA10103"."MEMBER" ("EMAIL") ENABLE;
