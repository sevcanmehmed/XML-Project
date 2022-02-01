<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <healthy-food-catalog>
            <foods>
                <food>
                    <name> <xsl:value-of select="healthy-food-catalog/foods/food/name"/></name>
                    <benefits><xsl:value-of select="healthy-food-catalog/foods/food/benefits"/> </benefits>
                    <storage><xsl:value-of select="healthy-food-catalog/foods/food/expire-date/@storage"/></storage>
                    <expire-date><xsl:value-of select="healthy-food-catalog/foods/food/expire-date"/></expire-date>
                    <quantity> <xsl:value-of select="healthy-food-catalog/foods/food/nutritional-content/@size"/> </quantity>
                    <calories><xsl:value-of select="healthy-food-catalog/foods/food/nutritional-content/calories"/></calories>
                    <carbonhydrates><xsl:value-of select="healthy-food-catalog/foods/food/nutritional-content/carbs"/></carbonhydrates>
                    <fats><xsl:value-of select="healthy-food-catalog/foods/food/nutritional-content/fats"/></fats>
                    <protein><xsl:value-of select="healthy-food-catalog/foods/food/nutritional-content/protein"/></protein>
                </food>
            </foods>
        </healthy-food-catalog>

    </xsl:template>
</xsl:stylesheet>