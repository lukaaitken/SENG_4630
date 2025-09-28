-- Luka Aitken T00663672
-- SENG 4630
with Stack; use Stack;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package Queue is
   subtype Queue_Index is Natural range 1 .. 10;
   type Queue_Type is private;

   procedure Enqueue(Q : in out Queue_Type; Val : Integer);
   procedure Dequeue(Q : in out Queue_Type; Val : out Integer);
   function First(Q : Queue_Type) return Integer;
   function Last(Q : Queue_Type) return Integer;
   function Length(Q : Queue_Type) return Integer;
   function Is_Full(Q : Queue_Type) return Boolean;
   procedure Clear(Q : in out Queue_Type);
   procedure Print_Queue(Q : Queue_Type);
   procedure reversequeue(Q: in out Queue_Type); 

private
   type Content_Type is array(Queue_Index) of Integer;
   type Queue_Type is record
      Data  : Content_Type;
      Front : Natural := 1;
      Rear  : Natural := 0;
      Count : Natural := 0;
   end record;
end Queue;



