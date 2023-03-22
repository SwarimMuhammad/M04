<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 
  <xsl:template match="/">
    <library>
      <xsl:apply-templates select="library/book">
        <xsl:sort select="title"/>
      </xsl:apply-templates>
    </library>
  </xsl:template>
 
  <xsl:template match="book">
    <book>
      <title><xsl:value-of select="title"/></title>
      <author><xsl:value-of select="author"/></author>
      <year><xsl:value-of select="year"/></year>
    </book>
  </xsl:template>
 
</xsl:stylesheet>
