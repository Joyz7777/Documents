#!/bin/bash

DEFAULT_DATE=$(date -d  "-1 day" '+%Y%m%d')

if [ $# -gt 0 ];then
	DEFAULT_DATE=$1	
fi

/home/sync_dw_to_raw.sh DW_TARIFF_TIMELINE                $DEFAULT_DATE
/home/sync_dw_to_raw.sh DW_LINE_LIST                      $DEFAULT_DATE
/home/sync_dw_to_raw.sh DW_LOCATION_LINE_MAP              $DEFAULT_DATE
/home/sync_dw_to_raw.sh DW_LOCATION_MOVEMENT_MAP          $DEFAULT_DATE
/home/sync_dw_to_raw.sh DW_TARIFF_LOCATION                $DEFAULT_DATE
/home/sync_dw_to_raw.sh DW_AR_TD_RECONCILIATION	          $DEFAULT_DATE
/home/sync_dw_to_raw.sh DW_JOURNEYFEEDBACK                $DEFAULT_DATE
/home/sync_dw_to_raw.sh DW_PAYMENT_RECONCILIATION         $DEFAULT_DATE
/home/sync_dw_to_raw.sh DW_PAYMENT_REQUEST                $DEFAULT_DATE
/home/sync_dw_to_raw.sh DW_SETTLEMENT_OTHER_DATA          $DEFAULT_DATE
/home/sync_dw_to_raw.sh DW_SETTLEMENT_TRIP_DATA           $DEFAULT_DATE
/home/sync_dw_to_raw.sh DW_TRAVELTXN                      $DEFAULT_DATE
/home/sync_dw_to_raw.sh DW_FINANCIAL_INSTRUCTIONS         $DEFAULT_DATE
