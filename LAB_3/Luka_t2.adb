-- Name: Luka Aitken
-- Student ID: T00663672

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Luka_t2 is
    procedure SwapNum(X : in out Integer; Y : in out Integer) is
        Temp : Integer;
    begin
        Temp := X;
        X := Y;
        Y := Temp;
    end SwapNum;

    Int1, Int2 : Integer;

begin
    Put_Line("Enter an integer.");
    Get(Int1);
    Put_Line("Enter another integer.");
    Get(Int2);

    SwapNum(Int1, Int2);

    Put_Line("Swapping Parameters:");
    Put("Int1 = "); Put(Int1); New_Line;
    Put("Int2 = "); Put(Int2); New_Line;
end Luka_t2;
