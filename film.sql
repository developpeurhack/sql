-- response 01:
select nom, annéeNaiss from artiste where annéeNaiss < 1950;
-- response 02:
select titre from film where genre ='drame';
-- response 3
select * from role, film, artiste where role.idActeur = artiste.idArtiste and role.idFilm = film.idFilm and artiste.nom = 'willis' and artiste.prénom = 'bruce';
-- response 4
select artiste.nom, artiste.prénom from artiste, film where film.titre = 'memento' and artiste.idArtiste = film.idRéalisateur;
                    -- methode 2 :
SELECT artiste.nom, artiste.prénom FROM artiste INNER JOIN film ON film.idRéalisateur = artiste.idArtiste WHERE film.titre
= 'Memento';
-- response 5

select note from notation, film where film.idFilm = notation.idFilm and film.titre = "fargo";
                    -- methode 2 : 
SELECT note FROM notation INNER JOIN film ON film.idFilm = notation.idFilm WHERE titre = 'Fargo';
-- response 6 
select distinct artiste.nom , artiste.prénom from artiste inner join role on role.idActeur = artiste.idArtiste where role.
nomRôle ='chewbacca';

-- response 8

select artiste.nom, artiste.prénom from artiste   inner join role on role.idActeur = artiste.idArtiste  inner join film on role.idFilm = film.idFilm  where film.titre = 'sueurs froides';


-- response 9
select distinct titre from film  inner join notation on notation.idFilm = film.idFilm inner join internaute on internaute.email = notation.email;

--response 10




