#!/bin/bash

STATUS=`systemctl is-active php7.2-fpm.service`

if [[ ${STATUS} == 'active' ]]; then
 :
else 
 systemctl restart php7.2-fpm.service 
fi
