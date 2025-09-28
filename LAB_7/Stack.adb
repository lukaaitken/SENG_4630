-- Luka Aitken T00663672
-- SENG 4630
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Stack;

package body Stack is

   procedure Push(S : in out Stack_Type; Val : Integer) is
   begin
      if S.Top = 10 then
         Put_Line("Error: Stack is full.");
      else
         S.Top := S.Top + 1;
         S.Data(S.Top) := Val;
      end if;
   end Push;

   procedure Pop(S : in out Stack_Type; Val : out Integer) is
   begin
      if S.Top = 0 then
         Put_Line("Error: Stack is empty.");
         Val := 0;
      else
         Val := S.Data(S.Top);
         S.Top := S.Top - 1;
      end if;
   end Pop;

   function Is_Empty(S : Stack_Type) return Boolean is
   begin
      return S.Top = 0;
   end Is_Empty;

end Stack;
