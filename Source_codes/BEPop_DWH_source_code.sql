CREATE DATABASE DWH_BelPop
GO
USE DWH_BelPop
GO


CREATE TABLE D_pays(
[id_pays] int IDENTITY(1,1),
[pays] nvarchar(75),
[continent] nvarchar(30),
[membre_UE] int, 
[permis_travail_requis] int,
CONSTRAINT SK_pays PRIMARY KEY([id_pays])
);


CREATE TABLE D_commune(
[id_commune] int IDENTITY(1,1),
[ins-nis] nvarchar(10),
[commune] nvarchar(75),
[arrondissement] nvarchar(35),
[province] nvarchar(25),
[r�gion] nvarchar(25),
[date_d�but] date,
[date_fin] date,
CONSTRAINT SK_commune PRIMARY KEY([id_commune])
);


CREATE TABLE JD_groupes(
[id_groupe] int IDENTITY(1,1),
[�tat_civil] nvarchar(20),
[sexe] nvarchar(1),
[�ge] int,
[nationalit�] nvarchar(10),
CONSTRAINT SK_groupes PRIMARY KEY([id_groupe])
 );


CREATE TABLE D_date(
[id_date] int,
[date_date] date,
[ann�e_num] int,
[mois_num] int,
[mois_nom] nvarchar(12),
[jour_num] int
CONSTRAINT SK_date PRIMARY KEY([id_date])
);



/***************************************************************************************************************************/

DECLARE @CurrentDate DATETIME = '01/01/1830'
DECLARE @EndDate DATETIME = '12/31/2050'

WHILE @CurrentDate < @EndDate
BEGIN
   INSERT INTO D_date(
    [id_date],
	[date_date],
	[ann�e_num],
	[mois_num],
	[mois_nom],
	[jour_num]
      )

   SELECT 
      [id_date] = (YEAR(@CurrentDate)*10000) + (MONTH(@CurrentDate)*100) + DAY(@CurrentDate),
	  [date_date] = @CurrentDate,
      [ann�e_num] = YEAR(@CurrentDate),
      [mois_num] = MONTH(@CurrentDate),
      [mois_nom] = DATENAME(mm, @CurrentDate),
      [jour_num] = DAY(@CurrentDate)

   SET @CurrentDate = DATEADD(YY, 1, @CurrentDate)
END
GO


/***************************************************************************************************************************/



CREATE TABLE F_pop_mouvement(
[id_pop_mouvement] int IDENTITY(1,1),
[lieu_r�sidence] int,
[ann�e_r�f�rence] int,
[naissances] int,
[d�c�s] int,
[entr�es_internes] int,
[sorties_internes] int,
[immigrations] int,
[�migrations] int,
[abandons_nationalit�] int,
[demandes_nationalit�] int,
CONSTRAINT SK_pop_mouvement PRIMARY KEY([id_pop_mouvement]),
CONSTRAINT FK_mouvement_commune FOREIGN KEY([lieu_r�sidence]) REFERENCES D_commune([id_commune]),
CONSTRAINT FK_mouvement_date FOREIGN KEY([ann�e_r�f�rence]) REFERENCES D_date([id_date])
);


CREATE TABLE F_pop_nationalit�(
[id_pop_nationalit�] int IDENTITY(1,1),
[lieu_r�sidence] int,
[ann�e_r�f�rence] int,
[pays] int,
[sexe] nvarchar(1),
[population] int,
CONSTRAINT SK_pop_nationalit�s PRIMARY KEY([id_pop_nationalit�]),
CONSTRAINT FK_nationalit�_commune FOREIGN KEY([lieu_r�sidence]) REFERENCES D_commune([id_commune]),
CONSTRAINT FK_nationalit�_date FOREIGN KEY([ann�e_r�f�rence]) REFERENCES D_date([id_date]),
CONSTRAINT FK_nationalit�_pays FOREIGN KEY([pays]) REFERENCES D_pays([id_pays])
);


CREATE TABLE F_pop_�ge(
[id_pop_d�mographie] int IDENTITY(1,1),
[lieu_r�sidence] int,
[ann�e_r�f�rence] int,
[groupe] int,
[population] int,
CONSTRAINT SK_pop_�ge PRIMARY KEY([id_pop_d�mographie]),
CONSTRAINT FK_d�mographie_commune FOREIGN KEY([lieu_r�sidence]) REFERENCES D_commune([id_commune]),
CONSTRAINT FK_d�mographie_date FOREIGN KEY([ann�e_r�f�rence]) REFERENCES D_date([id_date]),
CONSTRAINT FK_d�mographie_groupes FOREIGN KEY([groupe]) REFERENCES JD_groupes([id_groupe])
);

