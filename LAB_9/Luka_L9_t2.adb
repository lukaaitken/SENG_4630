-- Name: Luka Aitken
-- Student ID: T00663672
-- Lab 9: Task 2

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Luka_L9_t2 is
   type Int_Array is array (Positive range <>) of Integer;

   procedure Get_Numbers(A : out Int_Array) is
   begin
      for I in A'Range loop
         begin
            Get(A(I));
         exception
            when Constraint_Error =>
               Put_Line("Invalid input");
         end;
      end loop;
   end Get_Numbers;

   procedure Show_Numbers(A : Int_Array) is
   begin
      for I in A'Range loop
         Put(Integer'Image(A(I)) & " ");
      end loop;
      New_Line;
   end Show_Numbers;

   function Count_Surpassers(A : Int_Array) return Int_Array is
      Counts : Int_Array(A'Range);
   begin
      for I in A'Range loop
         Counts(I) := 0;
         for J in I + 1 .. A'Last loop
            if A(J) > A(I) then
               Counts(I) := Counts(I) + 1;
            end if;
         end loop;
      end loop;
      return Counts;
   end Count_Surpassers;

   N : Positive;
begin
   begin
      Put("Enter size of the array: ");
      Get(N);
   exception
      when Constraint_Error =>
         Put_Line("Invalid size");
   end;

   declare
      Arr : Int_Array(1..N);
   begin
      Put_Line("Enter elements of the array:");
      Get_Numbers(Arr);

      declare
         Surpasser_Results : Int_Array(Arr'Range);
      begin
         Surpasser_Results := Count_Surpassers(Arr);

         Put_Line("Surpasser counts:");
         Show_Numbers(Surpasser_Results);
      end;
   end;
end Luka_L9_t2;
