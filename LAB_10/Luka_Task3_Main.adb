-- Luka Aitken
--T00663672
--Task 3
with Ada.Text_IO; use Ada.Text_IO;
with Luka_Task3;
with Ada.Float_Text_IO;

procedure Luka_Task3_Main is
   procedure Swap is new Luka_Task3.Swap_Float_Parts (Float);
   
   Test_Value : Float := 123.456;
begin
   Put("Before swap: ");
   Ada.Float_Text_IO.Put(Test_Value, Fore => 1, Aft => 3, Exp => 0);
   New_Line;
   
   Swap(Test_Value);
   
   Put("After swap:  ");
   Ada.Float_Text_IO.Put(Test_Value, Fore => 1, Aft => 3, Exp => 0);
   New_Line;
end Luka_Task3_Main;