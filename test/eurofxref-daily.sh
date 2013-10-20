#!/bin/sh
set -e
xsltproc eurofxref-daily.xsl eurofxref-daily.xml > eurofxref-daily.fo
curl -d @eurofxref-daily.fo http://tomcat-techgoogleinfo.rhcloud.com/fopservlet/fopservlet > eurofxref-daily.pdf