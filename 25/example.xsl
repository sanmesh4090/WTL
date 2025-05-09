<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Template to match the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Bookstore Catalog</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                    }
                    h1 {
                        color: darkblue;
                    }
                    .book {
                        margin: 10px 0;
                        padding: 10px;
                        border: 1px solid #ccc;
                    }
                    .book h2 {
                        margin: 0;
                        color: #333;
                    }
                    .author, .price, .publish_date {
                        font-size: 0.9em;
                        color: #555;
                    }
                </style>
            </head>
            <body>
                <h1>Bookstore Catalog</h1>
                <xsl:apply-templates select="bookstore/book"/>
            </body>
        </html>
    </xsl:template>
    
    <!-- Template to match each book element -->
    <xsl:template match="book">
        <div class="book">
            <h2><xsl:value-of select="title"/></h2>
            <div class="author">Author: <xsl:value-of select="author"/></div>
            <div class="price">Price: $<xsl:value-of select="price"/></div>
            <div class="publish_date">Published on: <xsl:value-of select="publish_date"/></div>
        </div>
    </xsl:template>
</xsl:stylesheet>
