-- Luka Aitken T00663672
-- SENG 4630
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Stack; use Stack;

package body Queue is

   procedure Enqueue(Q : in out Queue_Type; Val : Integer) is
   begin
      if Q.Count = Queue_Index'Last then
         Put_Line("Error: Queue is full.");
      else
         Q.Rear := (Q.Rear mod Queue_Index'Last) + 1;
         Q.Data(Q.Rear) := Val;
         Q.Count := Q.Count + 1;
      end if;
   end Enqueue;

   procedure Dequeue(Q : in out Queue_Type; Val : out Integer) is
   begin
      if Q.Count = 0 then
         Put_Line("Error: Queue is empty.");
         Val := 0;
      else
         Val := Q.Data(Q.Front);
         Q.Front := (Q.Front mod Queue_Index'Last) + 1;
         Q.Count := Q.Count - 1;
      end if;
   end Dequeue;

   function First(Q : Queue_Type) return Integer is
   begin
      if Q.Count = 0 then
         Put_Line("Queue is empty.");
         return 0;
      end if;
      return Q.Data(Q.Front);
   end First;

   function Last(Q : Queue_Type) return Integer is
   begin
      if Q.Count = 0 then
         Put_Line("Queue is empty.");
         return 0;
      end if;
      return Q.Data(Q.Rear);
   end Last;

   function Length(Q : Queue_Type) return Integer is
   begin
      return Q.Count;
   end Length;

   function Is_Full(Q : Queue_Type) return Boolean is
   begin
      return Q.Count = Queue_Index'Last;
   end Is_Full;

   procedure Clear(Q : in out Queue_Type) is
   begin
      Q.Front := 1;
      Q.Rear := 0;
      Q.Count := 0;
   end Clear;

   procedure Print_Queue(Q : Queue_Type) is
      I : Natural := Q.Front;
      Count : Integer := Q.Count;
   begin
      if Count = 0 then
         Put_Line("Queue is empty.");
         return;
      end if;

      Put("Queue: ");
      for J in 1 .. Count loop
         Put(Integer'Image(Q.Data(I)) & " ");
         I := (I mod Queue_Index'Last) + 1;
      end loop;
      New_Line;
   end Print_Queue;

   procedure reversequeue(Q : in out Queue_Type) is
      Stack1 : Stack.Stack_Type;
      Temp   : Integer;
   begin
      while Q.Count > 0 loop
         Dequeue(Q, Temp);
         Push(Stack1, Temp);
      end loop;

      while not Is_Empty(Stack1) loop
         Pop(Stack1, Temp);
         Enqueue(Q, Temp);
      end loop;
   end reversequeue;

end Queue;
