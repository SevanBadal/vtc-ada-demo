-- TODOs
-- 1. alter the package body so Pre and Post pass but Global and Depends fail
pragma SPARK_Mode(On);

package Simple_Math_Utilities is
   procedure Absolute(X : in out Integer) with
     Pre     => X > Integer'First,
     Post    => (if X'Old < 0 then X = -X'Old else X = X'Old),
     Global  => null,
     Depends => (X => X);
end Simple_Math_Utilities;
