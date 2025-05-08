<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>XPath Assignment</title>
            </head>
            <body>
                <h1>Assignment - X Path</h1>
                <p>Selecting Title of First Book: <xsl:value-of select="/books/book[1]/title"/></p>
                <p>Selecting Price of First Book: <xsl:value-of select="/books/book[1]/price"/></p>
                <p>Selecting Title of Second Book: <xsl:value-of select="/books/book[2]/title"/></p>
                <p>Selecting Price of Second Book: <xsl:value-of select="/books/book[2]/price"/></p>
                
                <p>Selecting All the Child Elements of Books:</p>
                <ul>
                    <xsl:apply-templates select="/books/book"/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="book">
        <li>
            <b>Title:</b> <xsl:value-of select="title"/> | 
            <b>Price:</b> <xsl:value-of select="price"/>
        </li>
    </xsl:template>
</xsl:stylesheet>