#!/bin/sh
if [ -z ${ENGINE} ] ; then export ENGINE=engine ; fi
sed -i "s/ENGINE/$ENGINE/" /etc/nginx/conf.d/default.conf 
nginx -g "daemon off;"
