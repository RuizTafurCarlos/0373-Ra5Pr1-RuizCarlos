<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2><xsl:value-of select="/biblioteca/llibre[1]/titol"/></h2>
                <p>Títol: <xsl:value-of select="/biblioteca/llibre[1]/titol"/></p>
                <p>Autor: <xsl:value-of select="/biblioteca/llibre[1]/autor"/></p>
                <p>Codi revista: <xsl:value-of select="/biblioteca/revista/@codi"/></p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>