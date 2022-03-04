<?xml version="1.0"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0" >


  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
 

<xsl:template match="/">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <fo:layout-master-set>
    <fo:simple-page-master master-name="simpleA4" page-height="36cm" page-width="18cm" margin-top="1cm" margin-bottom="0.5cm" margin-left="1cm" margin-right="1cm">
      <fo:region-body/>
    </fo:simple-page-master>
  </fo:layout-master-set>
  <fo:page-sequence master-reference="simpleA4">
    <fo:flow flow-name="xsl-region-body">
      
      <fo:block text-align="center" font-size="13pt" font-weight="bold" space-after="1cm"> Liste des groupes</fo:block>
      <fo:block>
     <fo:block space-after="0.5cm" font-weight="bold" text-align="center"> Groupe 1 </fo:block>
      <fo:table border-color="black" border-width="0.4mm" border-style="solid" text-align="center" display-align="center" table-layout="fixed" width="100%">
        <fo:table-column column-width="2cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>

  <fo:table-header background-color="#176f85" display-align="center">        
          <fo:table-row font-weight="bold" height="1cm" border-color="black" border-width="0.4mm" border-style="solid">
           <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>CNE</fo:block>
            </fo:table-cell>
            <fo:table-cell width="60mm" border-style="solid" border-width="1pt">
              <fo:block>NOM</fo:block>
            </fo:table-cell>
            <fo:table-cell width="60mm" border-style="solid" border-width="1pt">
              <fo:block>PRENOM</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-header>

         <fo:table-body>
         <xsl:for-each select="Students/Student">
           <xsl:if test="position() &lt; 25">
              <fo:table-row border-color="black" border-width="0.3mm" border-style="solid">
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
             <fo:block> <xsl:value-of select="CNE"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="60mm" border-style="solid" border-width="1pt">
              <fo:block> <xsl:value-of select="FirstName"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="60mm" border-style="solid" border-width="1pt">
              <fo:block><xsl:value-of select="LastName"/> </fo:block>
            </fo:table-cell>
            </fo:table-row>
            </xsl:if>
    </xsl:for-each>
    </fo:table-body>
  </fo:table>

<fo:block space-before="1cm" font-weight="bold" space-after="0.5cm" text-align="center"> Groupe 2 </fo:block>
  <fo:table border-color="black" border-width="0.4mm" border-style="solid" text-align="center" display-align="center" table-layout="fixed" width="100%">
        <fo:table-column column-width="2cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>

  <fo:table-header background-color="#176f85" display-align="center">        
          <fo:table-row font-weight="bold" height="1cm" border-color="black" border-width="0.4mm" border-style="solid">
           <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>CNE</fo:block>
            </fo:table-cell>
            <fo:table-cell width="60mm" border-style="solid" border-width="1pt">
              <fo:block>NOM</fo:block>
            </fo:table-cell>
            <fo:table-cell width="60mm" border-style="solid" border-width="1pt">
              <fo:block>PRENOM</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-header>

         <fo:table-body>
         <xsl:for-each select="Students/Student">
           <xsl:if test="position() &gt; 24 and position() &lt; 49">
              <fo:table-row height="0.5cm" border-color="black" border-width="0.4mm" border-style="solid">
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
             <fo:block> <xsl:value-of select="CNE"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="60mm" border-style="solid" border-width="1pt">
              <fo:block> <xsl:value-of select="FirstName"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="60mm" border-style="solid" border-width="1pt">
              <fo:block><xsl:value-of select="LastName"/> </fo:block>
            </fo:table-cell>
            </fo:table-row>
            </xsl:if>
    </xsl:for-each>
    </fo:table-body>
  </fo:table>

  <xsl:if test="count(//Student) &gt; 48">

<fo:block space-before="1cm" font-weight="bold" space-after="0.5cm" text-align="center"> Groupe 3 </fo:block>
  <fo:table border-color="black" border-width="0.4mm" border-style="solid" text-align="center" display-align="center" table-layout="fixed" width="100%">
        <fo:table-column column-width="2cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>

  <fo:table-header background-color="#176f85" display-align="center">        
          <fo:table-row font-weight="bold" height="1cm" border-color="black" border-width="0.4mm" border-style="solid">
           <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>CNE</fo:block>
            </fo:table-cell>
            <fo:table-cell width="60mm" border-style="solid" border-width="1pt">
              <fo:block>NOM</fo:block>
            </fo:table-cell>
            <fo:table-cell width="60mm" border-style="solid" border-width="1pt">
              <fo:block>PRENOM</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-header>

         <fo:table-body>
         <xsl:for-each select="Students/Student">
           <xsl:if test="position() &gt; 48 ">
              <fo:table-row height="0.5cm" border-color="black" border-width="0.4mm" border-style="solid">
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
             <fo:block> <xsl:value-of select="CNE"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="60mm" border-style="solid" border-width="1pt">
              <fo:block> <xsl:value-of select="FirstName"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="60mm" border-style="solid" border-width="1pt">
              <fo:block><xsl:value-of select="LastName"/> </fo:block>
            </fo:table-cell>
            </fo:table-row>
            </xsl:if>
    </xsl:for-each>
    </fo:table-body>
  </fo:table>
