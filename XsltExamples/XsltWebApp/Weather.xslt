<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes" method="html" encoding="us-ascii" />
        <xsl:template match="/">
            <!--STYLE-->
            <style type="text/css">
                .tvg-weather-body
                {
                position: relative;
                clear: both;
                width: 250px;
                }
                .tvg-weather-image
                {
                position: relative;
                float: left;
                padding: 7px;
                width: 50px;
                }
                .tvg-weather-details
                {
                padding: 7px;
                position: relative;
                float: right;
                text-align:left;
                width: 150px;
                }
                .tvg-weather-title{
                color:#21374C;
                }
            </style>
            <!--HTML-->
            <!-- TODAY -->
            <div>
                <b class="tvg-weather-title">Current</b>
            </div>
            <div class="tvg-weather-body">
                <div class="tvg-weather-image">
                    <img>
                        <xsl:attribute name="src">
                            http://www.google.com<xsl:value-of select="xml_api_reply/weather/current_conditions/icon/@data" />
                        </xsl:attribute>

                    </img>
                </div>
                <div class="tvg-weather-details">
                    <div>
                        <b>
                            <xsl:value-of select="xml_api_reply/weather/current_conditions/temp_c/@data" />
                                °C
                        </b>
                    </div>
                    <div>
                        <xsl:value-of select="xml_api_reply/weather/current_conditions/condition/@data" />
                    </div>
                </div>
            </div>
            <!-- FORECAST -->
            <div style="clear:both;">
                <b class="tvg-weather-title">Forecasts</b>
            </div>
            <xsl:for-each select="xml_api_reply/weather/forecast_conditions">
                <div class="tvg-weather-body">
                    <div class="tvg-weather-image">
                        <img>
                            <xsl:attribute name="src">
                                http://www.google.com<xsl:value-of select="icon/@data"></xsl:value-of>
                            </xsl:attribute>

                        </img>
                    </div>
                    <div class="tvg-weather-details">
                        <div>
                            <b>
                                <i>
                                    <xsl:value-of select="day_of_week/@data" />
                                    
                                </i>
                            </b>
                        </div>
                        <div>
                            <b>
                                min: <xsl:value-of select="floor((low/@data - 32) * (5 div 9))" />
                                    °C - max: <xsl:value-of select="floor((high/@data - 32) * (5 div 9))" />°C
                                
                            </b>
                        </div>
                        <div>
                            <xsl:value-of select="condition/@data" />
                            
                        </div>
                    </div>
                </div>
            </xsl:for-each>
        </xsl:template>
</xsl:stylesheet>
