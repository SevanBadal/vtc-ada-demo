pragma SPARK_Mode(On);

package body Simple_Math_Utilities is

   procedure Absolute(X : in out Integer) is
   begin
      if X < 0 then
         X := -X;
      end if;
   end Absolute;

end Simple_Math_Utilities;
