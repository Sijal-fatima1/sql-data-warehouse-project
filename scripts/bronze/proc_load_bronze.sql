-- Truncate all bronze tables
TRUNCATE TABLE
    bronze.crm_cust_info,
    bronze.crm_prd_info,
    bronze.crm_sales_details,
    bronze.erp_loc_a101,
    bronze.erp_cust_az12,
    bronze.erp_px_cat_g1v2;

\copy bronze.crm_cust_info
FROM 'C:\Users\DELL\Downloads\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',');

\copy bronze.crm_prd_info
FROM 'C:\Users\DELL\Downloads\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',');

\copy bronze.crm_sales_details
FROM 'C:\Users\DELL\Downloads\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',');

\copy bronze.erp_cust_az12
FROM 'C:\Users\DELL\Downloads\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',');

\copy bronze.erp_loc_a101
FROM 'C:\Users\DELL\Downloads\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',');

\copy bronze.erp_px_cat_g1v2
FROM 'C:\Users\DELL\Downloads\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',');
