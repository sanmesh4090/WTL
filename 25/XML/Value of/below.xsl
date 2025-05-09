<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Books with Price > 200</title>
            </head>
            <body>
                <h2>Books with Price Greater Than 200</h2>
                <ul>
                    <xsl:for-each select="library/book[price > 200]">
                        <li><xsl:value-of select="title"/> - <xsl:value-of select="price"/></li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>