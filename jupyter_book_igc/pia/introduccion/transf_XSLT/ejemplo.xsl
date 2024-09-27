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
        <ul>
            <xsl:apply-templates />
        </ul>
    </body>
    </html>
</xsl:template>

<xsl:template match="/menu/comida">
    <li><xsl:value-of select="nombre"/></li>
</xsl:template>

</xsl:stylesheet>