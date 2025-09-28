-- Luka Aitken
--T00663672
--Task 1
generic
   with procedure Perform_Task(T : String);
package Gardening is
   type Month_Type is (January, February, March, April, May, June,
                       July, August, September, October, November, December);

   procedure Do_Gardening(M : Month_Type);
end Gardening;

