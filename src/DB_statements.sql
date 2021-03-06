CREATE SEQUENCE item_id_seq START WITH 1;

create table items (
Item_ID NUMBER PRIMARY KEY,
Item_Type VARCHAR2(100),
Item_UOM VARCHAR2(20),
Price   NUMBER(2), 
Effective_From  DATE,
Effective_To DATE,
CREATED_DATE DATE,
CREATED_BY  VARCHAR2(20),
LAST_UPDATED_DATE DATE,
LAST_UPDATED_BY VARCHAR2(100)
);

COMMIT;

INSERT INTO 
ITEMS (Item_ID,Item_Type,Item_UOM,Price) 
VALUES (item_id_seq.NEXTVAL,'COW MILK','Lt',58);

/

POSTGRES DB

create table items (
Item_ID integer PRIMARY KEY,
Item_Type VARCHAR(100),
Item_Type_ID INTEGER,
Price   integer, 
Effective_From  DATE,
Effective_To DATE,
CREATED_DATE DATE,
CREATED_BY  VARCHAR(20),
LAST_UPDATED_DATE DATE,
LAST_UPDATED_BY VARCHAR(100)
);

select * from items;
CREATE SEQUENCE item_id_seq START WITH 1;

INSERT INTO 
ITEMS (Item_ID,Item_Type,Price) 
VALUES (nextval('item_id_seq'),'COW MILK',58);

COMMIT;

SELECT * FROM ITEMS;

CREATE SEQUENCE item_id_seq START WITH 1;
ALTER SEQUENCE item_id_seq RESTART WITH 2;  --to restart the seq
CREATE SEQUENCE item_type_id_seq START WITH 1;

ALTER TABLE ITEMS ADD Item_Type_ID INTEGER;

INSERT INTO 
ITEMS (Item_ID,Item_Type,Price, created_date, last_updated_date) 
VALUES (nextval('item_id_seq'),'ALMOND MILK',100, current_date, current_date); --for SYSDATE

COMMIT;

SELECT * FROM ITEMS;

CREATE SEQUENCE User_ID START WITH 1;

create table users (
User_ID integer PRIMARY KEY,
Social_Media_Name VARCHAR(100),
Social_Media_Email VARCHAR(100),
Social_Media_Type  VARCHAR(100),
Is_Admin Boolean,
signed_in VARCHAR(1),
Password text
);
ALTER TABLE users ADD signed_in VARCHAR(1);

ALTER TABLE USERS ADD column Password text;

SELECT * FROM USERS

CREATE SEQUENCE Change_ID START WITH 1000;

create table Change_Details (
Change_ID INTEGER PRIMARY KEY,
Item_ID INTEGER,
QTY FLOAT,
User_ID INTEGER,
Effective_From DATE,
Effective_To DATE
);

SELECT * FROM Change_Details

ALTER TABLE Change_Details
    ADD COLUMN Effective_From DATE,
    ADD COLUMN Effective_To DATE;

ALTER TABLE CHANGE_DETAILS
drop column change_date;

CREATE SEQUENCE Default_ID START WITH 1000;

create table Default_Details (
Default_ID INTEGER PRIMARY KEY,
Item_ID INTEGER,
Qty  FLOAT,
User_ID INTEGER,
Created_Date DATE,
Last_Updated_Date DATE,
qty FLOAT,
Effective_From DATE,
Effective_To DATE
);

SELECT * FROM Default_Details



ALTER TABLE default_details
    ADD COLUMN Effective_From DATE,
    ADD COLUMN Effective_To DATE;

ALTER TABLE users
    RENAME Social_Media_Username TO social_media_email;

ALTER TABLE default_details
    ADD COLUMN Effective_From DATE,
    ADD COLUMN Effective_To DATE;
	
INSERT INTO Default_Details VALUES (nextval('Default_ID'),
									1,2,1000,current_date,current_date,
									TO_DATE('05-04-22','DD-MM-YY'),TO_DATE('10-04-22','DD-MM-YY'))
INSERT INTO Default_Details VALUES (nextval('Default_ID'),
									2,2,1000,current_date,current_date,
									TO_DATE('11-04-22','DD-MM-YY'),TO_DATE('18-04-22','DD-MM-YY'))
INSERT INTO Default_Details VALUES (nextval('Default_ID'),
									1,3,1000,current_date,current_date,
									TO_DATE('11-04-22','DD-MM-YY'),TO_DATE('18-04-22','DD-MM-YY'))                                                                  


commit;

CREATE TABLE MILKMAN(
    milkman_id INTEGER PRIMARY KEY,
    milkman_shop VARCHAR(100),
    area VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    Created_Date DATE,
    Last_Updated_Date DATE
);

ALTER TABLE users
    ADD COLUMN milkman_id INTEGER REFERENCES milkman(milkman_id);