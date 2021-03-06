﻿CREATE TABLE client (
  ID int UNSIGNED NOT NULL AUTO_INCREMENT,
  NAME varchar(50) NOT NULL DEFAULT 'ENTER NAME!!!',
  FUNCTION varchar(50) NOT NULL DEFAULT 'ENTER FUNCTION!!!',
  NUM_OF_ISSUES int UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (ID)
);
CREATE TABLE issue (
  ID int UNSIGNED NOT NULL AUTO_INCREMENT,
  TEXT text NOT NULL,
  DESCRIPTION varchar(50) NOT NULL DEFAULT 'ENTER DESCRIPTION!!!',
  DATE_OF_CREATE date NOT NULL,
  DATE_OF_END date NOT NULL,
  STATUS tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (ID)
);
CREATE TABLE user_issue (
  ID int UNSIGNED NOT NULL AUTO_INCREMENT,
  CLIENT_ID int UNSIGNED NOT NULL,
  ISSUE_ID int UNSIGNED NOT NULL,
  PRIMARY KEY(ID),
  FOREIGN KEY (CLIENT_ID) REFERENCES client (ID),
  FOREIGN KEY (ISSUE_ID) REFERENCES issue (ID)
);
