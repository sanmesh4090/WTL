<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Student Data</title>
                <style>
                    table { border-collapse: collapse; width: 50%; }
                    th, td { border: 1px solid black; padding: 5px; text-align: left; }
                    th { background-color: #f2f2f2; }
                </style>
            </head>
            <body>
                <h2>Student List</h2>
                <table>
                    <tr>
                        <th>Roll No</th>
                        <th>Name</th>
                    </tr>
                    <xsl:apply-templates select="//student"/>
                </table>

                <!-- Parent Axis Example -->
                <h2>Parent of 'Samix'</h2>
                <p>
                    <xsl:value-of select="//name[text()='Samix']/parent::student/rollno"/>
                </p>

                <!-- Ancestor Axis Example -->
                <h2>Ancestor of 'Samix'</h2>
                <p>
                    <xsl:value-of select="//name[text()='Samix']/ancestor::Class"/>
                </p>

                <!-- Ancestor-or-Self Axis Example -->
                <h2>Ancestor or Self of 'Samix'</h2>
                <p>
                    <xsl:value-of select="//name[text()='Samix']/ancestor-or-self::name"/>
                </p>

                <!-- Child Axis Example -->
                <h2>First Child Name</h2>
                <p>
                    <xsl:value-of select="//student[1]/child::name"/>
                </p>

                <!-- Descendant Axis Example -->
                <h2>All Descendants of Class</h2>
                <ul>
                    <xsl:for-each select="/Class/descendant::name">
                        <li><xsl:value-of select="."/></li>
                    </xsl:for-each>
                </ul>

                <!-- Descendant-or-Self Axis Example -->
                <h2>Descendant-or-Self Axis on Class</h2>
                <p>
                    <xsl:value-of select="/Class/descendant-or-self::Class"/>
                </p>

                <!-- Following-Sibling Axis Example -->
                <h2>Students After 'Samix'</h2>
                <ul>
                    <xsl:for-each select="//name[text()='Samix']/parent::student/following-sibling::student">
                        <li><xsl:value-of select="name"/></li>
                    </xsl:for-each>
                </ul>

                <!-- Preceding-Sibling Axis Example -->
                <h2>Student Before 'Samix'</h2>
                <p>
                    <xsl:value-of select="//name[text()='Samix']/parent::student/preceding-sibling::student[1]/name"/>
                </p>

                <!-- Following Axis Example -->
                <h2>Next Element After 'Samix'</h2>
                <p>
                    <xsl:value-of select="//name[text()='Samix']/following::name[1]"/>
                </p>

                <!-- Preceding Axis Example -->
                <h2>Previous Element Before 'Samix'</h2>
                <p>
                    <xsl:value-of select="//name[text()='Samix']/preceding::name[1]"/>
                </p>

                <!-- Attribute Axis Example (Assuming students have attributes) -->
                <h2>Student with Roll Number 500</h2>
                <p>
                    <xsl:value-of select="//student[rollno='500']/child::name"/>
                </p>

                <!-- Namespace Axis Example -->
                <h2>Namespace Example</h2>
                <p>
                    <xsl:value-of select="namespace::*"/>
                </p>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="student">
        <tr>
            <td><xsl:value-of select="rollno"/></td>
            <td><xsl:value-of select="name"/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>