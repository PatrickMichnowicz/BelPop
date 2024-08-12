<<<<<<< HEAD

# Power Query cleaning steps (goal: get a clean Excel file)

## Excel workbook 1: Belgian population by commune and by country of birth

### Preliminary steps 

- Get rid of the title and "source" lines, above and below the table. These create an error when loading data, and cannot be cleaned through Power Query (not recognized as part of a table).

### Steps (for all tables)

- Delete lines with NULL "CODE INS" values (subtotals).
- Delete colums containing subtotals by continent.
- Rename column 3 to "Sexe"
- Delete "TOTAL" from column "Sexe"
- Delete lines with totals by "Region" and "Arrondissement"
- Add conditional reference column "Province" (see method below)
- Add conditional reference column "Région" (see method below)
- Add reference column "Année", stored as yyyy-01-01, for potential use in a Date Dimension
- Move the new reference columns to the left, so they appear before the countries
- Combine all queries to get a single table
- Load combined query to spreadsheet, save as CSV


------------------------------------------------------------------------------------------------------------------------------------------

## Excel workbook 2: Belgian population by commune - Population statistics (other than country of birth)

### Pre-clean
- Erased references to source on each sheet
- Cleaned column names
- Deleted totals and subtotals in columns

### Power Query
- Delete lines with totals by "Region" and "Arrondissement"
- Add conditional reference column "Province" (see method below)
- Add conditional reference column "Région" (see method below)
- Add reference column "Année", stored as yyyy-01-01, for potential use in a Date Dimension
- Move the new reference columns to the left, so they appear before the countries
- Combine all queries to get a single table
- Load combined query to spreadsheet, save as CSV

------------------------------------------------------------------------------------------------------------------------------------------

### Method for the Province and Région columns
Provinces are referenced their CODE INS. For example, all communes with codes 23000 to 24999 belong to the arrondissements composing the province of Flemish Brabant.

Codes for each province + each region: 
- Brabant flamand : Hal-Vilvorde + Louvain / 23 - 24 / Flandre
- Anvers : Malines + Turnhout + Anvers / 11 - 12 - 13 / Flandre
- Bruxelles : Bruxelles / 21 / Région bruxelloise
- Brabant wallon : Nivelles / 25 / Wallonie
- Flandre-Occidentale : Bruges + Dixmude + Ypres + Courtrai + Ostende + Roulers + Tielt + Furnes 
	/ 31 - 32 - 33 - 34 - 35 - 36 - 37 - 38 
	/ Flandre
- Flandre-Orientale : Alost + Termonde + Eeklo + Gand + Audenarde + Saint-Nicolas
	/ 41 - 42 - 43 - 44 - 45 - 46
	/ Flandre
- Hainaut : Ath + Charleroi + Mons + Mouscron + Soignies + Thuin + Tournai
	/ 51 - 52 - 53 - 54 - 55 - 56 - 57
	/ Wallonie
- Liège : Huy + Liège + Verviers + Waremme
	/ 61 - 62 - 63 - 64
	/ Wallonie
- Limbourg : Hasselt - Maaseik - Tongres / 71 - 72 - 73 / Flandre
- Luxembourg : Arlon + Bastogne + Marche-en-Famenne + Neufchâteau + Virton
	/ 81 - 82 - 83 - 84 - 85
	/ Wallonie
- Namur : Dinant + Namur + Philippeville / 91 - 92 - 93 / Wallonie

Once you know the codes, you may create the conditional columns. Conditions look like: 
IF [CODE INS] >= 91000 THEN "Namur" (Province)
=======

# Power Query cleaning steps (goal: get a clean Excel file)

## Excel workbook 1: Belgian population by commune and by country of birth

### Preliminary steps 

- Get rid of the title and "source" lines, above and below the table. These create an error when loading data, and cannot be cleaned through Power Query (not recognized as part of a table).

### Steps (for all tables)

