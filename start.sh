#!/bin/sh

set -e

varnishd -a 0.0.0.0:8080 -F -f $VCL_CONFIG -s malloc,$CACHE_SIZE
sleep 1
varnishlog
