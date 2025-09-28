-- Luka Aitken
--T00663672
--Task 2
package body Luka_Task2 is
    function Add (C1, C2 : Complex) return Complex is
    begin
        return (Complex'(
            Real_Part  => C1.Real_Part + C2.Real_Part,
            Imag_Part  => C1.Imag_Part + C2.Imag_Part
        ));
    end Add;
    function Multiply (C1, C2 : Complex) return Complex is
    begin
        return (Complex'(
            Real_Part  => (C1.Real_Part * C2.Real_Part) - (C1.Imag_Part * C2.Imag_Part),
            Imag_Part  => (C1.Real_Part * C2.Imag_Part) + (C1.Imag_Part * C2.Real_Part)
        ));
    end Multiply;

end Luka_Task2;
