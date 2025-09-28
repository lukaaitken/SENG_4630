-- Luka Aitken
--T00663672
--Task 2
with Ada.Text_IO; use Ada.Text_IO;
with Luka_Task2; use Luka_Task2;

procedure Luka_Task2_Main is
    C1, C2, C3 : Complex;
begin
    C1.Real_Part := 3.0;
    C1.Imag_Part := 4.0;
    C2.Real_Part := 1.0;
    C2.Imag_Part := 2.0;

    C3 := Add(C1, C2);
    Put_Line("Sum: " & Float'Image(C3.Real_Part) & " + " & Float'Image(C3.Imag_Part) & "i");

    C3 := Multiply(C1, C2);
    Put_Line("Product: " & Float'Image(C3.Real_Part) & " + " & Float'Image(C3.Imag_Part) & "i");
end Luka_Task2_Main;
