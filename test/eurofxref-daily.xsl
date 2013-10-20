<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml" xmlns:fo="http://www.w3.org/1999/XSL/Format"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xref="http://www.ecb.int/vocabulary/2002-08-01/eurofxref"
		exclude-result-prefixes="xsl fo">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" font-family="Arial" font-size="10pt" language="en">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="A4Form" page-height="29.7cm" page-width="21cm" margin="1cm 1.5cm 1cm 1.5cm">
					<fo:region-body />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="A4Form" initial-page-number="1">
				<fo:flow flow-name="xsl-region-body" font-size="8pt" font-family="Courier New">
					<fo:block-container width="125mm" border-bottom-style="solid" border-width="thin" space-after="2mm">
						<fo:block space-after="2mm">
							<xsl:text>Currency rates</xsl:text>
						</fo:block>
						<fo:table table-layout="fixed" width="125mm">
							<fo:table-column column-width="100mm"/>
							<fo:table-column column-width="25mm"/>
							<fo:table-body>
								<fo:table-row text-align="center" font-weight="bold" border-top-style="solid" border-bottom-style="solid" border-width="thin">
									<fo:table-cell text-align="left">
										<fo:block>Currency</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>rate</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<xsl:for-each select="//xref:Cube[@currency]">
									<fo:table-row text-align="center">
										<fo:table-cell text-align="left">
											<fo:block>
												<xsl:value-of select="@currency"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												<xsl:value-of select="@rate"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:for-each>
							</fo:table-body>
						</fo:table>
					</fo:block-container>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
