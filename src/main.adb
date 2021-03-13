-- TODOs
-- look at the two specifications files (simple_math_utilities.adb and time_utilties.ads)
with Ada.Integer_Text_IO;
with Simple_Math_Utilities;
with Time_Utilities;

procedure Main is
   X    : Integer                   := -2;
   Time : Time_Utilities.Time_Value := Time_Utilities.Time_Init;
begin
   Simple_Math_Utilities.Absolute(X);

   for I in 0 .. 22 loop
      Time_Utilities.Increment_Hour(Time); -- what happens if this loop where to iterate one more time?
   end loop;
end Main;
