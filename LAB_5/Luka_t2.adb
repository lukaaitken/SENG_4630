-- Name: Luka Aitken
-- Student ID: T00663672

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure lab5_2 is
   type Date is record
      Day   : Integer;
      Month : Integer;
      Year  : Integer;
   end record;

   type Student is record
      Name     : Unbounded_String;
      Birthdate : Date;
   end record;

   type Student_Array is array (1..3) of Student;
   People : Student_Array := (
      (Name => To_Unbounded_String("Luka"), Birthdate => (Day => 21, Month => 08, Year => 1900)),
      (Name => To_Unbounded_String("Gary"), Birthdate => (Day => 01, Month => 01, Year => 1911)),
      (Name => To_Unbounded_String("Manny"), Birthdate => (Day => 10, Month => 11, Year => 1981))
   );

   procedure Display_Student(S : Student) is
   begin
      Put_Line("Name: " & To_String(S.Name));
      Put_Line("Birth Day: " & Integer'Image(S.Birthdate.Day));
      Put_Line("Birth Month: " & Integer'Image(S.Birthdate.Month));
      Put_Line("Birth Year: " & Integer'Image(S.Birthdate.Year));
   end Display_Student;

begin
   for I in People'Range loop
      if People(I).Birthdate.Year >= 1980 then
         Put_Line("First student born on or after January 1, 1980 (Index " & Integer'Image(I) & "):");
         Display_Student(People(I));
         exit;
      end if;
   end loop;
end lab5_2;



