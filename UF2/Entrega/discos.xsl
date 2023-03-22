<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="discos">
    <html>
      <body>
        <h1>Lista de discos</h1>
        <table style="border: 1px solid blue">
            
          <tr style="background-color:lightblue">
            <th>Interprete</th>
            <th>Miembros</th>
            <th>Título del disco</th>
          </tr>
          <xsl:for-each select="disco">
            <tr>
              <td>
                <xsl:value-of select="//group[@id=current()/interpreter/@id]/name"/>
              </td>
              <td>
                <xsl:for-each select="//group[@id=current()/interpreter/@id]/member">
                  <xsl:value-of select="."/>
                  <xsl:if test="position() != last()">,</xsl:if>
                </xsl:for-each>
              </td>
              <td>
                <xsl:value-of select="title"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
