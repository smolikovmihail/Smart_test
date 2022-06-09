program Wizard_find;

{$APPTYPE CONSOLE}

// Хитрый волшебник, как и я, заметил, что если определить разность веса отобранных монет
// и того веса, который должен был получиться, а полученный результат разделить на разность
// веса фальшивой и настоящей монет, то получиться номер корзины, в которой монеты 
// фальшивые. 

uses
  SysUtils;

   var
    coin_weight, weight_difference, sum_weight, control_weight,
     num_basket: Real;
    i, num_of_baskets : Integer;

begin


    begin
        Writeln ('Enter number of baskets ');
        Read (num_of_baskets);
        Writeln ('Enter the weight of the coin (not counterfeit): ');
        Read (coin_weight);
        Writeln ('Enter the difference between the weight of the real and counterfeit coins ');
        Read (weight_difference);
        Writeln ('Enter the weight of selected coins ');
        Read (sum_weight);

       control_weight := 0;
       for i := 1 to num_of_baskets - 1 do
       begin
          Writeln (control_weight);
          control_weight := control_weight + i * coin_weight;
       end;
           Writeln (control_weight);
        if control_weight <> sum_weight then
          begin
            num_basket := (control_weight - sum_weight) / weight_difference;
            Write('Counterfeit coins are in basket number  ' );
            Writeln (Trunc(num_basket));
            Readln;
          end

          else
          begin
             Write('Counterfeit coins are in basket number  ' );
             Writeln (num_of_baskets);
             Readln;
          end;

    end;
      Readln(i);
end.
 
