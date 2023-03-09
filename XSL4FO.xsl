<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes"/>


  <xsl:template match="/">

      <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
          <fo:layout-master-set>
              <fo:simple-page-master margin-right="2cm" margin-left="2cm"
                                     margin-bottom="2cm" margin-top="2cm"
                                     page-width="21cm" page-height="29.7cm"
                                     master-name="first">
                  <fo:region-body margin="1cm"/>
              </fo:simple-page-master>
          </fo:layout-master-set>
          <fo:page-sequence master-reference="first">

              <fo:flow flow-name="xsl-region-body">

  <fo:block text-align="center"
            color="#000000"
            font-family="Garamond"
            font-size="12"
            font-weight="bold"
            space-before="16pt" space-after="40pt"
            linefeed-treatment="preserve">
    Trabajo para el caso PBL
Sindicación de Contenidos con RSS
Lenguajes de Marcas y Sistemas de Gestión de la Información
  </fo:block>
                  <fo:block text-align="center"
            color="#000000"
            font-size="18"
            font-weight="bold"  space-after="15pt"
            linefeed-treatment="preserve">
                      <fo:inline text-decoration="underline" font-family="Arial">POOL DE NOTICIAS SINDICADAS</fo:inline>

  </fo:block>
         <xsl:for-each select="rss/channel/item">
  <fo:block border="1pt solid black"
            padding="4mm"
            space-after.optimum="15pt"
            text-align="center"
  margin-left="2cm"
  margin-right="2cm"
  margin-bottom="7mm">
      <fo:block font-size="12pt"
              font-family="serif"
              line-height="15pt"
              space-after.optimum="15pt"
              text-align="justify">
          <fo:block><fo:external-graphic src="" content-width="5cm"/></fo:block>
          <fo:block font-size="12"
              font-family="Trebuchet"
              font-weight="bold"
              text-align="justify">
      <xsl:value-of select="title"/>
    </fo:block>
          <fo:block font-size="10"
              font-family="Trebuchet"
              font-weight="bold"
              text-align="justify">
      <xsl:value-of select="date"/>
    </fo:block>
          </fo:block>
          <fo:block font-size="8"
              font-family="Verdana"
              font-weight="bold"
              text-align="justify">
      <xsl:value-of select="autor"/>
    </fo:block>

    <fo:block font-size="12pt"
              font-family="Times New Roman"
              line-height="15pt"
              space-after.optimum="15pt"
              text-align="justify">
      <xsl:value-of select="link"/>
    </fo:block>
  </fo:block>
</xsl:for-each>
              </fo:flow>
          </fo:page-sequence>
      </fo:root>
  </xsl:template>
</xsl:stylesheet>
