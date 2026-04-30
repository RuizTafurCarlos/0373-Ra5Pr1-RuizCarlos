<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Disponibles</h2>
                <ul>
                    <xsl:for-each select="/biblioteca/llibre[@estat='disponible']">
                        <li><xsl:value-of select="titol"/></li>
                    </xsl:for-each>
                </ul>
                <h2>Preu > 12</h2>
                <ul>
                    <xsl:for-each select="/biblioteca/llibre[preu > 12]">
                        <li><xsl:value-of select="titol"/></li>
                    </xsl:for-each>
                </ul>
                <h2>Tots els llibres</h2>
                <ul>
                    <xsl:for-each select="/biblioteca/llibre">
                        <li>
                            <xsl:value-of select="titol"/>
                            <xsl:if test="any &lt; 1980"> — Llibre antic</xsl:if>
                            <xsl:choose>
                                <xsl:when test="@estat='prestat'"> — En préstec</xsl:when>
                                <xsl:otherwise> — Disponible</xsl:otherwise>
                            </xsl:choose>
                        </li>
                    </xsl:for-each>
                </ul>
                <h2>Fantasia o Distopia</h2>
                <ul>
                    <xsl:for-each select="/biblioteca/llibre[genere='fantasia' or genere='distopia']">
                        <li><xsl:value-of select="titol"/></li>
                    </xsl:for-each>
                </ul> 
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>