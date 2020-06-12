#! /bin/bash

#set -e pipefail

if [ $# != 2 ];then
	echo "Usage: .\sync_db_file.sh DW_TRAVELTXN(DW folder name) 20200401(Date format:YYYYMMDD)"
	exit
fi

FOLDER_NAME=$1

FUNCTION_NAME="CONSOLIDATE"${FOLDER_NAME:2}

START_TIME=$(date +%s)

echo "Processing start $1 ..."

psql "host=pgdw-dev-mep-srv01.postgres.database.azure.com port=5432 dbname=postgres user=ocladmin@pgdw-dev-mep-srv01 password=Ocl20200101! sslmode=require" -c "SELECT MTR.$FUNCTION_NAME('$2');"
 
END_TIME=$(date +%s)
      
echo "Process end,takes `expr $END_TIME - $START_TIME` seconds."
