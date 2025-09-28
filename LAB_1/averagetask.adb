with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Float_Text_IO;

use Ada.Text_IO;
use Ada.Integer_Text_IO;
use Ada.Float_Text_IO;

procedure Average is
    A: Integer;
    B: Integer;
    M: Float;
begin
    Put("Enter two integers");
    Get(A);
    Get(B);
    New_Line;
    M:=Float(A+B)/2.0;
    Put("The average of two numbers");
    Put(M,1,2,0);
    New_Line;
end Average;