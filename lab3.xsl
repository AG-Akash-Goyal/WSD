<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/Interior-Design-Website">
        <html>
            <body>
                <h2>Interior Design Website</h2>
                <table border="20">
                    <h3>Customer</h3>
                    <tr bgcolor="yellow">
                        <th>C_ID</th>
                        <th bgcolor="lightgreen">Name</th>
                        <th bgcolor="lightpink">Age</th>
                        <th bgcolor="lightcyan">Gender</th>
                    </tr>
                    <xsl:for-each select="Customer">
                        <tr>
                            <td bgcolor="Orange">
                                <xsl:value-of select="C_ID" />
                            </td>
                            <td bgcolor="lightBlue">
                                <xsl:value-of select="Name" />
                            </td>
                            <td bgcolor="whitelight">
                                <xsl:value-of select="Age" />
                            </td>
                            <td bgcolor="Green">
                                <xsl:value-of select="Gender" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <table border="40">
                    <h4>Design</h4>
                    <tr bgcolor="red">
                        <th>D_ID</th>
                        <th bgcolor="dimeblue">Price</th>
                    </tr>
                    <xsl:for-each select="Design">
                        <tr>
                            <td bgcolor="lightbrown">
                                <xsl:value-of select="D_ID" />
                            </td>
                            <td bgcolor="cyan">
                                <xsl:value-of select="Price" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>