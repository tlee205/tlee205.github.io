<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 <xsl:template match="/">
 
 <html>
  <head>
   <title>List of Clients</title>
   <style> table, th, td { border: 1px double blue; } 
   th { background-color: white; }
    .low { color: red; font-weight:bold; } 
    .right{text-align:right;}</style>
  </head>
  <body>
    <h1>List of Clients</h1>

    <table>
     <tr>
      <th>Name</th>
      <th>Phone</th>
      <th>Email</th>
      <th>Account Total</th>
     </tr>
     <xsl:for-each select="Accounts/Client">
      <tr>
       <td>
        <xsl:value-of select="concat(Name/First,' ', Name/Last)"/>
       </td>
       <td>
        <xsl:value-of select="Phone"/>
       </td>
       <td>
        <xsl:value-of select="E-mail"/>
       </td>
       <xsl:choose>
        <xsl:when test="Account_Total &lt;= 80000">
        <td class="right low">
           $<xsl:value-of select="Account_Total"/>
         </td>
        </xsl:when>
        <xsl:otherwise>
         <td class="right">
          $<xsl:value-of select= "Account_Total"/>
         </td>
        </xsl:otherwise>
        </xsl:choose>
      </tr>
     </xsl:for-each>
    </table>
   </body>
  </html>
 </xsl:template>
</xsl:stylesheet>
