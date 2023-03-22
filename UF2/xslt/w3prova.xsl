<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>
<h1>CD Colllections</h1>
<table border="1">
<tr bgcolor="#FF5733">
  <th>Title</th>
      <th>Artist</th>
      <th>Company</th>
</tr>
<xsl:for-each select = "catalog/cd">
<tr>
<td><xsl:value-of select="title"/></td>
<td><xsl:value-of select="artist"/></td>
<td><xsl:value-of select ="company"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>