- Delete lines with NULL "CODE INS" values (subtotals).
- Delete colums containing subtotals by continent.
- Rename column 3 to "Sexe"
- Delete "TOTAL" from column "Sexe"
- Delete lines with totals by "Region" and "Arrondissement"
- Add conditional reference column "Province" (see method below)
- Add conditional reference column "Région" (see method below)
- Add reference column "Année", stored as yyyy-01-01, for potential use in a Date Dimension
- Move the new reference columns to the left, so they appear before the countries
- Combine all queries to get a single table
- Load combined query to spreadsheet, save as CSV


------------------------------------------------------------------------------------------------------------------------------------------

## Excel workbook 2: Belgian population by commune - Population statistics (other than country of birth)

### Pre-clean
- Erased references to source on each sheet
- Cleaned column names
- Deleted totals and subtotals in columns

### Power Query
- Delete lines with totals by "Region" and "Arrondissement"
- Add conditional reference column "Province" (see method below)
- Add conditional reference column "Région" (see method below)
- Add reference column "Année", stored as yyyy-01-01, for potential use in a Date Dimension
- Move the new reference columns to the left, so they appear before the countries
- Combine all queries to get a single table
- Load combined query to spreadsheet, save as CSV

------------------------------------------------------------------------------------------------------------------------------------------

### Method for the Province and Région columns
Provinces are referenced their CODE INS. For example, all communes with codes 23000 to 24999 belong to the arrondissements composing the province of Flemish Brabant.

Codes for each province + each region: 
- Brabant flamand : Hal-Vilvorde + Louvain / 23 - 24 / Flandre
- Anvers : Malines + Turnhout + Anvers / 11 - 12 - 13 / Flandre
- Bruxelles : Bruxelles / 21 / Région bruxelloise
- Brabant wallon : Nivelles / 25 / Wallonie
- Flandre-Occidentale : Bruges + Dixmude + Ypres + Courtrai + Ostende + Roulers + Tielt + Furnes 
	/ 31 - 32 - 33 - 34 - 35 - 36 - 37 - 38 
	/ Flandre
- Flandre-Orientale : Alost + Termonde + Eeklo + Gand + Audenarde + Saint-Nicolas
	/ 41 - 42 - 43 - 44 - 45 - 46
	/ Flandre
- Hainaut : Ath + Charleroi + Mons + Mouscron + Soignies + Thuin + Tournai
	/ 51 - 52 - 53 - 54 - 55 - 56 - 57
	/ Wallonie
- Liège : Huy + Liège + Verviers + Waremme
	/ 61 - 62 - 63 - 64
	/ Wallonie
- Limbourg : Hasselt - Maaseik - Tongres / 71 - 72 - 73 / Flandre
- Luxembourg : Arlon + Bastogne + Marche-en-Famenne + Neufchâteau + Virton
	/ 81 - 82 - 83 - 84 - 85
	/ Wallonie
- Namur : Dinant + Namur + Philippeville / 91 - 92 - 93 / Wallonie

Once you know the codes, you may create the conditional columns. Conditions look like: 
IF [CODE INS] >= 91000 THEN "Namur" (Province)
IF [Province] = "Namur" THEN "Wallonie"

------------------------------------------------------------------------------------------------------------------------------------------

### Note sur le changement des noms de communes et nouveaux codes INS (à partir de 2019)

1. Meeuwen-Gruitrode et Opglabbeek: Code INS 72042 (nouveau nom : Oudsbergen)
2. Neerpelt et Overpelt: Code INS 72043 (nouveau nom : Pelt)
3. Kruishoutem et Zingem: Code INS 45068 (nouveau nom : Kruisem)
4. Aalter et Knesselare: Code INS 44084 (nouveau nom : Aalter)
5. Deinze et Nevele: Code INS 44083 (nouveau nom : Deinze)
6. Puurs et Sint-Amands: Code INS 12041 (nouveau nom : Puurs-Sint-Amands)
7. Waarschoot, Lovendegem & Zomergem: Code INS 44085 (nouveau nom : Lievegem)


------------------------------------------------------------------------------------------------------------------------------------------

### Changements des étiquettes

#### Lieu de résidence
- Blégny : Blegny
- Zwalin : Zwalm

------------------------------------------------------------------------------------------------------------------------------------------

Arrondissements: 
https://fr.wikipedia.org/wiki/Arrondissement_administratif_de_Belgique 