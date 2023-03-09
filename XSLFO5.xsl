<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/rss/channel">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="planti"
                                       page-height="29.7cm"
                                       page-width="21.0cm" margin="2cm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="planti">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-weight="bold"
                              text-align="center"
                              margin="5pt"
                              font-family="Garamond"
                              font-size="12px">Trabajo para el caso PBL
                    </fo:block>

                    <fo:block font-weight="bold"
                              text-align="center"
                              margin="5pt"
                              font-family="Garamond"
                              font-size="12px">Sindicación de Contenidos con RSS
                    </fo:block>

                    <fo:block font-weight="bold"
                              text-align="center"
                              margin="5pt"
                              font-family="Garamond"
                              font-size="12px">Lenguajes de Marcas y Sistemas de Gestión de la Información
                    </fo:block>

                    <fo:block font-weight="bold"
                              text-align="center"
                              margin="5pt"
                              font-family="Arial"
                              text-decoration="underline"
                              margin-top="20px"
                              margin-bottom="20px"
                              font-size="18px">POOL DE NOTICIAS SINDICADAS
                    </fo:block>
                    <xsl:apply-templates select="item"/>

                    <fo:block text-align="left" font-family="TimesNewRoman" font-size="12pt" font-weight="bold" margin-top="10cm">
                        Componentes del grupo: &#160;&#160; Alejandro Ortiz Fuentes
                    </fo:block>
                    <fo:block text-align="left" font-family="TimesNewRoman" font-size="12pt" font-weight="bold" margin-left="29%">Pedro Real Ramos
                    </fo:block>
                    <fo:block text-align="left" font-family="TimesNewRoman" font-size="12pt" font-weight="bold" margin-left="29%">Víctor Vilches García
                    </fo:block>
                     <fo:block text-align="left" font-family="TimesNewRoman" font-size="12pt" font-weight="bold" margin-left="29%">
                         Carlos Ruiz Santana
                    </fo:block>

                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>

    <xsl:template match="item">
        <fo:block border="solid black 1pt" padding="0.3cm" margin-bottom="0.8cm" margin-left="4cm" margin-right="4cm">

            <fo:block margin-bottom="0.4cm" >
                <fo:external-graphic src="{enclosure/@url}" content-width="50px" content-height="50px"/>
            </fo:block>

            <fo:block font-weight="bold" font-size="12" font-family="Trebuchet"  text-align-last="justify" margin-bottom="0.4cm">
              <xsl:value-of select="category"/>
                <fo:leader leader-pattern="space"/>
                <fo:inline font-size="10px" font-family="Trebuchet" font-weight="bold"><xsl:value-of select="pubDate"/></fo:inline>
            </fo:block>

            <fo:block margin-bottom="0.4cm" font-size="12" font-family="Times New Roman">
                <xsl:value-of select="title"/> <fo:inline font-size="8" font-family="Verdana"> (<xsl:value-of select="author"/>)</fo:inline>
            </fo:block>
            <fo:block margin-bottom="0.4cm" font-family="Times New Roman" font-size="12px">
                <xsl:value-of select="link"/>
            </fo:block>

        </fo:block>
    </xsl:template>

</xsl:stylesheet>