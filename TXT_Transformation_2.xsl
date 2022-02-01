<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        Каталог със здравословна храна
        <xsl:for-each select="/healthy-food-catalog/foods/food">
            Име на храната: <xsl:value-of select="name/."/>
            Ползи: <xsl:value-of select="benefits"/>
            Текстура: <xsl:value-of select="texture"/>
            Консистенция: <xsl:value-of select="consistency"/>
            Вкус: <xsl:value-of select="flavour"/>
            Външен вид: <xsl:call-template name="appearance"/>
            Рецепта:   <xsl:call-template name="recipe"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
    </xsl:template>
    <xsl:template name="appearance">
        Размер: <xsl:value-of select="appearance/size"/>
        Форма: <xsl:value-of select="appearance/shape"/>
        Цвят: <xsl:value-of select="appearance/color"/>
    </xsl:template>

    <xsl:template name="recipe">
        Продукти:            <xsl:value-of select="recipe/products"/>
        Начин на приготвяне: <xsl:value-of select="recipe/preparation"/>
        Време на приготвяне: <xsl:value-of select="recipe/time"/>
    </xsl:template>

    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>
</xsl:stylesheet>