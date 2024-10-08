CREATE DATABASE BelgiumPopulation
GO
USE BelgiumPopulation
GO
CREATE TABLE BEPopNationalities (
[INS-NIS] nvarchar(10) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[lieu de r�sidence] nvarchar(100) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[province] nvarchar(50) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8, 
[r�gion] nvarchar(50) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8, 
[ann�e de r�f�rence] date, 
[sexe] nvarchar(1), 
[Belgique] int, 
[Allemagne] int, 
[Autriche] int, 
[Bulgarie] int, 
[Chypre] int, 
[Danemark] int, 
[Espagne] int, 
[Finlande] int, 
[France] int, 
[Royaume-Uni] int, 
[Luxembourg] int, 
[Gr�ce] int, 
[Hongrie] int, 
[Irlande] int, 
[Malte] int, 
[Portugal] int, 
[Roumanie] int,
[Su�de] int,
[Italie] int, 
[Pays-Bas] int, 
[Lettonie] int, 
[Estonie] int, 
[Lituanie] int, 
[Pologne] int, 
[Tch�quie] int, 
[Slovaquie] int, 
[Croatie] int,
[Slov�nie] int,
[Albanie] int,
[Norv�ge] int,
[Suisse] int,
[Serbie/Mont�n�gro/Yougoslavie] int, 
[B�larus] int, 
[Ukraine] int, 
[Russie] int, 
[Mac�doine du Nord] int, 
[Bosnie-Herz�govine] int,
[Mont�n�gro] int,
[Serbie] int,
[Kosovo] int,
[Yougoslavie] int,
[Tch�coslovaquie] int,
[Union Sovi�tique] int,
[Europe (autres)] int,
[Cor�e du Sud] int, 
[Inde] int,
[Indon�sie] int,
[Japon] int,
[N�pal] int,
[Philippines] int,
[Chine] int,
[Vietnam] int,
[Kazakhstan] int,
[Kirghizistan] int,
[Ouzb�kistan] int,
[Tha�lande] int,
[Bangladesh] int,
[Arm�nie] int,
[Azerba�djan] int,
[Afghanistan] int,
[G�orgie] int,
[Irak] int,
[Iran] int,
[Isra�l] int,
[Liban] int,
[Pakistan] int,
[Turquie] int,
[Asie (autres)] int, 
[Burundi] int,
[Cameroun] int,
[R�publique d�mocratique du Congo] int,
[R�publique du Congo] int, 
[C�te d'Ivoire] int,
[B�nin] int,
[�thiopie] int,
[Ghana] int,
[Guin�e] int,
[Maurice] int,
[S�n�gal] int,
[Niger] int,
[Nig�ria] int,
[Afrique Du Sud] int,
[Rwanda] int,
[Sierra Leone] int,
[Somalie] int,
[Togo] int,
[Angola] int,
[Alg�rie] int,
[�gypte] int,
[Maroc] int,
[Mauritanie] int,
[Tunisie] int,
[Afrique (autres)] int, 
[Canada] int,
[�tats-Unis] int,
[Cuba] int,
[Mexique] int,
[R�publique Dominicaine] int, 
[Br�sil] int,
[Chili] int,
[Colombie] int,
[�quateur] int,
[P�rou] int,
[Am�rique (autres)] int,
[Australie] int,
[Oc�anie (autres] int,
[Ind�termin�s/Apatrides] int,
);


CREATE TABLE BEGeoTranslations(
[INS-NIS] nvarchar(10) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[deutsh] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[english] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[fran�ais] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[nederlands] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[d�but validit�] date,
[fin validit�] date,
[arrondissement] nvarchar(35) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[province] nvarchar(25) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[r�gion] nvarchar(25) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8
);


CREATE TABLE BEPopMovement(
[INS-NIS] nvarchar(10) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[lieu de r�sidence] nvarchar(100) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[ann�e de r�f�rence] date, 
[province] nvarchar(50) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8, 
[population totale] int,
[naissances] int,
[d�c�s] int,
[entr�es internes] int,
[sorties internes] int,
[immigrations] int,
[changements registre (entr�es)] int,
[r�inscriptions] int,
[�migrations] int,
[changements de registre (sorties)] int,
[ray�s d'office] int, 
[ajustement statistique] int,
[abandons nationalit� belge] int,
[demandes nationalit� belge] int
);


CREATE TABLE BEPopAge(
[INS-NIS] nvarchar(10) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[lieu de r�sidence] nvarchar(100) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[sexe] nvarchar(1),
[nationalit�] nvarchar(3),
[�tat civil] nvarchar(20) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[�ge] int,
[population] int,
[ann�e de r�f�rence] date 
);



CREATE TABLE RefCountries(
[id_pays] int,
[fran�ais] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[english] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[nederlands] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[continent] nvarchar(30) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[membre_ue] int,
[permis_travail_requis] int
);



CREATE TABLE RefPopulationUE(
[pays] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[ann�e de r�f�rence] date NOT NULL,
[sexe] nvarchar(1),
[naissances] int,
[d�c�s] int,
[population] int
);



CREATE TABLE RefNativePopulationUE(
[pays] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[ann�e de r�f�rence] date NOT NULL,
[population native] int
);


TRUNCATE TABLE BEPopNationalities
TRUNCATE TABLE BEGeoTranslations
TRUNCATE TABLE BEPopMovement
TRUNCATE TABLE BEPopAge
TRUNCATE TABLE RefCountries
TRUNCATE TABLE RefPopulationUE
TRUNCATE TABLE RefNativePopulationUE;

-- Use in case a user cannot create database diagrams
-- ALTER AUTHORIZATION ON DATABASE::BelgiumPopulation TO sa;