/* make sure to give server studio access to your file so it needs read access */
/* turn into stored procedure */ 
/* add print statements at each step for better debug-ability */ 
/* wrap in TRY and CATCH statement */
TRUNCATE TABLE bronze.crm_cust_info 

BULK INSERT bronze.crm_cust_info
FROM 'C:\Temp\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);



SELECT * FROM bronze.crm_cust_info 
  
