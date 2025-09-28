-- Name: Luka Aitken
-- Student ID: T00663672

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Luka_t2 is
   type Integer_Array is array (1 .. 10) of Integer;
   Arr : Integer_Array;
   X   : Integer;
   Count : Integer := 0;

begin
Put_Line("Enter Value");
   for I in 1 .. 10 loop
      Get(Arr(I));
   end loop;

   Put_Line("Enter Number");
   Get(X);

   for K in 1 .. 10 loop  
      if Arr(K) = X then 
         Count := Count + 1;
      end if;
   end loop;
   
   Put("There are this many of that number: ");
   Put(Count);
   New_Line;
end Luka_t2;