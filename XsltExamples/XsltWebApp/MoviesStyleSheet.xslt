<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:strip-space elements="rating year" />
    <xsl:preserve-space elements="title genre" />
    
    <xsl:template match="/">
        <html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <link rel="stylesheet" type="text/css" href="Styles.css" />
            </head>
            <body>
                <xsl:for-each select="//movies/movie[rating &gt; 50]">
                    <xsl:sort select="title"/>
                    <xsl:if test="normalize-space(title) != ''">
                        
                        <div class="movie clearfix">
                            <xsl:if test="normalize-space(image) != ''">
                                <div class="movie-image">   
                                    <img>
                                        <xsl:attribute name="src">
                                            /images/<xsl:value-of select="image"/>
                                        </xsl:attribute>
                                    </img>
                                </div>
                            </xsl:if>
                            <span class="movie-header">
                                    <xsl:value-of select="title"/>
                            </span>
                            <dl class="movie-details">
                                <dt>Year</dt>
                                <dd>
                                    <xsl:value-of select="year"/>
                                </dd>
                                <dt>Genre</dt>
                                <dd>
                                    <xsl:value-of select="genre"/>
                                </dd>
                                <dt>Rating</dt>
                                <dd>
                                    <xsl:value-of select="format-number(rating, '#,###.00')" />
                                    (<xsl:choose>
                                        <xsl:when test="rating &gt; 90">
                                            Awesome
                                        </xsl:when>
                                        <xsl:when test="rating &gt; 70">
                                            Pretty Good
                                        </xsl:when>
                                        <xsl:when test="rating &gt; 50">
                                            Probably a rental
                                        </xsl:when>
                                        <xsl:otherwise>
                                            You can probably skip watching this one
                                        </xsl:otherwise>
                                    </xsl:choose>)
                                </dd>
                            </dl>
                        </div>    
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>


