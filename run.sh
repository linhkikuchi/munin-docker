#!/bin/bash

# Set timezone if supplied ENV:TV is valid
if [ -f /usr/share/zoneinfo/$TZ ]; then
        rm /etc/localtime
        ln -s /usr/share/zoneinfo/$TZ /etc/localtime
fi

# Create holding page if no stats are available
if [ ! -e /var/cache/munin/www/index.html ]; then
        echo "NEW INSTALLATION: Charts will be available within 5 minutes, thank you for waiting..." > /var/cache/munin/www/index.htm
fi

# activate custom munin plugins
ln -s /usr/share/munin/plugins/apache_accesses /etc/munin/plugins/apache_accesses
ln -s /usr/share/munin/plugins/apache_processes /etc/munin/plugins/apache_processes
ln -s /usr/share/munin/plugins/apache_volume /etc/munin/plugins/apache_volume
ln -s /usr/share/munin/plugins/http_loadtime /etc/munin/plugins/http_loadtime
ln -s /usr/share/munin/plugins/iostat /etc/munin/plugins/iostat
ln -s /usr/share/munin/plugins/iostat_ios /etc/munin/plugins/iostat_ios
ln -s /usr/share/munin/plugins/mongo_btree /etc/munin/plugins/mongo_btree
ln -s /usr/share/munin/plugins/mongo_conn /etc/munin/plugins/mongo_conn
ln -s /usr/share/munin/plugins/mongo_lock /etc/munin/plugins/mongo_lock
ln -s /usr/share/munin/plugins/mongo_mem /etc/munin/plugins/mongo_mem
ln -s /usr/share/munin/plugins/mongo_ops /etc/munin/plugins/mongo_ops
ln -s /usr/share/munin/plugins/munin_stats /etc/munin/plugins/munin_stats
ln -s /usr/share/munin/plugins/munin_update /etc/munin/plugins/munin_update
ln -s /usr/share/munin/plugins/nfs4_client /etc/munin/plugins/nfs4_client
ln -s /usr/share/munin/plugins/snmp__fn /etc/munin/plugins/snmp_firewall-london.globalbrain.net_fn
ln -s /usr/share/munin/plugins/snmp__fn /etc/munin/plugins/snmp_firewall-office.globalbrain.net_fn
ln -s /usr/share/munin/plugins/snmp__fn /etc/munin/plugins/snmp_firewall-sanjose.globalbrain.net_fn
ln -s /usr/share/munin/plugins/snmp__fn /etc/munin/plugins/snmp_firewall.globalbrain.net_fn
ln -s /usr/share/munin/plugins/snmp__cpuload /etc/munin/plugins/snmp_lb-ausydr01.sli-systems.net_cpuload
ln -s /usr/share/munin/plugins/snmp__f5conn /etc/munin/plugins/snmp_lb-ausydr01.sli-systems.net_f5conn
ln -s /usr/share/munin/plugins/snmp__f5connsec /etc/munin/plugins/snmp_lb-ausydr01.sli-systems.net_f5connsec
ln -s /usr/share/munin/plugins/snmp__f5packeterrors /etc/munin/plugins/snmp_lb-ausydr01.sli-systems.net_f5packeterrors
ln -s /usr/share/munin/plugins/snmp__f5throughput /etc/munin/plugins/snmp_lb-ausydr01.sli-systems.net_f5throughput
ln -s /usr/share/munin/plugins/snmp__load /etc/munin/plugins/snmp_lb-ausydr01.sli-systems.net_load
ln -s /usr/share/munin/plugins/snmp__memory /etc/munin/plugins/snmp_lb-ausydr01.sli-systems.net_memory
ln -s /usr/share/munin/plugins/snmp__cpuload /etc/munin/plugins/snmp_lb-ausydr02.sli-systems.net_cpuload
ln -s /usr/share/munin/plugins/snmp__f5conn /etc/munin/plugins/snmp_lb-ausydr02.sli-systems.net_f5conn
ln -s /usr/share/munin/plugins/snmp__f5connsec /etc/munin/plugins/snmp_lb-ausydr02.sli-systems.net_f5connsec
ln -s /usr/share/munin/plugins/snmp__f5packeterrors /etc/munin/plugins/snmp_lb-ausydr02.sli-systems.net_f5packeterrors
ln -s /usr/share/munin/plugins/snmp__f5throughput /etc/munin/plugins/snmp_lb-ausydr02.sli-systems.net_f5throughput
ln -s /usr/share/munin/plugins/snmp__load /etc/munin/plugins/snmp_lb-ausydr02.sli-systems.net_load
ln -s /usr/share/munin/plugins/snmp__memory /etc/munin/plugins/snmp_lb-ausydr02.sli-systems.net_memory
ln -s /usr/share/munin/plugins/snmp__cpuload /etc/munin/plugins/snmp_lb-uksr01.sli-systems.net_cpuload
ln -s /usr/share/munin/plugins/snmp__f5conn /etc/munin/plugins/snmp_lb-uksr01.sli-systems.net_f5conn
ln -s /usr/share/munin/plugins/snmp__f5connsec /etc/munin/plugins/snmp_lb-uksr01.sli-systems.net_f5connsec
ln -s /usr/share/munin/plugins/snmp__f5packeterrors /etc/munin/plugins/snmp_lb-uksr01.sli-systems.net_f5packeterrors
ln -s /usr/share/munin/plugins/snmp__f5throughput /etc/munin/plugins/snmp_lb-uksr01.sli-systems.net_f5throughput
ln -s /usr/share/munin/plugins/snmp__load /etc/munin/plugins/snmp_lb-uksr01.sli-systems.net_load
ln -s /usr/share/munin/plugins/snmp__memory /etc/munin/plugins/snmp_lb-uksr01.sli-systems.net_memory
ln -s /usr/share/munin/plugins/snmp__cpuload /etc/munin/plugins/snmp_lb-uksr02.sli-systems.net_cpuload
ln -s /usr/share/munin/plugins/snmp__f5conn /etc/munin/plugins/snmp_lb-uksr02.sli-systems.net_f5conn
ln -s /usr/share/munin/plugins/snmp__f5connsec /etc/munin/plugins/snmp_lb-uksr02.sli-systems.net_f5connsec
ln -s /usr/share/munin/plugins/snmp__f5packeterrors /etc/munin/plugins/snmp_lb-uksr02.sli-systems.net_f5packeterrors
ln -s /usr/share/munin/plugins/snmp__f5throughput /etc/munin/plugins/snmp_lb-uksr02.sli-systems.net_f5throughput
ln -s /usr/share/munin/plugins/snmp__load /etc/munin/plugins/snmp_lb-uksr02.sli-systems.net_load
ln -s /usr/share/munin/plugins/snmp__memory /etc/munin/plugins/snmp_lb-uksr02.sli-systems.net_memory
ln -s /usr/share/munin/plugins/snmp__cpuload /etc/munin/plugins/snmp_lb-uscdr01.sli-systems.net_cpuload
ln -s /usr/share/munin/plugins/snmp__f5conn /etc/munin/plugins/snmp_lb-uscdr01.sli-systems.net_f5conn
ln -s /usr/share/munin/plugins/snmp__f5connsec /etc/munin/plugins/snmp_lb-uscdr01.sli-systems.net_f5connsec
ln -s /usr/share/munin/plugins/snmp__f5natcurrconn /etc/munin/plugins/snmp_lb-uscdr01.sli-systems.net_f5natcurrconn
ln -s /usr/share/munin/plugins/snmp__f5packeterrors /etc/munin/plugins/snmp_lb-uscdr01.sli-systems.net_f5packeterrors
ln -s /usr/share/munin/plugins/snmp__f5throughput /etc/munin/plugins/snmp_lb-uscdr01.sli-systems.net_f5throughput
ln -s /usr/share/munin/plugins/snmp__load /etc/munin/plugins/snmp_lb-uscdr01.sli-systems.net_load
ln -s /usr/share/munin/plugins/snmp__memory /etc/munin/plugins/snmp_lb-uscdr01.sli-systems.net_memory
ln -s /usr/share/munin/plugins/snmp__cpuload /etc/munin/plugins/snmp_lb-uscdr02.sli-systems.net_cpuload
ln -s /usr/share/munin/plugins/snmp__f5conn /etc/munin/plugins/snmp_lb-uscdr02.sli-systems.net_f5conn
ln -s /usr/share/munin/plugins/snmp__f5connsec /etc/munin/plugins/snmp_lb-uscdr02.sli-systems.net_f5connsec
ln -s /usr/share/munin/plugins/snmp__f5natcurrconn /etc/munin/plugins/snmp_lb-uscdr02.sli-systems.net_f5natcurrconn
ln -s /usr/share/munin/plugins/snmp__f5packeterrors /etc/munin/plugins/snmp_lb-uscdr02.sli-systems.net_f5packeterrors
ln -s /usr/share/munin/plugins/snmp__f5throughput /etc/munin/plugins/snmp_lb-uscdr02.sli-systems.net_f5throughput
ln -s /usr/share/munin/plugins/snmp__load /etc/munin/plugins/snmp_lb-uscdr02.sli-systems.net_load
ln -s /usr/share/munin/plugins/snmp__memory /etc/munin/plugins/snmp_lb-uscdr02.sli-systems.net_memory
ln -s /usr/share/munin/plugins/yum /etc/munin/plugins/yum
ln -s /usr/share/munin/plugins/sendmail_mailqueue /etc/munin/plugins/sendmail_mailqueue
ln -s /usr/share/munin/plugins/sendmail_mailstats /etc/munin/plugins/sendmail_mailstats
ln -s /usr/share/munin/plugins/sendmail_mailtraffic /etc/munin/plugins/sendmail_mailtraffic


# start cron
/usr/sbin/crond &
# start local munin-node
/usr/sbin/munin-node &
# start snmp
/usr/sbin/snmpd &

#change permission for munin persistent volumes before starting httpd
chown -R munin:munin /var/log/munin
chown -R munin:munin /var/lib/munin
chown -R munin:munin /var/cache/munin

mkdir -p /var/lib/munin/journal
chown -R root:munin /var/lib/munin/journal
chmod -R 0755 /var/lib/munin/journal
chgrp munin /var/run/rrdcached.sock
chmod g+rw /var/run/rrdcached.sock

# start rrdcached
/usr/bin/rrdcached -s munin -m 0660 -l unix:/var/run/rrdcached.sock -b /var/lib/munin/ -B -j /var/lib/munin/journal/ -F -w 1800 -z 1800 -f 3600

# start apache
# Make sure we're not confused by old, incompletely-shutdown httpd
# context after restarting the container.  httpd won't start correctly
# if it thinks it is already running.
rm -rf /run/httpd/* /tmp/httpd*

/usr/sbin/apachectl -DFOREGROUND