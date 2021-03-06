//
//-- ODB/SQL file 'getactive_update_1.sql'
//
//   Last updated:  20-Jul-2006
//

READONLY;

SET $all = 1;
SET $pe = 0;

CREATE VIEW getactive_update_1 AS
  SELECT target, seqno, "/.*@update.*/"
    FROM index, hdr, update[1], body
   WHERE ( ($all = 1)
         OR ($all = 0 AND report_status.active@hdr = 1 AND datum_status.active@body = 1 AND distribtype IS NOT NULL) )
//   AND update_1.len > 0
//   AND update_1.len == body.len
;
