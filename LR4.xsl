<?xml version="1.0"?>
<xsl:stylesheet version='1.0' xmlns:xsl = 'http://www.w3.org/1999/XSL/Transform'>
    <xsl:output method="html" doctype-system="about:legacy-compat"/>

    <xsl:template match="/articulo">
        <html>
            <head>
                <meta charset='utf-8'/>
                <title>
                    Practica 4.3
                </title>
            </head>
            <body>
                <h1><xsl:value-of select="nombre"/></h1>
                <h2><xsl:value-of select="porcion"/></h2>
                <table border= '1px' >
                        <tr>
                            <td>
                                <xsl:value-of select="valor_nutrimental/calorias"/>
                            </td>
                            <td>
                                <xsl:value-of select="valor_nutrimental/calorias/@cantidad"/> 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="valor_nutrimental/calorias_de_grasa"/>
                            </td>
                            <td>
                                <xsl:value-of select="valor_nutrimental/calorias_de_grasa/@cantidad"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="valor_nutrimental/g_grasa"/>
                            </td>
                            <td>
                                <xsl:value-of select="valor_nutrimental/g_grasa/@cantidad"/> 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="valor_nutrimental/g_grasa_saturada"/>
                            </td>
                            <td>
                                <xsl:value-of select="valor_nutrimental/g_grasa_saturada/@cantidad"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="valor_nutrimental/mg_colesterol"/>
                            </td>
                            <td>
                                <xsl:value-of select="valor_nutrimental/mg_colesterol/@cantidad"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="valor_nutrimental/mg_sodio"/>
                            </td>
                            <td>
                                <xsl:value-of select="valor_nutrimental/mg_sodio/@cantidad"/> 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="valor_nutrimental/g_carbohidratos"/>
                            </td>
                            <td>
                                <xsl:value-of select="valor_nutrimental/g_carbohidratos/@cantidad"/> 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="valor_nutrimental/g_fibra"/>
                            </td>
                            <td>
                                <xsl:value-of select="valor_nutrimental/g_fibra/@cantidad"/> 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="valor_nutrimental/g_azucares"/>
                            </td>
                            <td>
                                <xsl:value-of select="valor_nutrimental/g_azucares/@cantidad"/> 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="valor_nutrimental/g_proteina"/>
                            </td>
                            <td>
                                <xsl:value-of select="valor_nutrimental/g_proteina/@cantidad"/> 
                            </td>
                        </tr>

                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>