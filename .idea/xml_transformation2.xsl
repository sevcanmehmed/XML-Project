<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <healthy-food-catalog>
            <foods>
                <food>
                    <name><xsl:value-of select="healthy-food-catalog/foods/food/name/."/></name>
                    <category><xsl:value-of select="healthy-food-catalog/foods/food/category/."/></category>
                    <price><xsl:value-of select="healthy-food-catalog/foods/food/price"/></price>
                    <benefits><xsl:value-of select="healthy-food-catalog/foods/food/benefits/."/></benefits>
                </food>
            </foods>

        </healthy-food-catalog>
    </xsl:template>
</xsl:stylesheet>