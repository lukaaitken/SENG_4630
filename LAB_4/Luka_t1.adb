-- Name: Luka Aitken
-- Student ID: T00663672

with Ada.Text_IO; use Ada.Text_IO;

procedure Luka_t1 is
   N : constant Integer := 10;
   type Int_Array is array (0 .. N) of Integer;
   F : Int_Array;

begin
   F(0) := 0;
   F(1) := 1;

   for I in 2 .. N loop
      F (I) := F (I - 1) + F (I - 2);
   end loop;

   for I in 0 .. N loop
      Put (Integer'Image (F(I)) & " ");
   end loop;

end Luka_t1;
