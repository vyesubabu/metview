//
//-- ODB/SQL file 'obstatfc_8.sql'
//
//   Last updated:  06/09/10
//   By          :  Gabor Radnoti 

READONLY;

SET $tslot = -1;
SET $kset = 0;

CREATE VIEW obstatfc_8 AS
  SELECT
    seqno, entryno, 
    an_depar,
    fc_depar UPDATED,
    fc_step UPDATED,
    FROM   timeslot_index, index, hdr, body, fcdiagnostic, fcdiagnostic_body[min(8,$nmxfcdiag)]
    WHERE  (($tslot == -1 AND timeslot@timeslot_index > 0) OR (timeslot@timeslot_index == $tslot))
    AND  kset = $kset

;
