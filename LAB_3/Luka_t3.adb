-- Name: Luka Aitken
-- Student ID: T00663672

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Luka_T3 is
    function Nearly_Equal(Num1: in Float; Num2: in Float) return Boolean is
        Smaller: Float;
    begin
        if Num1 < Num2 then
            Smaller := Num1;
        else 
            Smaller := Num2;
        end if;

        return abs(Num1 - Num2) <= 0.00001 * Smaller;
    end Nearly_Equal;

    Value1, Value2: Float;
    Are_Nearly_Equal: Boolean;

begin
    Put_Line("Enter the first number:");
    Get(Value1);
    Put_Line("Enter the second number:");
    Get(Value2);

    Are_Nearly_Equal := Nearly_Equal(Value1, Value2);

    if Are_Nearly_Equal then
        Put_Line("The numbers are nearly equal.");
    else
        Put_Line("The numbers are not nearly equal.");
    end if;

end Luka_T3;

