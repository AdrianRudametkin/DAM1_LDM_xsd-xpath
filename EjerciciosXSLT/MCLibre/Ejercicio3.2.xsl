﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:strip-space elements="*" />
  <xsl:template match="/">
    <html>
      <xsl:apply-templates select="/ies"/>
      <ul>
        <xsl:apply-templates select="//ciclo"/>
      </ul>
    </html>
  </xsl:template>
  
  <xsl:template match="ies">
    <h1><xsl:value-of select="nombre"/></h1>
  </xsl:template>
  
  <xsl:template match="ciclo">
    <li><xsl:value-of select="@id"/><br/>
      <xsl:value-of select="nombre"/>,
      Ciclo Formativo de <xsl:value-of select="grado"/> creado en <xsl:value-of select="decretoTitulo/@año"/>
    </li>
  </xsl:template>
  
</xsl:stylesheet>