<!-- 
<fo:block space-before="1cm" font-weight="bold" space-after="0.5cm" text-align="center"> Groupe 4 </fo:block>
  <fo:table border-color="black" border-width="0.4mm" border-style="solid" text-align="center" display-align="center" table-layout="fixed" width="100%">
        <fo:table-column column-width="2cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>

  <fo:table-header background-color="#176f85" display-align="center">        
          <fo:table-row font-weight="bold" height="1cm" border-color="black" border-width="0.4mm" border-style="solid">
           <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>CNE</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>NOM</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>PRENOM</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-header>

         <fo:table-body>
         <xsl:for-each select="Students/Student">
           <xsl:if test="position() &gt; 72 and position() &lt; 97">
              <fo:table-row height="0.5cm" border-color="black" border-width="0.4mm" border-style="solid">
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
             <fo:block> <xsl:value-of select="CNE"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block> <xsl:value-of select="FirstName"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block><xsl:value-of select="LastName"/> </fo:block>
            </fo:table-cell>
            </fo:table-row>
            </xsl:if>
    </xsl:for-each>
    </fo:table-body>
  </fo:table>

  <fo:block space-before="1cm" font-weight="bold" space-after="0.5cm" text-align="center"> Groupe 5 </fo:block>
  <fo:table border-color="black" border-width="0.4mm" border-style="solid" text-align="center" display-align="center" table-layout="fixed" width="100%">
        <fo:table-column column-width="2cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>

  <fo:table-header background-color="#176f85" display-align="center">        
          <fo:table-row font-weight="bold" height="1cm" border-color="black" border-width="0.4mm" border-style="solid">
           <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>CNE</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>NOM</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>PRENOM</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-header>

         <fo:table-body>
         <xsl:for-each select="Students/Student">
           <xsl:if test="position() &gt; 96 and position() &lt; 121">
              <fo:table-row height="0.5cm" border-color="black" border-width="0.4mm" border-style="solid">
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
             <fo:block> <xsl:value-of select="CNE"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block> <xsl:value-of select="FirstName"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block><xsl:value-of select="LastName"/> </fo:block>
            </fo:table-cell>
            </fo:table-row>
            </xsl:if>
    </xsl:for-each>
    </fo:table-body>
  </fo:table>

  <fo:block space-before="1cm" font-weight="bold" space-after="0.5cm" text-align="center"> Groupe 6 </fo:block>
  <fo:table border-color="black" border-width="0.4mm" border-style="solid" text-align="center" display-align="center" table-layout="fixed" width="100%">
        <fo:table-column column-width="2cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>

  <fo:table-header background-color="#176f85" display-align="center">        
          <fo:table-row font-weight="bold" height="1cm" border-color="black" border-width="0.4mm" border-style="solid">
           <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>CNE</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>NOM</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>PRENOM</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-header>

         <fo:table-body>
         <xsl:for-each select="Students/Student">
           <xsl:if test="position() &gt; 120 and position() &lt; 145">
              <fo:table-row height="0.5cm" border-color="black" border-width="0.4mm" border-style="solid">
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
             <fo:block> <xsl:value-of select="CNE"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block> <xsl:value-of select="FirstName"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block><xsl:value-of select="LastName"/> </fo:block>
            </fo:table-cell>
            </fo:table-row>
            </xsl:if>
    </xsl:for-each>
    </fo:table-body>
  </fo:table>

  <fo:block space-before="1cm" font-weight="bold" space-after="0.5cm" text-align="center"> Groupe 7 </fo:block>
  <fo:table border-color="black" border-width="0.4mm" border-style="solid" text-align="center" display-align="center" table-layout="fixed" width="100%">
        <fo:table-column column-width="2cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>

  <fo:table-header background-color="#176f85" display-align="center">        
          <fo:table-row font-weight="bold" height="1cm" border-color="black" border-width="0.4mm" border-style="solid">
           <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>CNE</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>NOM</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>PRENOM</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-header>

         <fo:table-body>
         <xsl:for-each select="Students/Student">
           <xsl:if test="position() &gt; 144 and position() &lt; 169">
              <fo:table-row height="0.5cm" border-color="black" border-width="0.4mm" border-style="solid">
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
             <fo:block> <xsl:value-of select="CNE"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block> <xsl:value-of select="FirstName"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block><xsl:value-of select="LastName"/> </fo:block>
            </fo:table-cell>
            </fo:table-row>
            </xsl:if>
    </xsl:for-each>
    </fo:table-body>
  </fo:table>

  <fo:block space-before="1cm" font-weight="bold" space-after="0.5cm" text-align="center"> Groupe 8 </fo:block>
  <fo:table border-color="black" border-width="0.4mm" border-style="solid" text-align="center" display-align="center" table-layout="fixed" width="100%">
        <fo:table-column column-width="2cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>

  <fo:table-header background-color="#176f85" display-align="center">        
          <fo:table-row font-weight="bold" height="1cm" border-color="black" border-width="0.4mm" border-style="solid">
           <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>CNE</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>NOM</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>PRENOM</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-header>

         <fo:table-body>
         <xsl:for-each select="Students/Student">
           <xsl:if test="position() &gt; 168 and position() &lt; 193">
              <fo:table-row height="0.5cm" border-color="black" border-width="0.4mm" border-style="solid">
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
             <fo:block> <xsl:value-of select="CNE"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block> <xsl:value-of select="FirstName"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block><xsl:value-of select="LastName"/> </fo:block>
            </fo:table-cell>
            </fo:table-row>
            </xsl:if>
    </xsl:for-each>
    </fo:table-body>
  </fo:table>

