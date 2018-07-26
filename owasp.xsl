<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/OWASPZAPReport">
	<html>
	<style>
		body {font-family: Arial;}
	</style>
	<body>
	<h2>OWASP REPORT - <xsl:value-of select="site/@name"/></h2>
	<table border="1">
		<tr bgcolor="#9acd32">
			<th>Alert</th>
			<th>Risk</th>
			<th>Description</th>
			<th>Instances</th>
		</tr>
		<xsl:for-each select="site/alerts/alertitem">
		<xsl:choose>
			<xsl:when test="riskcode = 1">
			<tr>
				<td><xsl:value-of select="riskdesc"/></td>
				<td><xsl:value-of select="alert"/></td>
				<td><xsl:value-of select="desc"/></td>
				<td>
					<xsl:for-each select="instances/instance">
					<p><xsl:value-of select="uri"/></p>
					</xsl:for-each>
				</td>
			</tr>
		</xsl:when>
		<xsl:when test="riskcode = 2">
			<tr bgcolor="coral">
				<td><xsl:value-of select="riskdesc"/></td>
				<td><xsl:value-of select="alert"/></td>
				<td><xsl:value-of select="desc"/></td>
				<td>
					<xsl:for-each select="instances/instance">
					<p><xsl:value-of select="uri"/></p>
					</xsl:for-each>
				</td>
			</tr>
			</xsl:when>
			<xsl:otherwise>
			<tr bgcolor="red">
				<td><xsl:value-of select="riskdesc"/></td>
				<td><xsl:value-of select="alert"/></td>
				<td><xsl:value-of select="desc"/></td>
				<td>
					<xsl:for-each select="instances/instance">
					<p><xsl:value-of select="uri"/></p>
					</xsl:for-each>
				</td>
			</tr>
			</xsl:otherwise>
		</xsl:choose>
		</xsl:for-each>
	</table>
	</body>
	</html>
	</xsl:template>
</xsl:stylesheet>