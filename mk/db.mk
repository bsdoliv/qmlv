include ${TOPDIR}/mk/vars.mk

.PHONY: dbcreate
dbcreate:
	@mysql --protocol tcp -p${MYSQL_PASSWD} -uroot < ${TOPDIR}/db/cas_db_dump.sql

.PHONY: dbdown
dbdown:
	@echo "drop database ticket;" | mysql --protocol tcp -p${MYSQL_PASSWD} -uroot

.PHONY: dbstart
dbstart:
	@sudo /opt/mysql56/bin/mysqld.sh start

.PHONY: dbstop
dbstop:
	@sudo /opt/mysql56/bin/mysqld.sh stop

.PHONY: dbcli
dbcli:
	@mysql --protocol tcp -uroot ticket
