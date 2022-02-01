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
                    <tr>
                        <th>Име</th>
                        <th>Текстура</th>
                        <th>Консистенция</th>
                        <th>Размер</th>
                        <th>Форма</th>
                        <th>Цвят</th>
                        <th>Снимка</th>
                    </tr>
                    <xsl:for-each select="healthy-food-catalog/foods/food">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="texture"/></td>
                            <td><xsl:value-of select="consistency"/></td>
                            <td><xsl:value-of select="appearance/size"/></td>
                            <td><xsl:value-of select="appearance/shape"/></td>
                            <td><xsl:value-of select="appearance/color"/></td>
                            <td><img src="{image}"/></td>

                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>