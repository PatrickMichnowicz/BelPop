SELECT COUNT(*) AS Communes
FROM D_commune

SELECT COUNT(*) AS Dates
FROM D_date

SELECT COUNT(*) AS Pays
FROM D_pays

SELECT COUNT(*) AS Groupes
FROM JD_groupes

SELECT COUNT(*) AS Ages
FROM F_pop_âge

SELECT COUNT(*) AS Mouvements
FROM F_pop_mouvement

SELECT COUNT(*) AS Nationalités
FROM F_pop_nationalité


SELECT*
FROM JD_groupes
ORDER BY [âge]

SELECT DISTINCT([état_civil])
FROM JD_groupes