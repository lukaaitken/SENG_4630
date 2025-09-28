with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Task1_Luka is

   function GCD (A, B : Integer) return Integer
   with
      Pre  => ((A > 0 and B > 0) and (A <= 2147483647 and B <= 2147483647)),
      Post => (GCD'Result <= A and GCD'Result <= B)
   is
      X : Integer := A;
      Y : Integer := B;

   begin
      while Y /= 0 loop
         declare
            Temp : Integer := X mod Y;
         begin
            X := Y;
            Y := Temp;
         end;
      end loop;
      return X;
   end GCD;

   A, B : Integer;
begin
   Put("Enter first number: ");
   Get(A);
   Put("Enter second number: ");
   Get(B);
   Put_Line("GCD is: " & Integer'Image(GCD(A, B)));
   
end Task1_Luka;

