program Number_change2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
 num, i, j, k, max, changed_num, mult : Word;
 multArray: Array[0..15] of Word;

begin
   Write('Enter number: ');
   Readln(num);

   max := 32768;
   for i := 0 to 15 do             // переводим в двоичную систему счисления
   begin                           // введённое число
      multArray[i] := num div max;
      num := num - multArray[i] * max;
      max := max div 2;
   // Writeln (multArray[i]);
   end;

   changed_num := 0;
   mult := 128;

   for j := 0 to 7 do     //это был старший байт, стал младшим
   begin
    //Write (multArray[j]);
    //Write ('  *  ');
   //Writeln (mult);
      changed_num := changed_num + mult * multArray[j];
      mult := mult div 2;
   end;

   mult := 32768;
   for k := 8 to 15 do     //это был младший байт, стал старшим
   begin
    //Write (multArray[k]);
   // Write ('  *  ');
   // Writeln (mult);
      changed_num := changed_num + mult * multArray[k];
      mult := mult div 2;
   end;

   Write('Number after byte swap is  ');
   Writeln (changed_num);

   Readln(max);
end.
