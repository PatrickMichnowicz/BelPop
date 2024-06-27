# SSIS ETL

# Preliminary steps
- Convert xlsx into 97-03 format
Because it is easier to work with on the SSIS version I have, and I know it better. 

- Remove Power Query links 
Why? They add a "hidden" table in between the spreadsheets (with meta data?), which confuses SSIS.
It then refuses to process the entire file. 
The caveat: if you delete the link between the Power Query steps and your main file, you may not re-open the Power Query to edit it if required.
As such, I kept an old version of the file, with PQ on it, and a SSIS-friendly file where PQ got removed. 

--------------------------------------------------------------------------------------

# SSIS prep
The general method to read and load multiple Excel sheets into a DB come from here: 
https://www.mssqltips.com/sqlservertip/4157/how-to-read-data-from-multiple-excel-worksheets-with-sql-server-integration-services/

1. Prepare a variable which will contain the name of the first Excel sheet 
Data type: string
Value: 2024$ (name of the first sheet in my file)

2. Prepare Foreach Loop over Task
A) Collection -> Connection -> get your Excel file
Provider : .Net Providers for OleDb\Microsoft Jet 4.0 OLE DB Provider (for Excel 97-03 format)
Database file : your excel file containing all sheets
All -> Advanced -> Extended Properties -> input "Excel 8.0" -> Test Connection 
IF CONNECTION WORKS -> Move to next 
IF CONNECTION FAILS -> your file may not be in a supported format, you main need to switch Provider or Extended Properties

B) Edit Foreach loop -> Collection -> Schema -> Tables
Variable Mappings -> Set the User created variable -> Index = 2 (I understand this index contains the name of the sheet)

--------------------------------------------------------------------------------------

# Prepare Table inside your DataBase

Copy-paste all the column names from one of the sheets, paste into a query on SSMS.
Set all columns data type, create the DataBase. (DB source code available separately)

--------------------------------------------------------------------------------------

# Data Flow

Add a TRUNCATE TABLE SQL Code before the loop. 
Why? The table is actually quite small (less than 39k rows) and quick to create. 
If you add a step inside the loop to make sure there are no duplicates after injection, it will be processed at each iteration (32 total).
In this case, truncating seems more efficient. 


Insert a Data Flow inside the Loop

1. Get Excel source
Data access mode : Table name or view name variable
Variable name : your variable -> this implies the step will read the first sheet of the file


2. Convert data
Convert all columns into the data format set in your database.
Recommended to convert strings too to avoid any errors. 

3. Link DB and copies of columns
Link the DB you created, make sure the inputs are the copies of the columns created on the previous step. 


--------------------------------------------------------------------------------------

Start the process, enjoy the show ! 

What is happening? Basically, an iteration over each sheet, until the sheets run out. 
The process truncates the existing table, and starts to fill it back in with the data from sheet 1, until the last sheet.
The sheet order is not important - we added a "year" reference, so we can easily get the data from any year.
