-- TODOs
-- 1. procedure for incrementing Time_Value.Minute
-- 2. remove invariant on Time_Value, create Integer subtype that makes sense for hr an min
-- 3. functions for getting Time_Value.Minute and Time_Value.Hour
-- 4. turn on SPARK, what does the prover find or not find?
package Time_Utilities is

   type Time_Value is private;

   procedure Increment_Hour(Time : in out Time_Value);

   function Time_Init return Time_Value;

private

   type Time_Value is record
      Hour, Minute : Integer := 0;
   end record
     with Type_Invariant => (Time_Value.Hour <= 23 and then Time_Value.Minute <= 59);

end Time_Utilities;
