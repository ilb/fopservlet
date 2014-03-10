#!/bin/sh
set -e
curl -d @payment.fo -H "Content-Type: text/xml" http://localhost:8080/fopservlet/fopservlet > payment.pdf
