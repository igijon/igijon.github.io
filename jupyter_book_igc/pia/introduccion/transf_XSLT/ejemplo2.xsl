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
        <h2>Menú del restaurante</h2>
        <table>
            <xsl:for-each select="/menu/comida">
                <xsl:sort select="precio"
                          order = "descending"
                          data-type="number" />
                <tr>
                    <td><xsl:value-of select="nombre" /></td>
                    <td><xsl:value-of select="precio" /></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>


</xsl:stylesheet>