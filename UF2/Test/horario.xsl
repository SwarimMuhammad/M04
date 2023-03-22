<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Horario Especialidad DAWe</title>
      </head>
      <body>
        <h1>Horario Especialidad DAWe</h1>
        <table border="1">
          <tr>
            <th>Hora</th>
            <th>Lunes</th>
            <th>Martes</th>
            <th>Miércoles</th>
            <th>Jueves</th>
            <th>Viernes</th>
          </tr>
          <xsl:for-each select="//clase[@especialidad='DAWe']">
            <xsl:variable name="hora" select="hora"/>
            <tr>
              <td><xsl:value-of select="$hora/@inicio"/> - <xsl:value-of select="$hora/@fin"/></td>
              <xsl:for-each select="aula/modulo">
                <xsl:variable name="dia" select="substring-after(@dia, ' ')"/>
                <xsl:variable name="asignatura" select="."/>
                <td>
                  <xsl:choose>
                    <xsl:when test="$dia='lunes'">
                      <xsl:value-of select="concat(substring-before($asignatura,' '),' ',@profesor)"/>
                    </xsl:when>
                    <xsl:when test="$dia='martes'">
                      <xsl:value-of select="concat(substring-before($asignatura,' '),' ',@profesor)"/>
                    </xsl:when>
                    <xsl:when test="$dia='miercoles'">
                      <xsl:value-of select="concat(substring-before($asignatura,' '),' ',@profesor)"/>
                    </xsl:when>
                    <xsl:when test="$dia='jueves'">
                      <xsl:value-of select="concat(substring-before($asignatura,' '),' ',@profesor)"/>
                    </xsl:when>
                    <xsl:when test="$dia='viernes'">
                      <xsl:value-of select="concat(substring-before($asignatura,' '),' ',@profesor)"/>
                    </xsl:when>
                    <xsl:otherwise/>
                  </xsl:choose>
                </td>
              </xsl:for-each>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
