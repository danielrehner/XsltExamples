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
                <xsl:for-each select="//movies/movie">
                    <div class="movie">
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
                                <xsl:value-of select="rating" />
                            </dd>
                        </dl>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>


