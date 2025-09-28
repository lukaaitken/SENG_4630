-- Luka Aitken T00663672
-- SENG 4630
with Queue; use Queue;
with Stack;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
   Q : Queue_Type;
   Val : Integer;
begin
   Put_Line("Task 1:");

   Enqueue(Q, 10);
   Enqueue(Q, 20);
   Enqueue(Q, 30);
   Enqueue(Q, 40);
   Print_Queue(Q);

   Put_Line ("First element: " & Integer'Image (First (Q)));
   Put_Line ("Last element: " & Integer'Image (Last (Q)));

   Dequeue (Q, Val);
   Put_Line ("Dequeued element: " & Integer'Image (Val));

   Put_Line ("Queue length: " & Integer'Image (Length (Q)));

   if Is_Full (Q) then
      Put_Line ("Queue is full");
   else
      Put_Line ("Queue is not full");
   end if;

   Clear (Q);
   Put_Line ("Queue cleared");
   Put_Line ("Queue length after clear: " & Integer'Image (Length (Q)));


   Put_Line("");
   Put_Line("Task 2:");
   Enqueue(Q, 10);
   Enqueue(Q, 20);
   Enqueue(Q, 30);
   Enqueue(Q, 40);
   Print_Queue(Q);
   Put_Line("Reversing the queue...");
   reversequeue(Q);
   Print_Queue(Q);
end Main;



