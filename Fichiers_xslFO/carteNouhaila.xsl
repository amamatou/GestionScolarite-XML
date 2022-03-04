<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">
	<xsl:template match="Student">
		<fo:root>
			<fo:layout-master-set>
				<fo:simple-page-master margin-right="0.1cm" margin-left="0.2cm" margin-bottom="0.2cm" margin-top="0.1cm" page-width="8.6cm" page-height="5.5cm" master-name="simpleA8">
					<fo:region-body/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="simpleA8">
				<fo:flow flow-name="xsl-region-body">
				<fo:block  padding-top="0.1cm" space-after="0.1cm" margin-right="0.1cm" margin-left="0.1cm">
   					<fo:external-graphic src="url(C://xampp/htdocs/GestionScolaire-XML-final/img/enteteCarte.PNG)"  content-height="1.4cm" content-width="8cm"/> 
				</fo:block>
				<fo:block  background-image="url(C://xampp/htdocs/GestionScolaire-XML-final/img/bgcarte.jpg)">
					<fo:block font-size="8pt" font-weight="bold" color="#376187" space-after="0.5cm" font-family="Calibri" text-align="center" line-height="12pt" padding-top="0.001cm" content-width="8cm">
						CARTE D'ETUDIANT
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table>
							<fo:table-column column-width="1.7cm"/>
							<fo:table-column column-width="3.2cm"/>
							<fo:table-column column-width="1.8cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
									<fo:block>
									<!-- Image Statique -->
										<fo:external-graphic src="url(C://xampp/htdocs/GestionScolaire-XML-final/img/photos_carteEtudiant/nouhaila.jpg)" content-width="1.5cm" content-height="2cm"/> 
									</fo:block>
								</fo:table-cell>

								<fo:table-cell>
										<fo:block color="#376187" text-align="left" padding-top="0.4cm">
											<xsl:value-of select="LastName"/><fo:block/>
											<xsl:value-of select="FirstName"/><fo:block/>
											<xsl:value-of select="CNE"/>
										</fo:block>
								</fo:table-cell>

								<fo:table-cell>
									<fo:block margin-left="1.9cm">
										<fo:external-graphic src="url(C://xampp/htdocs/GestionScolaire-XML-final/img/qrCode.png)" content-width="1.5cm" content-height="2cm"/> 
											</fo:block>
								</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						</fo:block>
						<fo:block color="#376187" font-size="7pt" font-weight="bold" margin-top="0.1cm" font-family="Calibri" text-align="center" line-height="12pt" padding-top="0.001cm" content-width="8cm">
							Première Inscription : 2018/2019
						</fo:block>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>