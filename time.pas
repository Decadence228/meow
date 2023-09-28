﻿{
Добавьте новый файл time.pas, в котором реализуйте функционал проверки введённого года на високосность
(Високосным считается год, делящийся на 4, за исключением тех годов, которые делятся на 100 и не делятся на 400).
Сделайте коммит и запушьте изменения.
}

begin
  var year := ReadInteger('Введите год:');
  Assert(year > 0); //https://ru.wikipedia.org/wiki/0_%D0%B3%D0%BE%D0%B4  
  {
  Нулевой год и «нулевой год до н. э.» отсутствует в григорианском и юлианском календарях.
  Это связано с отсутствием понятия математического нуля у европейцев в VI веке, на момент введения отсчёта лет от новой эры
  }
  if ((year mod 4 = 0) and (year mod 100 <> 0)) or (year mod 400 = 0) then 
    Println($'Год под номером {year} високосный!')
  else Println($'Год {year} не високосный, приходите через год');
end.

{
logzzzz

Введите год: 4
Год под номером 4 високосный! 

Введите год: 1000
Год 1000 не високосный, приходите через год 

Введите год: 1200
Год под номером 1200 високосный! 
}