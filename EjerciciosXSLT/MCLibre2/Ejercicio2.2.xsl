﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:strip-space elements="*" />
  <xsl:template match="/">
    <museos>
      <xsl:apply-templates select="//museo"/>
    </museos>
  </xsl:template>
  
  <xsl:template match="museo">
    <museo>
      <xsl:attribute name="ubicacion"><xsl:value-of select="@ciudad"/> (<xsl:value-of select="@pais"/>)</xsl:attribute>
      <nombre><xsl:value-of select="@nombre"/></nombre>      
    </museo>
  </xsl:template>
  
</xsl:stylesheet>