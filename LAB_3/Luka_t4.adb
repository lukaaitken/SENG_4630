-- Name: Luka Aitken
-- Student ID: T00663672

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure t4 is
   Count : Integer := 0;
begin
   for I in 0..100 loop
      if I mod 3 = 0 then
         Put_Line("Number: " & Integer'Image(I));
         Count := Count + 1;
      end if;
   end loop;
   Put_Line("Total count: " & Integer'Image(Count));
end t4;

