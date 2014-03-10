#!/bin/sh
set -e
curl -o eurofxref-daily.xml http://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml
xsltproc eurofxref-daily.xsl eurofxref-daily.xml > eurofxref-daily.fo
curl -d @eurofxref-daily.fo -H "Content-Type: text/xml" http://localhost:8080/fopservlet/fopservlet > eurofxref-daily.pdf
