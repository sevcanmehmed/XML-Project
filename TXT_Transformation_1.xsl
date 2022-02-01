<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        Каталог със здравословна храна
        <xsl:for-each select="/healthy-food-catalog/foods/food">
            Име на храната: <xsl:value-of select="name/."/>
            Категория: <xsl:value-of select="category/@type"/>
            Количество: <xsl:value-of select="price/@grams"/>
            Цена: <xsl:value-of select="price"/>
            Калории: <xsl:value-of select="nutritional-content/calories"/>
            Протеин: <xsl:value-of select="nutritional-content/protein"/>
            Витамин: <xsl:value-of select="nutritional-content/vitamin" />
            Количество витамин: <xsl:value-of select="nutritional-content/vitamin/@quantity" />
            Произход: <xsl:value-of select="ethical-production/country"/>
            <xsl:value-of select="ethical-production/country/@countryPart"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
    </xsl:template>
    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>
</xsl:stylesheet>