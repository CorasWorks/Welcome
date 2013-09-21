<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">
	<xsl:template match="/">
		<NewDataSet>
			<xsl:for-each-group select="NewDataSet/Data" group-by="LEVEL_1_DATA">
				<xsl:value-of select="current-grouping-key()"/>
				<xsl:for-each-group select="current-group()" group-by="LEVEL_2_DATA">
					<xsl:value-of select="current-grouping-key()"/>
					<xsl:for-each-group select="current-group()" group-by="LEVEL_2_DATA">
						<xsl:value-of select="current-grouping-key()"/>
						<xsl:for-each select="current-group()">
							<xsl:value-of select="ITEMS"/>
						</xsl:for-each>
					</xsl:for-each-group>
				</xsl:for-each-group>
			</xsl:for-each-group>
		</NewDataSet>
	</xsl:template>
</xsl:stylesheet>