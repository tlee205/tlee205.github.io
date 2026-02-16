<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
<xsl:output method="html" indent="yes"/>
<xsl:template match="/">

        <html>
            <head>
                <title>ABC Financial Startup</title>
                <style>
                    body { font-family: Arial, sans-serif; }
                    .center { text-align: center; }
                   
                </style>
            </head>

            <body>

               
                <h1> ABC Financial Startup</h1>

               
                <div style="text-align:center;">
                    <img src="financialstartup.jpg"
                         alt="ABC Financial Startup"
                         width="200" />
                </div>
    
                
                <p>
                    An introduction about the ABC Financial Startup. We are are very young financial manager company
                    and we are very proud of all our clients. 
                </p>
                <p>
                    We have started with 1 client a little bit more than 10 years ago and we have
                    <strong>
                        <xsl:value-of select="count(Accounts/Client)"/>
                    </strong>
                    clients!
                </p>
                <p>
                There are our clients:
                

                    <xsl:for-each select="Accounts/Client">
                        <xsl:value-of select="Name/First"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="Name/Last"/>

                        <xsl:choose>
                            <xsl:when test="position() = last() - 1">
                                <xsl:text>, and </xsl:text>
                            </xsl:when>
                            <xsl:when test="position() != last()">
                                <xsl:text>, </xsl:text>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </p>

            <p>
            <strong>
                    <xsl:value-of select="count(Accounts/Client[Address/Years &gt; 7])"/>
            </strong>
            have been with us for more than 7 years!
            </p>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>