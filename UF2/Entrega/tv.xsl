<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <!-- Copiar el nodo raíz y sus atributos -->
   <xsl:template match="/">
      <cadena>
         <nom>Un TV</nom>
         <programas>
            <xsl:apply-templates select="programas/programa"/>
         </programas>
      </cadena>
   </xsl:template>
   
   <!-- Aplicar plantilla para cada programa -->
   <xsl:template match="programa">
      <programa hora="{@hora}">
         <nom-programa>
            <xsl:value-of select="nombre"/>
         </nom-programa>
         <audiencia>
            <xsl:value-of select="audiencia"/>
         </audiencia>
      </programa>
   </xsl:template>
</xsl:stylesheet>
