#!/bin/bash

if [ $# != 1 ];then
	echo "Usage: .\sync_all_dw_to_raw.sh 20200401(Date format:YYYYMMDD)"
	exit
fi

DEFAULT_DATE=$1

./sync_dw_to_raw.sh DW_TARIFF_TIMELINE                $DEFAULT_DATE
./sync_dw_to_raw.sh DW_LINE_LIST                      $DEFAULT_DATE
./sync_dw_to_raw.sh DW_LOCATION_LINE_MAP              $DEFAULT_DATE
./sync_dw_to_raw.sh DW_LOCATION_MOVEMENT_MAP          $DEFAULT_DATE
./sync_dw_to_raw.sh DW_TARIFF_LOCATION                $DEFAULT_DATE
./sync_dw_to_raw.sh DW_AR_TD_RECONCILIATION	      $DEFAULT_DATE
./sync_dw_to_raw.sh DW_JOURNEYFEEDBACK                $DEFAULT_DATE
./sync_dw_to_raw.sh DW_PAYMENT_RECONCILIATION          $DEFAULT_DATE
./sync_dw_to_raw.sh DW_PAYMENT_REQUEST                $DEFAULT_DATE
./sync_dw_to_raw.sh DW_SETTLEMENT_OTHER_DATA          $DEFAULT_DATE
./sync_dw_to_raw.sh DW_SETTLEMENT_TRIP_DATA           $DEFAULT_DATE
./sync_dw_to_raw.sh DW_TRAVELTXN                      $DEFAULT_DATE
./sync_dw_to_raw.sh DW_FINANCIAL_INSTRUCTIONS         $DEFAULT_DATE
