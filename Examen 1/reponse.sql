-- ex_01.sql
-- show databases;

-- ex_02.sql
-- describe film;

-- ex_03.sql
-- SELECT DATE_FORMAT(NOW(), '%y-%m-%d') as "aujourd'hui";

-- ex_04.sql
-- select * from  reduction order by  pourcentage_reduc ASC, nom DESC;
 
-- ex_05.sql
-- select titre as  "Titre des 12 premiers films" from film limit 12;

-- ex_06.sql
-- select count(numero_salle ) * 3 as "3 fois le nombre total de salles from salle" from salle ;
      
-- ex_07.sql
-- select UPPER(nom)  as "TOUT LES GENRES" from genre ;
   
-- ex_08.sql
-- select nom  as "Nom de l'abonnement", prix as "Prix" from abonnement order by prix desc limit 1;
   
-- ex_09.sql
-- select duree_min  as "Durée du film le plus court" from film where duree_min  is  not null and  duree_min != 0 order by duree_min limit 1;

-- ex_10.sql
 -- select id_film as "Identifiant"  from film where titre  like "%Tard%";

-- ex_11.sql
-- SELECT genre.nom as "Nom du genre", count(film.id_film) as "Nombre de films" FROM genre
-- INNER JOIN film
-- ON genre.id_genre=film.id_genre  group by genre.nom order by count(film.id_film) DESC ,  genre.nom ASC;

-- ex_12.sql 
-- SELECT COUNT(film.id_film) AS "Nombre de films western", distrib.nom, genre.nom as genre, titre
-- FROM film
-- INNER JOIN genre ON genre.id_genre = film.id_genre
-- INNER JOIN distrib ON distrib.id_distrib = film.id_distrib
-- WHERE 
-- genre.nom = 'western'
-- AND (-- distrib.nom = 'tartan films' 
        -- OR distrib.nom = 'lionsgate uk' 
        -- OR film.titre LIKE 'T%'
-- )
-- GROUP BY distrib.nom, genre.nom, titre
-- ORDER BY COUNT(film.id_film) DESC, distrib.nom ASC;

-- ex_13.sql 
-- select count(f.id_film) AS "Nombre de films jamais vus" from  film f
-- left join historique_membre h ON f.id_film = h.id_film
-- WHERE h.id_film IS NULL;

-- ex_14.sql
-- select numero_salle as "Numero des salles", nom_salle as "Nom des salles", nbr_siege, etage_salle
--  from salle
--  where nbr_siege > 200 AND etage_salle != 0;

-- ex_15.sql 
-- select count(id_film) as "Nombre de film", annee_prod as "Annee de production"
-- from film
-- group by annee_prod
-- order by annee_prod DESC

-- ex_16.sql
-- SELECT cpostal AS "Codes postaux"
-- FROM fiche_personne
-- GROUP BY cpostal
-- HAVING COUNT(*) > 1
-- ORDER BY cpostal 

-- ex_17.sql
-- select film.titre as "Titre du film", distrib.nom  as "Nom du distributeur"  from  film
-- left join distrib on distrib.id_distrib = film.id_distrib 
-- WHERE 
-- film.id_film IN (21, 87, 263, 413, 1);

-- ex_18.sql
--   select count(membre.id_membre) as "Nombre de membres",  round(avg(YEAR(CURDATE()) - YEAR(fiche_personne.date_naissance))) as "Age moyen" from membre
--   left join fiche_personne on membre.id_fiche_perso = fiche_personne.id_perso;

-- ex_19.sql
-- select etage_salle as "Numero etage", SUM(nbr_siege) as "Nombretotal de sieges", count(id_salle)as "Nombre de salles" from salle group by etage_salle order by(sum(nbr_siege))

-- ex_20.sql
-- SELECT
-- CASE
-- WHEN LENGTH(resum) > 92 THEN CONCAT(SUBSTRING(resum, 1, 89), '...')
-- ELSE resum
-- END AS "resum . . ."
-- FROM film
-- WHERE
-- id_film % 2 = 1
-- AND id_film BETWEEN 43 AND 83