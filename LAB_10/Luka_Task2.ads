-- Luka Aitken
--T00663672
--Task 2
package Luka_Task2 is
    type Complex is record
        Real_Part  : Float;
        Imag_Part  : Float;
    end record;
    function Add (C1, C2 : Complex) return Complex;
    function Multiply (C1, C2 : Complex) return Complex;
end Luka_Task2;
