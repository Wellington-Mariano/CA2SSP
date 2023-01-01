<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
        <table id="menuTable" border="1" class="indent">
            <thead>
                <tr>
                    <th colspan="3">Roastmoreland 30-34 Menu</th>
                </tr>
                <tr>
                    <th>Select</th>
                    <th>Item</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="//speciality">
                    <tr>
                        <td colspan="3">
                            <xsl:value-of select="@type"/>
                        </td>
                    </tr>
                    <xsl:for-each select="info">
                        <tr>
                            <xsl:attribute name="boolean(@vegan)">
                                <xsl:value-of select="listing"/>
                            </xsl:attribute>
                            <td align="center">
                                <input name="item0" type="checkbox"/>
                            </td>
                            <td>
                                <xsl:value-of select="listing"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </tbody>
        </table>
	</xsl:template>
</xsl:transform>