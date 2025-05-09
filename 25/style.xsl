<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" />
    
    <xsl:template match="/bookstore">
        <html>
            <head>
                <title>Bookstore</title>
            </head>
            <body>
                <h2>Bookstore Inventory</h2>
                <table border="1">
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Year</th>
                        <th>Price</th>
                        <th>Price Category</th>
                    </tr>
                    <xsl:for-each select="book">
                        <xsl:sort select="price" data-type="number" order="ascending"/>
                        <tr>
                            <td><xsl:value-of select="title" /></td>
                            <td><xsl:value-of select="author" /></td>
                            <td><xsl:value-of select="year" /></td>
                            <td><xsl:value-of select="price" /></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="price &gt; 10">Expensive</xsl:when>
                                    <xsl:otherwise>Affordable</xsl:otherwise>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
