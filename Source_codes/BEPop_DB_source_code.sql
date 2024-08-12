CREATE DATABASE BelgiumPopulation
GO
USE BelgiumPopulation
GO
CREATE TABLE BEPopNationalities (
[INS-NIS] nvarchar(10) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[lieu de résidence] nvarchar(100) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[province] nvarchar(50) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8, 
[région] nvarchar(50) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8, 
[année de référence] date, 
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
[Grèce] int, 
[Hongrie] int, 
[Irlande] int, 
[Malte] int, 
[Portugal] int, 
[Roumanie] int,
[Suède] int,
[Italie] int, 
[Pays-Bas] int, 
[Lettonie] int, 
[Estonie] int, 
[Lituanie] int, 
[Pologne] int, 
[Tchéquie] int, 
[Slovaquie] int, 
[Croatie] int,
[Slovénie] int,
[Albanie] int,
[Norvège] int,
[Suisse] int,
[Serbie/Monténégro/Yougoslavie] int, 
[Bélarus] int, 
[Ukraine] int, 
[Russie] int, 
[Macédoine du Nord] int, 
[Bosnie-Herzégovine] int,
[Monténégro] int,
[Serbie] int,
[Kosovo] int,
[Yougoslavie] int,
[Tchécoslovaquie] int,
[Union Soviétique] int,
[Europe (autres)] int,
[Corée du Sud] int, 
[Inde] int,
[Indonésie] int,
[Japon] int,
[Népal] int,
[Philippines] int,
[Chine] int,
[Vietnam] int,
[Kazakhstan] int,
[Kirghizistan] int,
[Ouzbékistan] int,
[Thaïlande] int,
[Bangladesh] int,
[Arménie] int,
[Azerbaïdjan] int,
[Afghanistan] int,
[Géorgie] int,
[Irak] int,
[Iran] int,
[Israël] int,
[Liban] int,
[Pakistan] int,
[Turquie] int,
[Asie (autres)] int, 
[Burundi] int,
[Cameroun] int,
[République démocratique du Congo] int,
[République du Congo] int, 
[Côte d'Ivoire] int,
[Bénin] int,
[Éthiopie] int,
[Ghana] int,
[Guinée] int,
[Maurice] int,
[Sénégal] int,
[Niger] int,
[Nigéria] int,
[Afrique Du Sud] int,
[Rwanda] int,
[Sierra Leone] int,
[Somalie] int,
[Togo] int,
[Angola] int,
[Algérie] int,
[Égypte] int,
[Maroc] int,
[Mauritanie] int,
[Tunisie] int,
[Afrique (autres)] int, 
[Canada] int,
[États-Unis] int,
[Cuba] int,
[Mexique] int,
[République Dominicaine] int, 
[Brésil] int,
[Chili] int,
[Colombie] int,
[Équateur] int,
[Pérou] int,
[Amérique (autres)] int,
[Australie] int,
[Océanie (autres] int,
[Indéterminés/Apatrides] int,
)


CREATE TABLE BEGeoTranslations(
[INS-NIS] nvarchar(10) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[deutsh] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[english] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[français] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[nederlands] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[début validité] date,
[fin validité] date
)


CREATE TABLE BEPopMovement(
[INS-NIS] nvarchar(10) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[lieu de résidence] nvarchar(100) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[année de référence] date NOT NULL, 
[province] nvarchar(50) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8, 
[population totale] int,
[naissances] int,
[décès] int,
[entrées internes] int,
[sorties internes] int,
[immigrations] int,
[changements registre (entrées)] int,
[réinscriptions] int,
[émigrations] int,
[changements de registre (sorties)] int,
[rayés d'office] int, 
[ajustement statistique] int,
[abandons nationalité belge] int,
[demandes nationalité belge] int
)


CREATE TABLE BEPopAgeGroups(
[INS-NIS] nvarchar(10) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[Lieu de résidence] nvarchar(100) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[Année de référence] date NOT NULL, 
[Sexe] nvarchar(1),
[< 5] int,
[5-9] int,
[10-14] int,
[15-19] int,
[20-24] int,
[25-29] int,
[30-34] int,
[35-39] int,
[40-44] int,
[45-49] int,
[50-54] int,
[55-59] int,
[60-64] int,
[65-69] int,
[70-74] int,
[75-79] int,
[80-84] int,
[85-89] int,
[90-94] int,
[95 <] int,
)



CREATE TABLE RefCountries(
[id_pays] int,
[français] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[english] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[nederlands] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[continent] nvarchar(30) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[membre_ue] int,
[permis_travail_requis] int
)



CREATE TABLE RefPopulationUE(
[pays] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[année de référence] date NOT NULL,
[sexe] nvarchar(1),
[naissances] int,
[décès] int,
[population] int
)



CREATE TABLE RefNativePopulationUE(
[pays] nvarchar(75) COLLATE LATIN1_GENERAL_100_CI_AS_SC_UTF8,
[année de référence] date NOT NULL,
[population native] int
)


TRUNCATE TABLE BEPopNationalities
TRUNCATE TABLE BEGeoTranslations
TRUNCATE TABLE BEPopMovement
TRUNCATE TABLE BEPopAgeGroups
TRUNCATE TABLE RefCountries
TRUNCATE TABLE RefPopulationUE
TRUNCATE TABLE RefNativePopulationUE

-- Use in case a user cannot create database diagrams
-- ALTER AUTHORIZATION ON DATABASE::BelgiumPopulation TO sa;