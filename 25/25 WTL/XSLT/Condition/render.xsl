<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1>Assignment - XSLT</h1>
            <h2>FOR EACH</h2>
            <table border="1">
                <tr>
                    <th>Title</th>
                    <th>Author</th>
                </tr>
                <xsl:for-each select="books/book">
                    <tr>
                        <td><xsl:value-of select="title"/></td>
                        <td><xsl:value-of select="author"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <h2>FOR EACH - Category Python</h2>
            <table border="1">
                <tr>
                    <th>Title</th>
                    <th>Author</th>
                </tr>
                <xsl:for-each select="books/book[@category='Python']">
                    <tr>
                        <td><xsl:value-of select="title"/></td>
                        <td><xsl:value-of select="author"/></td>
                    </tr>
                </xsl:for-each>
            </table>

            <h2>IF PRICE Greater Than 500</h2>
            <table border="1">
                <tr>
                    <th>Title</th>
                    <th>Author</th>
                </tr>
                <xsl:for-each select="books/book">
                    <xsl:if test="price &gt; 500">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="author"/></td>
                        </tr>
                    </xsl:if>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
