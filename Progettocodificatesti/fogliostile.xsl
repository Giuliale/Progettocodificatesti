<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xpath-default-namespace="http://www.tei-c.org/ns/1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="/tei:teiCorpus/tei:teiHeader[@xml:id='main']/tei:fileDesc/tei:titleStmt/tei:title"/></title>
                <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet"></link>
                <link href= "cartoline.css" rel="stylesheet" type="text/css"></link>
                <script src="main.js"></script>
                <meta charset="UTF-8"></meta>
            </head>
            <body>
<!--                NAVBAR MENU-->
                
                
                <div id="menu" class="menuVerticale">
                    <a href="#" class="close" id="chiudi">X</a>
                    <a href="#titoloCentrale">Home</a>
                    <a href="#cartolina1">Devouement</a>
                    <a href="#Cartolina2">Bambini che bevono il latte</a>
                    <a href="#crediti">crediti</a>
                </div>
                <div id="principale">
                    <label class="hamburger-icon" id="apriMenu">
                        <span>&#9776;</span>
                    </label>
                </div>
                
                
                    <div id="principale">
                        
                    
                
<!--                titolo-->
                <h1 id="titoloCentrale"><xsl:value-of select="/tei:teiCorpus/tei:teiHeader[@xml:id='main']/tei:fileDesc/tei:titleStmt/tei:title"/></h1>
<!--               INIZIO SEZIONE CARTOLINA 1-->
                <div class="cartoline">
<!--                    CARTOLINA 1-->
                    <div id="cartolina1">
<!--                        TITOLO CARTOLINA-->
                         <h2 class="titoloCartolina"><xsl:value-of select="//tei:text[@xml:id='cartolina1']//tei:figure[@xml:id='figure1']//tei:title"/></h2>
<!--                        IMMAGINI CARTOLINA 1-->
<!--                        FRONTE-->
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//tei:surface[@xml:id='fronte076']/tei:graphic/@url"/>
                            </xsl:attribute>
                            <xsl:attribute name="class">ImmaginiFronte</xsl:attribute>
                        </xsl:element> 
<!--                    RETRO -->   
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="//tei:surface[@xml:id='retro076']/tei:graphic/@url"/>
                            </xsl:attribute>
                            <xsl:attribute name="class">ImmaginiRetro</xsl:attribute>
                        </xsl:element>
                        
<!--                        DESCRIZIONE CARTOLINA 1-->
                        <div class="descrizioneTotale">
                            <div class="info">
                                <h2 class="titoloDescrizione">DESCRIZIONE</h2>
                                <p class="descrizione"><strong>Descrizione Immagine: </strong>  <xsl:value-of select="//tei:figure[@xml:id='figure1']//tei:desc"/></p><br/>
<!--                                -->
                                <p class="descrizione"><strong>Nome Autore: </strong>  <xsl:value-of select="//tei:listPerson/tei:person[@xml:id='HT']/tei:persName/tei:forename"/></p><br/>
<!--                                -->
                                <p class="descrizione"><strong>Cognome Autore:</strong> <xsl:value-of select="//tei:listPerson/tei:person [@xml:id='HT']/tei:persName/tei:surname"/></p><br/>
<!--                                -->
                                <p class="descrizione"><strong>Nome mittente: </strong><xsl:value-of select="//tei:listPerson/tei:person[@xml:id='GC']/tei:persName/tei:forename"/></p><br/>
<!--                                -->
                                <p class="descrizione"><strong>Cognome mittente: </strong><xsl:value-of select="//tei:person[@xml:id='GC']/tei:persName/tei:surname"/></p><br/>
<!--                                -->
                                <p class="descrizione"><strong>Luogo: </strong><xsl:apply-templates select="//tei:opener[@xml:id='testocartolina1']//tei:placeName"/></p><br/>
