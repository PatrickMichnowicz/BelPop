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
CONSTRAINT SK_pays PRIMARY KEY([id pays])
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
CONSTRAINT SK_commune PRIMARY KEY([id commune])
);


CREATE TABLE JD_groupes(
[id_groupe] int IDENTITY(1,1),
[�tat_civil] nvarchar(15),
[sexe] nvarchar(1),
[�ge] int,
[nationalit�] nvarchar(10),
CONSTRAINT SK_d�mographie PRIMARY KEY([id_d�mographie])
 );


CREATE TABLE D_date(
[id_date] int IDENTITY(1,1),
[date_date] date,
[ann�e_num] int,
[mois_num] int,
[mois_nom] nvarchar(12),
[jour_num] int
CONSTRAINT SK_date PRIMARY KEY([id_date])
);


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
CONSTRAINT SK_pop_nationalit�s PRIMARY KEY([id_pop_mouvement]),
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
CONSTRAINT FK_d�mographie_groupes FOREIGN KEY([d�mographie]) REFERENCES JD_groupes([id_groupe])
);




/***************************************************************************************************************************/

DECLARE @CurrentDate DATETIME = '01/01/1830'
DECLARE @EndDate DATETIME = '12/31/2025'

WHILE @CurrentDate < @EndDate
BEGIN
   INSERT INTO D_Date(
    [Date],
	[Year],
	[Quarter],
	[Month],
	[MonthName],
	[Week],
	[Day],
	[DayName],
	[DayOfYear]
      )

   SELECT 
      [Date] = @CurrentDate,
      [Year] = YEAR(@CurrentDate),
      [Quarter] = DATEPART(q, @CurrentDate),
      [Month] = MONTH(@CurrentDate),
      [MonthName] = DATENAME(mm, @CurrentDate),
      [Week] = DATEPART(wk, @CurrentDate),
      [Day] = DAY(@CurrentDate),
      [DayName] = DATENAME(dw, @CurrentDate),
	  [DayOfYear] = DATEPART(dy, @CurrentDate)

   SET @CurrentDate = DATEADD(DD, 1, @CurrentDate)
END
GO


/***************************************************************************************************************************/