#! /bin/bash


START_TIME=$(date +%s)

echo "Processing start $1 ..."

psql "host=pgdw-dev-mep-srv01.postgres.database.azure.com port=5432 dbname=postgres user=ocladmin@pgdw-dev-mep-srv01 password=Ocl20200101! sslmode=require" -c "SELECT MTR.CLEAN_DATA_SEVEN_YEARS_AGO();"
 
END_TIME=$(date +%s)
      
echo "Process end,takes `expr $END_TIME - $START_TIME` seconds."
