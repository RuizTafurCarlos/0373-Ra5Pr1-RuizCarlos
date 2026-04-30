<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    .disponible { background-color: #d4edda; }
                    .prestat    { background-color: #f8d7da; }
                </style>
            </head>
            <body>
                <h1>Biblioteca</h1>
                <table border="1">
                    <tr><th>Títol</th><th>Autor</th><th>Any</th><th>Preu</th><th>Estat</th></tr>
                    <xsl:for-each select="/biblioteca/llibre">
                        <tr class="{@estat}">
                            <td><xsl:value-of select="titol"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="any"/></td>
                            <td><xsl:value-of select="preu"/>€</td>
                            <td><xsl:value-of select="@estat"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <p>Total de llibres: <xsl:value-of select="count(/biblioteca/llibre)"/></p>
                <p>Preu mitjà: 
                    <xsl:value-of select="sum(/biblioteca/llibre/preu) div count(/biblioteca/llibre)"/>€
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>