<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <healthy-food-catalog>
            <foods>
                <food>
                    <name> <xsl:value-of select="healthy-food-catalog/foods/food/name"/></name>
                    <image><xsl:value-of select="healthy-food-catalog/foods/food/image"/></image>
                    <category> <xsl:value-of select="healthy-food-catalog/foods/food/category/@type"/> </category>
                    <quantity> <xsl:value-of select="healthy-food-catalog/foods/food/price/@grams"/> </quantity>
                    <price> <xsl:value-of select="healthy-food-catalog/foods/food/price"/></price>
                    <flavour> <xsl:value-of select="healthy-food-catalog/foods/food/flavour"/></flavour>
                    <recipe-name><xsl:value-of select="healthy-food-catalog/foods/food/recipe/@name"/></recipe-name>
                    <recipe-preparation><xsl:value-of select="healthy-food-catalog/foods/food/recipe/preparation"/></recipe-preparation>
                    <production> <xsl:value-of select="healthy-food-catalog/foods/food/ethical-production/country"/></production>

                </food>
            </foods>
        </healthy-food-catalog>

    </xsl:template>
</xsl:stylesheet>