<?xml version ="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html lang="es">
    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Ejemplo</title>
    </head>
    <body>
        <h2>Menú de bocadillos</h2>
        <table>
            <xsl:for-each select="/menu/comida">
                <xsl:if test="precio &lt; 6">
                <tr>
                    <td><xsl:value-of select="nombre" /></td>
                    <td><xsl:value-of select="precio" /></td>
                </tr>
                </xsl:if>
            </xsl:for-each>
        </table>
        <h2>Menú de paellas baratas</h2>
        <table>
            <xsl:for-each select="/menu/comida">
                <xsl:choose>
                    <xsl:when test="precio &gt;= 9 and precio &lt; 10">
                        <tr>
                            <td><xsl:value-of select="nombre" /></td>
                            <td><xsl:value-of select="precio" /></td>
                        </tr>
                    </xsl:when>
                    <xsl:otherwise>
                        <tr>
                            <td><del><xsl:value-of select="nombre" /></del></td>
                            <td><del><xsl:value-of select="precio" /></del></td>
                        </tr>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>