-- Name: Luka Aitken
-- ID: T00663672

with Ada.Text_IO; 
use Ada.Text_IO;
with Ada.Float_Text_IO; 
use Ada.Float_Text_IO;
with Ada.Strings.Fixed; 
use Ada.Strings.Fixed;
with Ada.Integer_Text_IO; 
use Ada.Integer_Text_IO;

procedure luka_t2 is
    bubblearray : array (1 .. 10) of integer := (5, 3, 8, 6, 2, 9, 7, 1, 4, 0);
    n : Integer;

begin
    for i in 1 .. bubblearray'length-1 loop
        for j in 1 .. bubblearray'length-1 loop
            if bubblearray(j) > bubblearray(j+1) then
                n := bubblearray(j);
                bubblearray(j) := bubblearray(j+1);
                bubblearray(j+1) := n;
            end if;
        end loop;
    end loop;

    for s in bubblearray'Range loop
        Put(bubblearray(s)'Img & "  ");
    end loop;

end luka_t2;