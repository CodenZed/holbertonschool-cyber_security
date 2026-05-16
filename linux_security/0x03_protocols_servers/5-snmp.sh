#!/bin/bash
grep -v "^#" /etc/snmp/snmpd.conf | grep "public"
