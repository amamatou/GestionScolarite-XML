<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

  <xsl:template match="Note">
    <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master margin-right="0.2cm" margin-left="0.2cm" margin-bottom="0.2cm" margin-top="0.1cm" page-width="21cm" page-height="29.7cm" master-name="simpleA4">
          <fo:region-body margin-top="9cm" margin-bottom="1mm" margin-right="0.6cm"/>
          <fo:region-before region-name="xsl-region-before" extent="25mm" display-align="before" precedence="true"/>

        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="simpleA4">

        <fo:static-content flow-name="xsl-region-before">
          <fo:table table-layout="fixed" width="100%" font-size="10pt" border-color="black" border-width="0.4mm" border-style="solid" height="1.5cm" space-after="2mm">
            <fo:table-column column-width="proportional-column-width(20)"/>
            <fo:table-column column-width="proportional-column-width(45)"/>
            <fo:table-column column-width="proportional-column-width(20)"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell text-align="left" padding-left="1mm" font-weight="bold">
                  <fo:block>
                    <xsl:text>Université Abdelmalek Essaâdi </xsl:text>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center" padding-top="8mm">
                  <fo:block>Année universitaire  2020/2021  <fo:external-graphic src="url(C://xampp/htdocs/GestionScolaire-XML-final/img/arabe2.PNG)"/>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="right" padding-right="1mm" font-weight="bold">
                  <fo:block>
                    <fo:external-graphic src="url(C://xampp/htdocs/GestionScolaire-XML-final/img/arabe1.PNG)"/>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:block space-after="2mm">
            <fo:external-graphic src="url(C://xampp/htdocs/GestionScolaire-XML-final/img/arabe0.PNG)" />
          </fo:block>
          <fo:block space-after="2mm">
            <fo:external-graphic src="url(C://xampp/htdocs/GestionScolaire-XML-final/img/entnote.PNG)" />
          </fo:block>

          <fo:block space-after="1.5mm" font-size="11pt" margin-left="0.5cm" font-weight="bold">
           <xsl:value-of select="concat(FirstName ,'   ',LastName)"/>
          </fo:block>

          <fo:block space-after="1.5mm" margin-left="0.5cm"><xsl:value-of select="concat('N° Etudiant ',CNE)"/>
          <xsl:text>   </xsl:text>
          <fo:inline margin-left="2.5cm">
            <xsl:value-of select="concat('CNE: ',CNE)"/>
          </fo:inline>
        </fo:block>
        <fo:block space-after="1.5mm" margin-left="0.5cm">Né le: 01/01/1999<xsl:text> </xsl:text> <fo:inline margin-left="2cm">à: Tanger</fo:inline>
        </fo:block>
        <fo:block space-after="1.5mm" margin-left="0.5cm">Inscrit en<xsl:text> </xsl:text> <fo:inline margin-left="2mm" font-weight="bold" font-size="13pt">2° Année Génie Informatique</fo:inline>
        </fo:block>
        <fo:block margin-left="0.5cm">a obtenu les notes suivantes:</fo:block>
      </fo:static-content>


      <fo:flow flow-name="xsl-region-body">
        <fo:block>
          <fo:table border-width="1px" border-style="solid" height="1cm" margin-left="0.4cm">
            <fo:table-column column-width="8cm"/>
            <fo:table-column column-width="5cm"/>
            <fo:table-column column-width="7cm"/>

            <fo:table-header>
              <fo:table-row border-width="1px" border-style="solid" height="0.7cm" background-color="#48a3b9">
                <fo:table-cell font-weight="bold">  <fo:block>Module</fo:block></fo:table-cell>
                <fo:table-cell text-align="center" font-weight="bold">
                  <fo:block>Note/Barème</fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center" font-weight="bold">
                  <fo:block>Session</fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-header>

            <fo:table-body>
              <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                <fo:table-cell>
                  <fo:block>
                    <xsl:text>GINF31: Programmation Orientée Objet java et XML </xsl:text>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>
                    <xsl:value-of select="Matiere[position()=1]"/>/20</fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>S1 2020/21</fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                <fo:table-cell>
                  <fo:block>
                    <xsl:text>GINF32: Qualité et Approche processus</xsl:text>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>
                    <xsl:value-of select="Matiere[position()=2]"/>/20</fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>S1 2020/21</fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                <fo:table-cell>
                  <fo:block>
                    <xsl:text>GINF33: Modélisation orienté objet et IHM </xsl:text>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>
                    <xsl:value-of select="Matiere[position()=3]"/>/20</fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>S1 2020/21</fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                <fo:table-cell>
                  <fo:block>
                    <xsl:text>GINF34: Bases de données avancées I</xsl:text>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>
                    <xsl:value-of select="Matiere[position()=4]"/>/20</fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>S1 2020/21</fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                <fo:table-cell>
                  <fo:block>
                    <xsl:text>GINF35: Administration et Programmation système </xsl:text>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>
                    <xsl:value-of select="Matiere[position()=5]"/>/20</fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>S1 2020/21</fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                <fo:table-cell>
                  <fo:block>
                    <xsl:text>GINF36: Langue et Communication 1 </xsl:text>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>
                    <xsl:value-of select="Matiere[position()=6]"/>/20</fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>S1 2020/21</fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                <fo:table-cell>
                  <fo:block>
                    <xsl:text>GINF41: Technologies distribuées </xsl:text>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>
                    <xsl:value-of select="Matiere[position()=7]"/>/20</fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>S1 2020/21</fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                <fo:table-cell>
                  <fo:block>
                    <xsl:text>GINF42: Bases de données avancées II et Cloud </xsl:text>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>
                    <xsl:value-of select="Matiere[position()=8]"/>/20</fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>S1 2020/21</fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                <fo:table-cell>
                  <fo:block>
                    <xsl:text>GINF43: Traitement de l'image </xsl:text>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>
                    <xsl:value-of select="Matiere[position()=9]"/>/20</fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>S1 2020/21</fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                <fo:table-cell>
                  <fo:block>
                    <xsl:text>GINF44: Programmation déclarative et Techniques algorithmiques Avancées </xsl:text>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>
                    <xsl:value-of select="Matiere[position()=10]"/>/20</fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>S1 2020/21</fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                <fo:table-cell>
                  <fo:block>
                    <xsl:text>GINF45: Sécurité des systèmes, Crytographie  </xsl:text>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>
                    <xsl:value-of select="Matiere[position()=11]"/>/20</fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>S1 2020/21</fo:block>
                </fo:table-cell>
              </fo:table-row>

              <fo:table-row border-width="1px" border-style="solid" height="0.6cm">
                <fo:table-cell>
                  <fo:block>
                    <xsl:text>GINF46: Management de l'entreprise 2 </xsl:text>
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>
                    <xsl:value-of select="Matiere[position()=12]"/>/20</fo:block>
                </fo:table-cell>
                <fo:table-cell text-align="center">
                  <fo:block>S1 2020/21</fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
          <!--space-after="1.8cm stylus studio"-->
          <fo:block space-after="6cm" space-before="1.5mm" font-weight="bold" margin-left="0.5cm" font-size="11pt">Résultat d'admission session 1:<fo:inline padding-left="3.6cm">
            <xsl:variable name="number" select="sum(Matiere) div count(Matiere)"/>
            <xsl:value-of select="format-number($number,'#.###')"/>/20

           <!-- Test si la moyenne superieur a 12 pour valider (car l'etudiant est en cycle d'ingénieurie)-->                     
          <xsl:choose>
              <xsl:when test="$number &lt; 12">
                <fo:inline padding-left="1.5cm">
                  <xsl:text> NON ADMIS</xsl:text>
                </fo:inline>
              </xsl:when>
              <xsl:otherwise>
                <fo:inline padding-left="1.5cm">
                  <xsl:text>ADMIS</xsl:text>
                </fo:inline>
              </xsl:otherwise>
            </xsl:choose>
          </fo:inline>
        </fo:block>

        <fo:block margin-left="3.5cm" font-size="11pt" space-after="1mm">Fait à TANGER, le 24 février 2021</fo:block>
        <fo:block font-size="11pt" space-after="4mm">Le Directeur de l'Ecole Nationale des Sciences Appliquées de Tanger</fo:block>
        <fo:block font-size="11pt" margin-left="4.7cm" space-after="1mm">Le Directeur</fo:block>
        <fo:block font-size="9pt" margin-left="2.2cm">Avis important: il ne peut être délivré qu'un seul exemplaire du présent relevé de note. Aucun duplicata ne sera fourni.</fo:block>
      </fo:block>
    </fo:flow>
  </fo:page-sequence>
</fo:root>
</xsl:template>
</xsl:stylesheet>