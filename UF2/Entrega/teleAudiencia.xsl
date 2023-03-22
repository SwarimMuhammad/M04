<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h1>Programació</h1>
<table border="1">
<tr>
<th>Hora</th>
<th>Nom de la cadena</th>
<th>Posició</th>
<th>Percentatge d'audiencia</th>
<th>Programa</th>
</tr>
<xsl:for-each select="programacio/audiencia">
<xsl:for-each select="cadenes/cadena">
<tr>
<td><xsl:value-of select="../../hora"/></td>
<td><xsl:value-of select="@nom"/></td>
<td><xsl:value-of select="@posicio"/></td>
<td><xsl:value-of select="@percentatge"/>%</td>
<td><xsl:value-of select="."/></td>
</tr>
</xsl:for-each>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>