<!--                                -->
                                <p class="descrizione"><strong>Data: </strong><xsl:value-of select="//tei:opener[@xml:id='testocartolina1']/tei:dateline[@xml:id='dataCartolina1']/tei:date"/></p><br/>
<!--                                -->
                                <p class="descrizione"><strong>Deposito: </strong><xsl:value-of select="//tei:msDesc/tei:msIdentifier/tei:repository[@xml:id='deposito']"/></p><br/>
<!--                                -->
                                <p class="descrizione"><strong>codice identficativo: </strong><xsl:value-of select="//tei:msDesc/tei:msIdentifier/tei:idno[@xml:id='codice']"/></p><br/>
<!--                                -->
                                <p class="descrizione"><strong>tipo: </strong><xsl:value-of select="//tei:msDesc/tei:msContents/tei:summary[@xml:id='tipo']"/></p><br/>    
<!--                                -->
                                <p class="descrizione"><strong>lingua: </strong><xsl:value-of select="//tei:msDesc/tei:msContents/tei:textLang[@xml:id='lingua']"/></p><br/>
<!--                                -->
                                <p class="descrizione"><strong>materiale: </strong><xsl:value-of select="//tei:supportDesc/tei:support/tei:material[@xml:id='materiale']"/></p><br/>
<!--                                -->
                                <p class="descrizione"><strong>stato di conservazione: </strong><xsl:value-of select="//tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition[@xml:id='conservazione']"/></p> <br/>
<!--                                -->
                                <p class="descrizione"><strong>Dimensioni: </strong> <xsl:value-of select="//tei:teiHeader[@xml:id='header76']//tei:dimensions/tei:height"/> X <xsl:value-of select="//tei:teiHeader[@xml:id='header76']//tei:dimensions/tei:width"/></p><br/>
<!--                                -->
                                <p class="descrizione"><strong>Francobollo:</strong><xsl:value-of select="//tei:teiHeader[@xml:id='header76']//tei:stamp"/> </p><br/>
<!--                                -->
                                
                                
<!--                                TESTO CARTOLINA-->
                                <h2>TESTO</h2>
                                <p class="descrizione"><xsl:apply-templates select="//tei:opener[@xml:id='testocartolina1']//tei:placeName"/>,<xsl:value-of select="//tei:opener[@xml:id='testocartolina1']/tei:dateline[@xml:id='dataCartolina1']/tei:date"/></p>
<!--                                -->
                                <p class="descrizione"><strong>note aggiuntive: </strong> </p><xsl:value-of select="//tei:msDesc/tei:physDesc/tei:additions[@xml:id='noteaggiuntive']"/>
                                <!--                                -->
                            </div>
                            

                        </div>
                    </div>
                <!--               INIZIO SEZIONE CARTOLINA 2-->
                <div class="cartoline">
<!--                   IMMAGINE CARTOLINA 2 -->     
                   <div id="Cartolina2"></div>
<!--                   TITOLO CARTOLINA -->   
                    <h2 class= "titoloCartolina"><xsl:value-of select="//tei:div[@xml:id='ImmagineF2']/tei:figure[@xml:id='figure2']//tei:title"/></h2>
 <!--                        IMMAGINI CARTOLINA 2-->
 <!--                        FRONTE-->
                    <xsl:element name="img">
                        <xsl:attribute name="src">
                            <xsl:value-of select="//tei:surface[@xml:id='ImgF2']/tei:graphic/@url"/>
                        </xsl:attribute>
                        <xsl:attribute name="class">ImmaginiFronte</xsl:attribute>
                    </xsl:element> 
                    <!--                    RETRO -->   
                    <xsl:element name="img">
                        <xsl:attribute name="src">
                            <xsl:value-of select="//tei:surface[@xml:id='ImgR2']/tei:graphic/@url"/>
                        </xsl:attribute>
                        <xsl:attribute name="class">ImmaginiRetro</xsl:attribute>
                    </xsl:element> 
                    <!--                        DESCRIZIONE CARTOLINA 2-->
                    <div class="descrizioneTotale">
                        <div class="info">
                            <h2 class="titoloDescrizione">DESCRIZIONE</h2>
                            <p class="descrizione"><strong>Descrizione Immagine: </strong><xsl:value-of select="//tei:figure[@xml:id='figure2']/tei:figDesc"/></p><br/>
