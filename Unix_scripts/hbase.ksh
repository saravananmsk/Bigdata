#!/bin/bash
echo "create 'msk_personal_1','msk_personal_data_1'" | hbase shell -n
status_code=$?
if [ ${status_code} -ne 0 ]; then
  echo "The command may have failed."
fi
