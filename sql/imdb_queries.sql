select m.name from movies m where m.`year` = 1995

select count(*) from actors a join roles r on a.id = r.actor_id  join movies m join roles r2 on m.id = r2.movie_id where m.name = 'Lost in Translation';

select a.first_name,  a.last_name from actors a join roles r on a.id = r.actor_id  join movies m join roles r2 on m.id = r2.movie_id where m.name = 'Lost in Translation' group by a.id;

select * from directors d join movies_directors md on d.id = md.director_id join movies m on md.movie_id = m.id where m.name like 'Fight Club';

select m.name from  directors d join movies_directors md on md.director_id = d.id join movies m on m.id = md.movie_id where d.first_name like 'clint' and d.last_name like 'eastwood';

select d.first_name, d.last_name from directors d join directors_genres dg on d.id = dg.director_id where dg.genre = 'horror';

select a.first_name, a.last_name from directors d join movies_directors md on d.id = md.director_id join movies m on m.id = md.movie_id join roles r on r.movie_id = m.id join actors a on r.actor_id = a.id where d.first_name = 'Christopher' and d.last_name = 'Nolan';