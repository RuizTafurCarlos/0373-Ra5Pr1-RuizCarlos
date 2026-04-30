<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <html>
            <body>                
                <h2>Per any</h2>
                <ul>
                    <xsl:for-each select="/biblioteca/llibre">
                        <xsl:sort select="any" data-type="number" order="ascending"/>
                        <li><xsl:value-of select="titol"/> (<xsl:value-of select="any"/>)</li>
                    </xsl:for-each>
                </ul>
                <h2>Per títol</h2>
                <ul>
                    <xsl:for-each select="/biblioteca/llibre">
                        <xsl:sort select="titol" order="ascending"/>
                        <li><xsl:value-of select="titol"/></li>
                    </xsl:for-each>
                </ul>
                <h2>Per preu (descendent)</h2>
                <ul>
                    <xsl:for-each select="/biblioteca/llibre">
                        <xsl:sort select="preu" data-type="number" order="descending"/>
                        <li><xsl:value-of select="titol"/> — <xsl:value-of select="preu"/>€</li>
                    </xsl:for-each>
                </ul>
                <h2>Taula per any</h2>
                <table border="1">
                    <tr><th>Títol</th><th>Autor</th><th>Any</th><th>Preu</th></tr>
                    <xsl:for-each select="/biblioteca/llibre">
                        <xsl:sort select="any" data-type="number" order="ascending"/>
                        <tr>
                            <td><xsl:value-of select="titol"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="any"/></td>
                            <td><xsl:value-of select="preu"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h2>Disponibles per títol</h2>
                <ul>
                    <xsl:for-each select="/biblioteca/llibre[@estat='disponible']">
                        <xsl:sort select="titol" order="ascending"/>
                        <li><xsl:value-of select="titol"/></li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>   
</xsl:stylesheet>