-- Name: Luka Aitken
-- Student ID: T00663672

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure lab5_1 is
   type Matrix is array (1..3, 1..3) of Integer;
   
   A : Matrix := ((1, 2, 3), (4, 5, 6), (7, 8, 9));
   B : Matrix := ((9, 8, 7), (6, 5, 4), (3, 2, 1));
   C : Matrix := (others => (others => 0));

begin
   for I in C'Range(1) loop
      for J in C'Range(2) loop
         C(I, J) := 0;
         for K in A'Range(2) loop
            C(I, J) := C(I, J) + A(I, K) * B(K, J);
         end loop;
      end loop;
   end loop;

   Put_Line("Matrix C (A * B) =");
   for I in C'Range(1) loop
      for J in C'Range(2) loop
         Put(Integer'Image(C(I, J)) & " ");
      end loop;
      New_Line;
   end loop;

end lab5_1;

