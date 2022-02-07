<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h4>Filière GINF2</h4>
                <table class="table">
                    <thead>
                        <tr class="lignes text-light" bgcolor="gray">
                            <th scope="col">CNE</th>
                            <th scope="col">NOM</th>
                            <th scope="col">PRENOM</th>
                            <th scope="col">NOTES</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="Notes/Note">
                            <xsl:if test="Matiere[@codeMatiere='GINF31']">
                                <tr>
                                    <td><xsl:value-of select="CNE"/></td>
                                    <td><xsl:value-of select="LastName"/></td>
                                    <td><xsl:value-of select="FirstName"/></td>
                                    <xsl:choose>
                                        <xsl:when test="Matiere &lt;= 8">
                                            <td bgcolor="red">
                                                <xsl:value-of select="Matiere"/>
                                            </td>
                                        </xsl:when>
                                        <xsl:when test="Matiere &lt; 12">
                                            <td bgcolor="orange">
                                                <xsl:value-of select="Matiere"/></td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td bgcolor="green"><xsl:value-of select="Matiere"/></td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>