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
                        <th>Категория</th>
                        <th>Количество</th>
                        <th>Цена</th>
                        <th>Произход</th>
                        <th>Снимка</th>
                    </tr>
                    <xsl:for-each select="healthy-food-catalog/foods/food">
                        <tr>
                            <td>
                                <xsl:value-of select="name/."/>
                            </td>
                            <td>
                                <xsl:value-of select="category/."/>
                            </td>
                            <td>
                                <xsl:value-of select="price/@priceGrams"/>
                            </td>
                            <td>
                                <xsl:value-of select="price"/>
                            </td>
                            <td>
                                <xsl:value-of select="ethical-production/country"/>
                            </td>
                            <td>
                                <img src="{image}"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>