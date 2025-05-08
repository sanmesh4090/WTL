<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Books Titles and Authors</title>
            </head>
            <body>
                <h2>Book Titles and Authors (Bullet List)</h2>
                <ul>
                    <xsl:for-each select="library/book">
                        <li>
                            <xsl:value-of select="title"/> - <xsl:value-of select="author"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
