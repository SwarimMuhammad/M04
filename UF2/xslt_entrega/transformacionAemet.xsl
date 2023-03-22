<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
<html>
<head>
<title>Información meteorológica</title>
</head>
<body>
<h1>Información meteorológica</h1>
<table border="1">
<tr>
<th>Fecha</th>
<th>Temperatura máxima</th>
<th>Temperatura mínima</th>
</tr>
<xsl:for-each select="root/prediccion/dia">
<xsl:sort select="temperatura/maxima" data-type="number" order="descending"/>
<tr>
<td><xsl:value-of select="@fecha"/></td>
<td><xsl:value-of select="temperatura/maxima"/></td>
<td><xsl:value-of select="temperatura/minima"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>

</xsl:stylesheet>