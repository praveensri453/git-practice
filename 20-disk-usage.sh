#!/bin/bash
SOURCE=$(df -hT|grep xfs)
THRESHOULD=30


while IFS= read -r line
do
    CU_VAL=$($SOURCE|awk -F " " '{print $6}'|cut -d "%" -f6)
    PATH=$SOURCE|awk -F " " '{print $NF}'
    if [ $CU_VAL -gt $THRESHOULD ]
    
    then echo "$CU_VAL is greater than $THRESHOULD"
    fi

done <<< $SOURCE    