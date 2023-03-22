<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes"/>

  <!-- Template para la raíz del documento -->
  <xsl:template match="/">
    <cadena>
      <nom>Un TV</nom>
      <programas>
        <!-- Aplicamos el template para cada cadena -->
        <xsl:apply-templates select="//cadena"/>
      </programas>
    </cadena>
  </xsl:template>

  <!-- Template para cada cadena -->
  <xsl:template match="cadena">
    <!-- Iteramos sobre los programas de la cadena -->
    <xsl:for-each select="programas/programa">
      <programa hora="{@hora}">
        <nom-programa><xsl:value-of select="nom-programa"/></nom-programa>
        <audiencia><xsl:value-of select="audiencia"/></audiencia>
      </programa>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
