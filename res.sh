#!/bin/bash

counter=1710527055

while [ $counter -le 1710527154 ]; do

curl https://erp.dhakaeducationboard.gov.bd/index.php/Registration_card/view/8/"$counter"/2017/0

   ((counter++))
done
