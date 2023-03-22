<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version"1.0" encoding "8.0" indent="yes"/>
<xsl:template match="/">
<lista>
    <xsl: for-each select="discos/disco">   
           <disco>
              <xsl: value-of select= "title">
             interpretado por 
             <xsl:variable name="id-group" select = "interpreter/@id">
             <xsl:for-each select = "../group">
             <xsl:if test = "@id = $id-group">
             <xsl:value-of select = "name"></xsl:value-of>
             </xsl:if>
            
                </xsl:for-each>
    
             </disco>
         </xsl:for-each>

</lista>
</xsl:template>
<