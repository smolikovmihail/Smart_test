program Number_change1;

{$APPTYPE CONSOLE}
// меняем байты местами готовой функцией
// это как-то подозрительно 
// поэтому смотрите второе решение


uses
  SysUtils;

var
    num, changed_num : Word;

begin
     Writeln ('Enter number  ');
     Read (num);
     changed_num := Swap(num);
     Write ('Number after byte swap is  ');
     Writeln (changed_num);
     Readln (num);
end.
