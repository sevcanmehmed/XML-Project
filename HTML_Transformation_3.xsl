<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>XML Каталог със здравословна храна</title>
            </head>
            <body>
                <table border="1">
                    <tr background-color = "#9acd32">
                        <th>Име</th>
                        <th>Количество</th>
                        <th>Калории</th>
                        <th>Въглехидрати</th>
                        <th>Мазнини</th>
                        <th>Протеин</th>
                        <th>Витамин</th>
                    </tr>
                    <xsl:for-each select="healthy-food-catalog/foods/food">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="nutritional-content/@size"/></td>
                            <td><xsl:value-of select="nutritional-content/calories"/></td>
                            <td><xsl:value-of select="nutritional-content/carbs"/></td>
                            <td><xsl:value-of select="nutritional-content/fat"/></td>
                            <td><xsl:value-of select="nutritional-content/protein"/></td>
                            <td><xsl:value-of select="nutritional-content/vitamin"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>
</xsl:stylesheet>