USE BelgiumPopulation
GO


UPDATE BEPopAge
SET [lieu de r�sidence] = 'Blegny'
WHERE [lieu de r�sidence] = 'Bl�gny'


INSERT INTO BEGeoTranslations
VALUES ('58002', 'Binche','Binche','Binche','Binche', '2019-01-01', '9999-12-31', 'La Louvi�re', 'Hainaut', 'Wallonie')