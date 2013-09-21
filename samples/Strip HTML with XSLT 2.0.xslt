<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">
	<xsl:template match="/">
		<NewDataSet>
			<xsl:variable name="StripHTML">
				<![CDATA[<\s*\w.*?>|<\s*/\s*\w\s*.*?>]]>
			</xsl:variable>
			<xsl:analyze-string select="@ows_Body" regex="{$StripHTML}">
				<xsl:non-matching-substring>
					<xsl:value-of select="."/>
				</xsl:non-matching-substring>
			</xsl:analyze-string>
		</NewDataSet>
	</xsl:template>
</xsl:stylesheet>