<!--                            -->
                            <p class="descrizione"><strong>Luogo mittente: </strong></p> <xsl:apply-templates select="//tei:correspDesc/tei:correspAction[@xml:id='mittente']/tei:placeName"/><br/>
<!--                            -->
                            <p class="descrizione"><strong>Luogo destinatario:</strong></p> <xsl:apply-templates select="//tei:div[@type='destination']/tei:div[@xml:id='indDest1']//tei:p//tei:placeName"/><br/>
<!--                            -->
                            <p class="descrizione"><strong>Data: </strong> <xsl:value-of select="//tei:div[@xml:id='testo2']/tei:p/tei:date"/></p><br/>
<!--                            -->
                            <p class="descrizione"><strong>Autore: </strong> <xsl:value-of select="//tei:correspDesc/tei:correspAction[@xml:id='mittente']/tei:persName"/></p><br/>
<!--                            -->
                            <p class="descrizione"><strong>Destinatario: </strong><xsl:value-of select="//tei:correspDesc/tei:correspAction[@xml:id='destinatario']/tei:persName"/></p><br/>
<!--                            -->
                            <p class="descrizione"><strong>Deposito: </strong><xsl:value-of select="//tei:msDesc/tei:msIdentifier/tei:repository[@xml:id='deposito2']"/></p><br/>
<!--                            -->
                            <p class="descrizione"><strong>codice identficativo: </strong><xsl:value-of select="//tei:msDesc/tei:msIdentifier/tei:idno[@xml:id='codice2']"/></p><br/>
<!--                            -->
                            <p class="descrizione"><strong>tipo: </strong><xsl:value-of select="//tei:msDesc/tei:msContents/tei:summary[@xml:id='tipo']"/></p><br/>
<!--                            -->
                            <p class="descrizione"><strong>lingua: </strong><xsl:value-of select="//tei:msDesc/tei:msContents/tei:textLang[@xml:id='lingua']"/></p><br/>
<!--                            -->
                            <p class="descrizione"><strong>materiale: </strong><xsl:value-of select="//tei:supportDesc/tei:support/tei:material[@xml:id='materiale']"/></p><br/>
<!--                            -->
                            <p class="descrizione"><strong>stato di conservazione: </strong><xsl:value-of select="//tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition[@xml:id='conservazione2']"/></p><br/>
<!--                            -->
                            

                            <p class="descrizione"><strong>Bolli: </strong> <xsl:value-of select="//tei:div[@xml:id='timbri2']/tei:p/tei:stamp[@type='postage']"/></p>
                            <!--                                TESTO CARTOLINA-->
                            <h2>TESTO</h2>
                            <!--                            -->
                            <p class="descrizione"><strong>Bollo: </strong>
                                <xsl:value-of select="//tei:div[@xml:id='timbri2']/tei:p/tei:stamp[@type='postage']"/>,
                                 <xsl:value-of select="//tei:div[@xml:id='timbri2']/tei:p/tei:stamp[@type='postmark']/tei:mentioned"/>, <xsl:value-of select="//tei:div[@xml:id='timbri2']/tei:p/tei:stamp[@type='postmark']/tei:date"/>
                            </p> <br/>
                            <p class="descrizione">
                                <xsl:value-of select="//tei:div[@xml:id='indDest1']/tei:p/tei:choice[@xml:id='abbr1']/tei:abbr"/>,<xsl:value-of select="//tei:div[@xml:id='indDest1']/tei:p/tei:choice[@xml:id='abbr2']/tei:abbr"/> </p><br/>
