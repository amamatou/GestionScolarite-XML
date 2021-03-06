<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">
<xsl:template match="/">
	<fo:root>
			<fo:layout-master-set>
				<fo:simple-page-master margin-right="0.2cm"
margin-left="0.2cm" margin-bottom="0.3cm"
margin-top="0.1cm" page-width="25cm"
page-height="29.7cm" master-name="simpleA4">
	<fo:region-body margin-top="25mm" margin-bottom="20mm"/>
	<fo:region-before region-name="xsl-region-before" extent="25mm" display-align="before" precedence="true"/>
			
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="simpleA4">

            <fo:static-content flow-name="xsl-region-before">
					<fo:table table-layout="fixed" width="100%" font-size="10pt" border-color="black" border-width="0.4mm" border-style="solid" background-color="#48a3b9">
						<fo:table-column column-width="proportional-column-width(20)"/>
						<fo:table-column column-width="proportional-column-width(45)"/>
						<fo:table-column column-width="proportional-column-width(20)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left"  padding-left="2mm" font-weight="bold">
									<fo:block>
										<xsl:text>Université Abdelmalek Essaâdi </xsl:text>
									</fo:block>
                                    <fo:block space-before="13mm">
                                    <xsl:text>Session 1 2021/2022 </xsl:text>
                                    </fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" padding-top="8mm">
									<fo:block font-weight="bold">PROCES VERBAL DEFINITIF DE DELIBERATION D'ADMISSION</fo:block>
                                    <fo:block>GINF2</fo:block>
                                    <fo:block font-weight="bold">Ecolde Nationale des Sciences Appliquées de Tanger</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="right" padding-top="6mm" padding-right="2mm">
									<fo:block >Date 20/08/2022</fo:block>
									<fo:block space-before="1mm">Page <fo:page-number/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:static-content>
                
				<fo:flow flow-name="xsl-region-body">
                <fo:block>
					<fo:table >
				<fo:table-column column-width="3cm"/>
                        <fo:table-column column-width="1.45cm"/>
                         <fo:table-column column-width="1.45cm"/>
                         <fo:table-column column-width="1.45cm"/>
                         <fo:table-column column-width="1.45cm"/>
                         <fo:table-column column-width="1.45cm"/>
                         <fo:table-column column-width="1.45cm"/>
                         <fo:table-column column-width="1.45cm"/>
                         <fo:table-column column-width="1.45cm"/>
                         <fo:table-column column-width="1.45cm"/>
                         <fo:table-column column-width="1.45cm"/>
                         <fo:table-column column-width="1.45cm"/>
                         <fo:table-column column-width="1.45cm"/>
                         <fo:table-column column-width="2.2cm"/>

                         <fo:table-header font-weight="bold" font-size="10pt" text-align="center" background-color="#176f85">
                            <fo:table-row border-width="1px" border-style="solid" height="1cm">
                            <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white">Informations des Etudiants</fo:block>
                              </fo:table-cell> 
                              <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white"> GINF31 </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white">GINF32 </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white">GINF33 </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white">GINF34 </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white">GINF35 </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white">GINF36</fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white">GINF41</fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white">GINF42 </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white">GINF43 </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white">GINF44 </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white">GINF45 </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white">GINF46 </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border-width="1px" border-style="solid">
                              <fo:block color="white">Moyenne </fo:block>
                              </fo:table-cell>
                              </fo:table-row>
                              </fo:table-header>
                            
                          <fo:table-body font-size="8pt">
                          <xsl:for-each select="Notes/Note">
							<fo:table-row border-width="1px" border-style="solid">
								<fo:table-cell border-width="1px" border-style="solid">
                                   <fo:block>
                                   <xsl:value-of select="concat('N° etudiant: ',CNE)"/>
                                   <xsl:text> </xsl:text>
                                   </fo:block>
                                   <fo:block>
                                  <fo:inline font-weight="bold"> <xsl:value-of select="concat(FirstName,' ',LastName)"/> </fo:inline>
                                    </fo:block>
                              </fo:table-cell>

                              <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                   <fo:block>
                                   <xsl:value-of select="Matiere[position()=1]"/>
                                    </fo:block>
                              </fo:table-cell>

                              <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                   <fo:block>
                                   <xsl:value-of select="Matiere[position()=2]"/>
                                    </fo:block>
                              </fo:table-cell>

                              <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                   <fo:block>
                                   <xsl:value-of select="Matiere[position()=3]"/>
                                    </fo:block>
                              </fo:table-cell>

                              <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                   <fo:block>
                                   <xsl:value-of select="Matiere[position()=4]"/>
                                    </fo:block>
                              </fo:table-cell>

                              <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                   <fo:block>
                                   <xsl:value-of select="Matiere[position()=5]"/>
                                    </fo:block>
                              </fo:table-cell>

                              <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                   <fo:block>
                                   <xsl:value-of select="Matiere[position()=6]"/>
                                    </fo:block>
                              </fo:table-cell>

                              <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                   <fo:block>
                                   <xsl:value-of select="Matiere[position()=7]"/>
                                    </fo:block>
                              </fo:table-cell>

                              <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                   <fo:block>
                                   <xsl:value-of select="Matiere[position()=8]"/>
                                    </fo:block>
                              </fo:table-cell>

                              <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                   <fo:block>
                                   <xsl:value-of select="Matiere[position()=9]"/>
                                    </fo:block>
                              </fo:table-cell>

                              <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                   <fo:block>
                                   <xsl:value-of select="Matiere[position()=10]"/>
                                    </fo:block>
                              </fo:table-cell>

                              <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                   <fo:block>
                                   <xsl:value-of select="Matiere[position()=11]"/>
                                    </fo:block>
                              </fo:table-cell>

                              <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                   <fo:block>
                                   <xsl:value-of select="Matiere[position()=12]"/>
                                    </fo:block>
                              </fo:table-cell>

                              <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                   <fo:block font-size="10pt" font-weight="bold">
                                     <xsl:variable name="number" select="sum(Matiere[@codeMatiere]) div count(Matiere)"/>
                                     <xsl:value-of select="format-number($number,'#.###')"/>
                                     <xsl:text> </xsl:text>
                                    <xsl:choose>
                                      <xsl:when test="$number &lt; 12">
                                      <fo:inline font-weight="bold" color="red"><xsl:text> REJETE</xsl:text></fo:inline>
                                      </xsl:when>
                                    <xsl:otherwise>
                                    <fo:inline font-weight="bold" color="green"><xsl:text>ADMIS</xsl:text></fo:inline>
                                    </xsl:otherwise>
                                    </xsl:choose>
                                    </fo:block>
                              </fo:table-cell>
                  </fo:table-row>
                  </xsl:for-each>
                                <fo:table-row border-width="1px" border-style="solid" height="1cm" background-color="lightgray">
                                <fo:table-cell border-width="1px" border-style="solid" text-align="center" font-weight="bold">
                                 <fo:block> Moyenne des modules </fo:block>
                                </fo:table-cell>
                                 <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                <fo:block> <xsl:variable name="number" select="sum(Notes/Note/Matiere[position()=1]) div count(Notes/Note)"/>
                                <xsl:value-of select="format-number($number,'#.###')"/>
                                </fo:block>
                                </fo:table-cell>
                                 <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                 <fo:block> <xsl:variable name="number" select="sum(Notes/Note/Matiere[position()=2]) div count(Notes/Note)"/>
                                <xsl:value-of select="format-number($number,'#.###')"/></fo:block>
                                </fo:table-cell>
                                 <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                 <fo:block>  <xsl:variable name="number" select="sum(Notes/Note/Matiere[position()=3]) div count(Notes/Note)"/>
                                <xsl:value-of select="format-number($number,'#.###')"/> </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                 <fo:block>  <xsl:variable name="number" select="sum(Notes/Note/Matiere[position()=4]) div count(Notes/Note)"/>
                                <xsl:value-of select="format-number($number,'#.###')"/> </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                 <fo:block>  <xsl:variable name="number" select="sum(Notes/Note/Matiere[position()=5]) div count(Notes/Note)"/>
                                <xsl:value-of select="format-number($number,'#.###')"/> </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                 <fo:block>  <xsl:variable name="number" select="sum(Notes/Note/Matiere[position()=6]) div count(Notes/Note)"/>
                                <xsl:value-of select="format-number($number,'#.###')"/> </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                 <fo:block>  <xsl:variable name="number" select="sum(Notes/Note/Matiere[position()=7]) div count(Notes/Note)"/>
                                <xsl:value-of select="format-number($number,'#.###')"/> </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                 <fo:block>  <xsl:variable name="number" select="sum(Notes/Note/Matiere[position()=8]) div count(Notes/Note)"/>
                                <xsl:value-of select="format-number($number,'#.###')"/> </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                 <fo:block>  <xsl:variable name="number" select="sum(Notes/Note/Matiere[position()=9]) div count(Notes/Note)"/>
                                <xsl:value-of select="format-number($number,'#.###')"/> </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                 <fo:block>  <xsl:variable name="number" select="sum(Notes/Note/Matiere[position()=10]) div count(Notes/Note)"/>
                                <xsl:value-of select="format-number($number,'#.###')"/> </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                 <fo:block>  <xsl:variable name="number" select="sum(Notes/Note/Matiere[position()=11]) div count(Notes/Note)"/>
                                <xsl:value-of select="format-number($number,'#.###')"/> </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border-width="1px" border-style="solid" text-align="center">
                                 <fo:block>  <xsl:variable name="number" select="sum(Notes/Note/Matiere[position()=12]) div count(Notes/Note)"/>
                                <xsl:value-of select="format-number($number,'#.###')"/> </fo:block>
                                </fo:table-cell>

                                 <fo:table-cell> <fo:block></fo:block></fo:table-cell>
                                </fo:table-row>
                  </fo:table-body>
                  </fo:table>
                  </fo:block>
                              </fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
