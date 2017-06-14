FROM centos:latest

ENV TZ="Pacific/Auckland"

# Install packages, EPEL must come first
RUN yum -y update && yum -y install epel-release
RUN yum -y install munin munin-node httpd mod_ldap

# Install snmp for fortigate
RUN yum -y install net-snmp net-snmp-utils

# supervisor configuration
#ADD supervisord.conf /etc/supervisord.conf

# add ldap config for nagios
ADD munin.conf /etc/httpd/conf.d/munin.conf

# add SLI munin plugins
ADD plugins/* /usr/share/munin/plugins/
ADD fortigate /etc/munin/plugin-conf.d/

ADD FORTINET-CORE-MIB.mib.txt /usr/share/snmp/mibs/
ADD FORTINET-FORTIGATE-MIB.mib /usr/share/snmp/mibs/

# add start script
ADD run.sh /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

# turn on rrdcached for munin
RUN sed -i 's/#rrdcached_socket/rrdcached_socket/' /etc/munin/munin.conf

# Define data volumes
VOLUME /var/lib/munin
VOLUME /var/log/munin
VOLUME /etc/munin/munin-conf.d
VOLUME /var/cache/munin/www


EXPOSE 80 4949
CMD ["/usr/local/bin/run"]


