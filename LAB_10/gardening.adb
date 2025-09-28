-- Luka Aitken
--T00663672
--Task 1
with Ada.Text_IO; use Ada.Text_IO;
package body Gardening is
   procedure Do_Gardening(M : Month_Type) is
   begin
      case M is
         when December | January | February =>
            Perform_Task("Dig");
         when March | April | May =>
            Perform_Task("Sow");
         when June | July | August =>
            Perform_Task("Tend");
         when September | October | November =>
            Perform_Task("Harvest");
      end case;
   end Do_Gardening;
end Gardening;
