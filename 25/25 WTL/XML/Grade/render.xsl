<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <body>
            <h2>Student Grades</h2>
            <ul>
               <xsl:for-each select="students/student">
                  <li>
                     <xsl:value-of select="name"/> - Grade: <xsl:value-of select="grade"/>
                  </li>
               </xsl:for-each>
            </ul>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
