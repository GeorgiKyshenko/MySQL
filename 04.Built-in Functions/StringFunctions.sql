select * from books;

-- substring --
select `title` from books
where substring(`title`, 1,3) = "The";
-- еквивалент на --
select `title` from books
where substring(`title` FROM 1 FOR 3) = "The";

-- replace --
select replace(`title`, "The", "***") as `title`
from `books`
where substring(`title`, 1,3) = "The";

-- trim --
select ltrim("   Trimmed   ") as `lTrim`;
select rtrim("   right trim     ") as `rTrim`;
select rtrim(ltrim("   Trimmed   ")) as `LandRTrim`;

-- lenght -- 
select `title`, length(`title`), char_length(`title`)
from `books`;

-- upper and lower --
select `title` from `books`
where upper(substring(`title`, 1, 5)) = "HARRY"; 

-- reverse --
select reverse("Harry");
select repeat("harry", 4);

-- locate --
select locate("Ha", "Harry");
select locate("Ha", "Harry", 2); -- започващо от 2рият символ --

-- search  --
select `title`
from `books`
where locate("@", `title`) > 0;

-- insert text --
select insert("Harry Potter", 1, 0, "The "); -- ако не искаме да трием нищо подаваме 0 като параметър --

 
 




