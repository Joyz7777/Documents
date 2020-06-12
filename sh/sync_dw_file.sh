#!/bin/bash

if [ $# != 3 ];then
	echo "Usage: .\sync_dw_file.sh DW_TRAVELTXN(DW folder name) 20200401(Date format:YYYYMMDD)"
	exit
fi

ARCHIVE_FOLDER=$3/tmp/dw/archive/$2

TABLE_NAME=$1

FILES=$3/tmp/dw/$TABLE_NAME/$2/*.csv


if ! [ -f $FILES ];then
	echo  $FILES " file does not found!"
	exit
fi

mkdir -p $ARCHIVE_FOLDER
	
psql "host=pgdw-dev-mep-srv01.postgres.database.azure.com port=5432 dbname=postgres user=ocladmin@pgdw-dev-mep-srv01 password=Ocl20200101! sslmode=require" -c "SELECT MTR.DELETE_DW_TABLE('$TABLE_NAME', '$2');"

for f in $FILES
do
  echo "Processing $f file..."

  # take action on each file. $f store current file name
  if [[ -f "$f" ]]
  then
    psql "host=pgdw-dev-mep-srv01.postgres.database.azure.com port=5432 dbname=postgres user=ocladmin@pgdw-dev-mep-srv01 password=Ocl20200101! sslmode=require" -c "\\COPY MTR.$TABLE_NAME FROM $f delimiter ',' csv HEADER ;"

     echo "Import `expr $(cat $f |wc -l) - 1` record(s) successfully"

     echo "Process end , backup $f to $ARCHIVE_FOLDER/"

     mv $f $ARCHIVE_FOLDER
  fi
done
