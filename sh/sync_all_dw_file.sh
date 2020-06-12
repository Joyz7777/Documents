#!/bin/bash

dir= $1

DEFAULT_DATE=$(date -d  "-1 day" '+%Y%m%d')



$1/sync_dw_file.sh DW_AR_TD_RECONCILIATION	         $DEFAULT_DATE $1
$1/sync_dw_file.sh DW_JOURNEYFEEDBACK                $DEFAULT_DATE $1
$1/sync_dw_file.sh DW_LINE_LIST                      $DEFAULT_DATE $1
$1/sync_dw_file.sh DW_LOCATION_LINE_MAP              $DEFAULT_DATE $1
$1/sync_dw_file.sh DW_LOCATION_MOVEMENT_MAP          $DEFAULT_DATE $1
$1/sync_dw_file.sh DW_PAYMENT_RECONCILIATION         $DEFAULT_DATE $1
$1/sync_dw_file.sh DW_PAYMENT_REQUEST                $DEFAULT_DATE $1
$1/sync_dw_file.sh DW_SETTLEMENT_OTHER_DATA          $DEFAULT_DATE $1
$1/sync_dw_file.sh DW_SETTLEMENT_TRIP_DATA           $DEFAULT_DATE $1
$1/sync_dw_file.sh DW_TARIFF_LOCATION                $DEFAULT_DATE $1
$1/sync_dw_file.sh DW_TARIFF_TIMELINE                $DEFAULT_DATE $1
$1/sync_dw_file.sh DW_TRAVELTXN                      $DEFAULT_DATE $1
$1/sync_dw_file.sh DW_FINANCIAL_INSTRUCTIONS         $DEFAULT_DATE $1
