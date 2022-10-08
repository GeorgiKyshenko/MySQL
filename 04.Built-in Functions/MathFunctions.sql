-- division --
select 13 div 5,
 13 / 5,
 13 % 5;
 
 -- pow - степен --
 select pow(2,3);
 
 -- квадратен корен --
 select sqrt(9);
 
 -- конвертиране в броична система --
 select conv(5, 10, 2); -- от десетична в двоична --
 
 -- закръгляне --
select round(2.54673, 3); -- до три символа -- 
select floor(2.54673);
select ceil(2.54673);

-- знак --
select sign(-5);

select ceil(rand() * 100) mod 7;

select round(sum(`cost`), 2)
from `books`;
