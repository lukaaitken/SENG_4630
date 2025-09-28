-- Luka Aitken T00663672
-- SENG 4630
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package Stack is
   type Stack_Type is private;

   procedure Push(S : in out Stack_Type; Val : Integer);
   procedure Pop(S : in out Stack_Type; Val : out Integer);
   function Is_Empty(S : Stack_Type) return Boolean;

private
   type Content_Type is array (1 .. 10) of Integer;
   type Stack_Type is record
      Top    : Natural := 0;
      Data   : Content_Type;
   end record;
end Stack;

