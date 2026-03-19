
	/*
	===================================
	Stored Procedure: Load Bronze Layer (Spruce -> Bronze)
	===================================
	Script Purpose: This stored procedure loads data into the 'bronze' schema from external CSV files.
	It performs the following actions:
	- Truncates the bronze tables before loading data.
	Uses the 'BULK INSERT' command to load data from the CSV files to bronze tables.

	Parameters:
	NONE.
	This is stored procedure does not accept any parameters or return any values.


	Usage example:
	EXEC bronze_load_bronze;
	===========================================================================
	*/
	
	
	
	
	
	
	CREATE OR ALTER PROCEDURE bronze.load__bronze AS
	BEGIN

	TRUNCATE TABLE bronze.crm_cust_info;
	BULK INSERT bronze.crm_cust_info
	FROM'C:\Users\shenegar\Desktop\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
	WITH (
	FIRSTROW = 2,
	 fieldterminator = ',',
	 tablock
	)

	TRUNCATE TABLE bronze.crm_prd_info;
	BULK INSERT bronze.crm_prd_info
	FROM'C:\Users\shenegar\Desktop\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
	WITH (
	FIRSTROW = 2,
	 fieldterminator = ',',
	 tablock
	)

	TRUNCATE TABLE bronze.crm_sales_details;
	BULK INSERT bronze.crm_sales_details
	FROM'C:\Users\shenegar\Desktop\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
	WITH (
	FIRSTROW = 2,
	 fieldterminator = ',',
	 tablock
	)

	TRUNCATE TABLE bronze.erp_loc_a101;
	BULK INSERT bronze.erp_loc_a101
	FROM'C:\Users\shenegar\Desktop\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
	WITH (
	FIRSTROW = 2,
	 fieldterminator = ',',
	 tablock
	)

	TRUNCATE TABLE bronze.erp_cust_az12;
	BULK INSERT bronze.erp_cust_az12
	FROM'C:\Users\shenegar\Desktop\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
	WITH (
	FIRSTROW = 2,
	 fieldterminator = ',',
	 tablock
	)

	TRUNCATE TABLE bronze.erp_px_cat_g1v2;
	BULK INSERT bronze.erp_px_cat_g1v2
	FROM'C:\Users\shenegar\Desktop\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
	WITH (
	FIRSTROW = 2,
	 fieldterminator = ',',
	 tablock
	)
	end
