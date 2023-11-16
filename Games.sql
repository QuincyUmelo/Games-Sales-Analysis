SELECT * FROM games.games;

select Genre, count(Genre)
from games
group by Genre
order by count(Genre) desc
;

select Genre, count(Genre), ((count(Genre) / 16598) * 100) as Percentage
from games
group by Genre
order by count(Genre) desc
;

select Genre, sum(Global_Sales)
from games
group by Genre
order by sum(Global_Sales) desc;

select Publisher, sum(Global_Sales)
from games
group by Publisher
order by sum(Global_Sales) desc
limit 10;

select Name_, sum(Global_Sales)
from games
group by Name_
order by sum(Global_Sales) desc
limit 10;

select Year_, sum(Global_Sales)
from games
group by Year_
order by sum(Global_Sales) desc;

select Publisher, sum(Global_Sales), Year_
from games
where Year_<>"N/A"
group by Publisher, Year_
order by Year_ desc;

select DISTINCT Year_
from games
where Year_<>"N/A"
Order by Year_;

select distinct Year_, max(Global_Sales)
from games
where Year_<>"N/A"
group by Year_
order by Year_ desc;

select Name_, Year_
from games
where Global_Sales in (select max(Global_Sales)
from games
where Year_<>"N/A"
);
