<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Текстура и външен вид</title>
            </head>
            <body>
                <table border="1">
                    <tr background-color = "#9acd32">
                        <th>Име</th>
                        <th>Рецепта</th>
                        <th>Продукти</th>
                        <th>Начин на приготвяне</th>
                        <th>Време на приготвяне</th>
                    </tr>
                    <xsl:for-each select="healthy-food-catalog/foods/food">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="recipe/@name"/></td>
                            <td><xsl:value-of select="recipe/products"/></td>
                            <td><xsl:value-of select="recipe/preparation"/></td>
                            <td><xsl:value-of select="recipe/time"/></td>
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