<!--                            -->
                            <p class="descrizione">
                                <xsl:value-of select="//tei:div[@xml:id='indDest1']/tei:p/tei:persName/tei:forename"/>   <xsl:value-of select="//tei:div[@xml:id='indDest1']/tei:p/tei:persName/tei:surname"/>
                            </p><br/>
<!--                            -->
                            <p class="descrizione">
                                <xsl:value-of select="//tei:div[@xml:id='indDest1']/tei:p//tei:address//tei:addrLine/tei:w"/> <xsl:value-of select="//tei:div[@xml:id='indDest1']/tei:p//tei:address//tei:persName/tei:forename"/> <xsl:value-of select="//tei:div[@xml:id='indDest1']/tei:p//tei:address//tei:persName/tei:surname"/> <xsl:value-of select="//tei:div[@xml:id='indDest1']/tei:p//tei:address//tei:num"/>
                            </p><br/>

<!--                            -->
                            <p class="descrizione">
                                <xsl:value-of select="//tei:p[@xml:id='corpo2']/tei:phr/tei:placeName"/></p><br/>
<!--                            -->
                            <p class="descrizione">
                                <xsl:value-of select="//tei:p[@xml:id='corpo2']/tei:phr/tei:w"/>
                            </p><br/>
<!--                            -->
                            <p class="descrizione">
                                <xsl:value-of select="//tei:p[@xml:id='firmaGC']/tei:persName"/>
                            </p><br/>
<!--                            -->
                            <p class="descrizione"><strong>note aggiuntive: </strong><xsl:value-of select="//tei:msDesc/tei:physDesc/tei:additions[@xml:id='noteaggiuntive2']"/></p><br/>
                            
                            
                        </div>
                        
                        
                    </div>
  
                </div>
              
<!--            CREDITI -->        
                <h2 id="crediti">CREDITI</h2>          
            <xsl:element name="footer">
                <xsl:attribute name="class">footer</xsl:attribute>
                <p>Progetto di Codifica di testi a.a. 2019/2020</p>
                <xsl:for-each select="//tei:teiHeader[@xml:id='main']//tei:respStmt">
                    <p><xsl:value-of select="./tei:resp"/>: <xsl:value-of select="./tei:name"/></p>
                    
                </xsl:for-each>
            </xsl:element>
                </div>
                
                    </div>
            </body>
               
        </html>
        
    </xsl:template>

    <xsl:template match="//tei:placeName[@ref='#RV']">
        <div class="tooltip allinea"><xsl:value-of select="."/>
            <span class="tooltiptext">
                Nome: <xsl:value-of select="//tei:teiHeader[@xml:id='header76']//tei:place[@xml:id='RV']/tei:placeName"/> <br/>
                Tipo: <xsl:value-of select="//tei:teiHeader[@xml:id='header76']//tei:place[@xml:id='RV']/tei:settlement"/><br/>
                Provincia: <xsl:value-of select="//tei:teiHeader[@xml:id='header76']//tei:place[@xml:id='RV']/tei:district[@type='provincia']"/><br/>
                Nazione: <xsl:value-of select="//tei:teiHeader[@xml:id='header76']//tei:place[@xml:id='RV']/tei:country"/> <br/>
            </span>
            </div>
    </xsl:template>

    <xsl:template match="//tei:placeName[@ref='#MO']">
        <div class="tooltip allinea"><xsl:value-of select="."/>
            <span class="tooltiptext">
                Nome: <xsl:value-of select="//tei:place[@xml:id='MO']/tei:placeName"/> <br/>
                Tipo: <xsl:value-of select="//tei:place[@xml:id='MO']/tei:settlement"/><br/>
                Provincia: <xsl:value-of select="//tei:place[@xml:id='MO']/tei:district[@type='provincia']"/><br/>
                Nazione: <xsl:value-of select="//tei:place[@xml:id='MO']/tei:country"/> <br/>
            </span>
        </div>
    </xsl:template>


</xsl:stylesheet>