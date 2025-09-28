-- Luka Aitken
--T00663672
--Task 3
package body Luka_Task3 is
   procedure Swap_Float_Parts (X : in out Float_Type) is
      Whole_Part : Float_Type;
      Frac_Part  : Float_Type;
      Temp       : Float_Type;
   begin
      Whole_Part := Float_Type'Truncation(X);
      
      Frac_Part := X - Whole_Part;

      Temp := Frac_Part * 1000.0;
      X := Float_Type'Truncation(Temp) + 
           (Whole_Part / 1000.0);
   end Swap_Float_Parts;
end Luka_Task3;