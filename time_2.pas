﻿{
Добавьте новый файл time.pas, в котором реализуйте функционал проверки введённого года на високосность
(Високосным считается год, делящийся на 4, за исключением тех годов, которые делятся на 100 и не делятся на 400).
Сделайте коммит и запушьте изменения.
Измените код в файле time.pas так, чтобы по номеру года программа печатала количество дней в этом году.
}

begin
  var year := ReadInteger('Введите год:');
  Assert(year > 0); //https://ru.wikipedia.org/wiki/0_%D0%B3%D0%BE%D0%B4  
  {
  Нулевой год и «нулевой год до н. э.» отсутствует в григорианском и юлианском календарях.
  Это связано с отсутствием понятия математического нуля у европейцев в VI веке, на момент введения отсчёта лет от новой эры
  }
  if ((year mod 4 = 0) and (year mod 100 <> 0)) or (year mod 400 = 0) then 
    Println($'В году под номером {year} 366 дней')
  else Println($'Год {year} имеет в себе 365');
end.

{
logzzzz

Введите год: 2004
В году под номером 2004 366 дней 

Введите год: 1000
Год 1000 имеет в себе 365 

Введите год: 1200
В году под номером 1200 366 дней 
}