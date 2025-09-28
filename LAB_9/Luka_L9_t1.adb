-- Name: Luka Aitken
-- Student ID: T00663672
-- Lab 9: Task 1

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Luka_L9_t1 is
   type Int_Array is array (Positive range <>) of Integer;

   procedure Read_Array(A : out Int_Array) is
   begin
      for I in A'Range loop
         begin
            Get(A(I));
         exception
            when Constraint_Error =>
               Put_Line("Invalid input");
         end;
      end loop;
   end Read_Array;

   procedure Print_Array(A : Int_Array) is
   begin
      for I in A'Range loop
         Put(Integer'Image(A(I)));
      end loop;
      New_Line;
   end Print_Array;

   procedure Reorder(First : in out Int_Array; Second : in Int_Array) is
      Count : array(Integer range -1000..1000) of Integer := (others => 0);
      Index : Natural := 1;
      Sorted_First : Int_Array(1..First'Length);
   begin
      for I in First'Range loop
         Count(First(I)) := Count(First(I)) + 1;
      end loop;

      for I in Second'Range loop
         if Count(Second(I)) > 0 then
            for J in 1 .. Count(Second(I)) loop
               Sorted_First(Index) := Second(I);
               Index := Index + 1;
            end loop;
            Count(Second(I)) := 0;
         end if;
      end loop;

      declare
         Temp_Array : Int_Array(1..First'Length);
         Temp_Index : Natural := 1;
      begin
         for I in Count'Range loop
            if Count(I) > 0 then
               for J in 1 .. Count(I) loop
                  Temp_Array(Temp_Index) := I;
                  Temp_Index := Temp_Index + 1;
               end loop;
            end if;
         end loop;

         for I in 1 .. Temp_Index - 1 loop
            for J in I + 1 .. Temp_Index - 1 loop
               if Temp_Array(I) > Temp_Array(J) then
                  declare
                     Temp_Value : Integer := Temp_Array(I);
                  begin
                     Temp_Array(I) := Temp_Array(J);
                     Temp_Array(J) := Temp_Value;
                  end;
               end if;
            end loop;
         end loop;

         for I in 1 .. Temp_Index - 1 loop
            Sorted_First(Index) := Temp_Array(I);
            Index := Index + 1;
         end loop;
      end;

      First := Sorted_First;
   end Reorder;

   N, M : Positive;
begin
   begin
      Put("Enter size of first array: ");
      Get(N);
      Put("Enter size of second array: ");
      Get(M);
   exception
      when Constraint_Error =>
         Put_Line("Invalid size input");
   end;

   declare
      First_Array  : Int_Array(1..N);
      Second_Array : Int_Array(1..M);
   begin
      Put_Line("Enter elements of first array:");
      Read_Array(First_Array);
      Put_Line("Enter elements of second array:");
      Read_Array(Second_Array);

      begin
         Reorder(First_Array, Second_Array);
      exception
         when others =>
            Put_Line("Error with reordering.");
      end;

      Put_Line("Reordered array:");
      Print_Array(First_Array);
   end;
end Luka_L9_t1;


