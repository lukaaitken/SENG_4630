-- Luka Aitken
--T00663672
--Task 1
with Ada.Text_IO; use Ada.Text_IO;
with Gardening;

procedure Main_Gardening is
   procedure Print_Task(T : String) is
   begin
      Put_Line(T);
   end Print_Task;

   package My_Gardening is new Gardening (Print_Task);
begin
   My_Gardening.Do_Gardening(My_Gardening.Month_Type'Val(0)); 
end Main_Gardening;


