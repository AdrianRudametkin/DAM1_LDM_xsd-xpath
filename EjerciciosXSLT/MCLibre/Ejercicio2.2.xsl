﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:strip-space elements="*" />
  <xsl:template match="/">
    <html>
      <xsl:apply-templates select="/ies"/>
      <ul><xsl:apply-templates select="//ciclo"/></ul>
    </html>
  </xsl:template>
  
  <xsl:template match="ies">
    <h1><xsl:value-of select="@nombre"/></h1>
    <p>Página web: 
      <a>
        <xsl:attribute name="href"><xsl:value-of select="@web"/></xsl:attribute>
        <xsl:value-of select="@web"/>
      </a>
    </p>
  </xsl:template>
  
  <xsl:template match="ciclo">
    <li><xsl:value-of select="nombre"/></li>
  </xsl:template>
  
</xsl:stylesheet>