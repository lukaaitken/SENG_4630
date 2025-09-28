-- Name: Luka Aitken
-- ID: T00663672

with Ada.Text_IO; 
use Ada.Text_IO;
with Ada.Float_Text_IO; 
use Ada.Float_Text_IO;
with Ada.Strings.Fixed; 
use Ada.Strings.Fixed;

procedure luka_t1 is
   Score : Float;
   Grade : String(1..2);
begin
   Put("Enter score: ");
   Get(Score);

   if Score >= 90.0 and Score <= 100.0 then
      Grade := "A+";
   elsif Score >= 85.0 and Score <= 89.99 then
      Grade := "A ";
   elsif Score >= 80.0 and Score <= 84.99 then
      Grade := "A-";
   elsif Score >= 77.0 and Score <= 79.99 then
      Grade := "B+";
   elsif Score >= 73.0 and Score <= 76.99 then
      Grade := "B ";
   elsif Score >= 70.0 and Score <= 72.99 then
      Grade := "B-";
   elsif Score >= 65.0 and Score <= 69.99 then
      Grade := "C+";
   elsif Score >= 60.0 and Score <= 64.99 then
      Grade := "C ";
   elsif Score >= 55.0 and Score <= 59.99 then
      Grade := "C-";
   elsif Score >= 50.0 and Score <= 54.99 then
      Grade := "D ";
   elsif Score >= 0.0 and Score <= 49.99 then
      Grade := "F ";
   else
      Put_Line("Invalid");
      return;
   end if;

   Put_Line("Grade = " & Grade);
end luka_t1;
