MODULE Ch1 EXPORTS Main;

IMPORT IO,SIO;

VAR
  A1:ARRAY[0..4] OF INTEGER := ARRAY OF INTEGER{1,2,5,3,4};
  A2:ARRAY[0..4] OF INTEGER := ARRAY OF INTEGER{4,6,7,8,9};
  A3:ARRAY[0..4] OF INTEGER := ARRAY OF INTEGER{1,3,5,7,9};
  A4:ARRAY[0..4] OF INTEGER := ARRAY OF INTEGER{0,2,4,6,8};

PROCEDURE DisjointSets(VAR A1,A2:ARRAY OF INTEGER):BOOLEAN =
  VAR
    Hash:ARRAY[0..9] OF INTEGER := ARRAY[0..9] OF INTEGER{0,..};
  BEGIN
    FOR I := FIRST(A1) TO LAST(A1) DO
      INC(Hash[A1[I]]);
      INC(Hash[A2[I]]);
    END;
    FOR I := FIRST(Hash) TO LAST(Hash) DO
      IF Hash[I] > 1 THEN RETURN FALSE END;
    END;
    RETURN TRUE
  END DisjointSets;

BEGIN
  SIO.PutBool(DisjointSets(A1,A2)); IO.Put("\n");
  SIO.PutBool(DisjointSets(A3,A4)); IO.Put("\n");
END Ch1.

