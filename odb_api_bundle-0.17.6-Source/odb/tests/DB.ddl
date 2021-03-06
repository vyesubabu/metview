// Database DB: file DB.ddl

SET $mdi = 2147483647;

CREATE TABLE hdr AS (
  seqno   pk1int,
  date    YYYYMMDD,
  time    HHMMSS,
  statid  string,
  lat     pk9real,
  lon     pk9real,
  body   @LINK
);

CREATE TABLE body AS (
  entryno   pk1int,
  varno     pk1int,
  press     pk9real,
  obsvalue  pk9real,
  depar     pk9real,
  obs_error pk9real,
  bias      pk9real
);