<fo:block space-before="1cm" font-weight="bold" space-after="0.5cm" text-align="center"> Groupe 9 </fo:block>
  <fo:table border-color="black" border-width="0.4mm" border-style="solid" text-align="center" display-align="center" table-layout="fixed" width="100%">
        <fo:table-column column-width="2cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>

  <fo:table-header background-color="#176f85" display-align="center">        
          <fo:table-row font-weight="bold" height="1cm" border-color="black" border-width="0.4mm" border-style="solid">
           <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>CNE</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>NOM</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>PRENOM</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-header>

         <fo:table-body>
         <xsl:for-each select="Students/Student">
           <xsl:if test="position() &gt; 192 and position() &lt; 217">
              <fo:table-row height="0.5cm" border-color="black" border-width="0.4mm" border-style="solid">
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
             <fo:block> <xsl:value-of select="CNE"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block> <xsl:value-of select="FirstName"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block><xsl:value-of select="LastName"/> </fo:block>
            </fo:table-cell>
            </fo:table-row>
            </xsl:if>
    </xsl:for-each>
    </fo:table-body>
  </fo:table>

  <fo:block space-before="1cm" font-weight="bold" space-after="0.5cm" text-align="center"> Groupe 10 </fo:block>
  <fo:table border-color="black" border-width="0.4mm" border-style="solid" text-align="center" display-align="center" table-layout="fixed" width="100%">
        <fo:table-column column-width="2cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>
        <fo:table-column column-width="3cm" border-color="black" border-width="0.4mm" border-style="solid"/>

  <fo:table-header background-color="#176f85" display-align="center">        
          <fo:table-row font-weight="bold" height="1cm" border-color="black" border-width="0.4mm" border-style="solid">
           <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>CNE</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>NOM</fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block>PRENOM</fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-header>

         <fo:table-body>
         <xsl:for-each select="Students/Student">
           <xsl:if test="position() &gt; 216">
              <fo:table-row height="0.5cm" border-color="black" border-width="0.4mm" border-style="solid">
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
             <fo:block> <xsl:value-of select="CNE"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block> <xsl:value-of select="FirstName"/></fo:block>
            </fo:table-cell>
            <fo:table-cell width="40mm" border-style="solid" border-width="1pt">
              <fo:block><xsl:value-of select="LastName"/> </fo:block>
            </fo:table-cell>
            </fo:table-row>
            </xsl:if>
    </xsl:for-each>
    </fo:table-body>
  </fo:table>
-->
  </xsl:if>
  </fo:block>
 
</fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>

  </xsl:stylesheet>
