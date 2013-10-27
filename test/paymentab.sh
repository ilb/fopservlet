#!/bin/sh
set -e
ab2 -p payment.fo -n 30 -c 5 -T text/xml http://localhost:8080/fopservlet/fopservlet
