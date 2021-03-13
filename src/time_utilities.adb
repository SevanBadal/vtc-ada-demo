package body Time_Utilities is

   procedure Increment_Hour(Time : in out Time_Value) is
   begin
      Time.Hour := Time.Hour + 1;
   end Increment_Hour;

   function Time_Init return Time_Value is (0,0);

end Time_Utilities;
