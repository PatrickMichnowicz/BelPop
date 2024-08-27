USE BelgiumPopulation
GO


UPDATE BEPopAge
SET [lieu de résidence] = 'Blegny'
WHERE [lieu de résidence] = 'Blégny'


INSERT INTO BEGeoTranslations
VALUES ('58002', 'Binche','Binche','Binche','Binche', '2019-01-01', '9999-12-31', 'La Louvière', 'Hainaut', 'Wallonie')