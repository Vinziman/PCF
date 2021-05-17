<!DOCTYPE html>
<html>
    <head>
        <title>PcFinder</title>
        <link rel="stylesheet" href="../base.css">
    </head>
    <body>
        <!--Sezione superiore-->
        <div class="top">
            <!-- Icona -->
            <img src="./LOGHI/LOGO_PCF_SITO_NOSFONDO.PNG" id="logo"/>
        <!--Area utente-->
            <div class="areautente">
                <img id="image" src="guest.png"/>
                <div id="dati">
                    <a href="Login.html">Accedi</a><br>
                    <a href="Registrazione.html">Registrati</a>
                </div>
                <!-- <a href="Profilo.php" id="view">visita</a> -->
            </div>
            <!-- sezione ricerca -->
            <form action="pc.php" method="get">
                <div class="sezionericerca">
                    <input type="text" id="barraricerca" placeholder="Cerca Pc"/>
                    <input type="hidden" name="Cerca">
                </div>
            </form>
        </div>
        <!--Realizzazione della zona di ricerca di pc desktop e portatili-->
        <!-- bottoni riga -->
        <div class="areatop">
            <ul>
                <a href="./desktop.php" id="latosx"><li>Pc Desktop</li></a>
                <a href="../PCF.html" id="home"><li>Home</li></a>            
                <a href="./desktop.php" id="latodx"><li>Pc Portatile</li></a>
            </ul>
        </div>
        <!--Scelta dei filtri-->
        <div class="filtri">
            <form action="php/pc.php" method="POST"> 
                <div id="specifiche">
                    <div id="specifica">CPU</div><!-- <br> -->
                    <input type="radio" name="cpu" value="Intel">Intel<br>
                    <input type="radio" name="cpu" value="Amd">AMD<br>
                    <input type="radio" name="cpu" value="Apple">Apple<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">RAM</div><!-- <br> -->
                    <input type="radio" value="4GB" name="ram">4 GB<br>
                    <input type="radio" value="8GB" name="ram">8 GB<br>
                    <input type="radio" value="12GB" name="ram">12 GB<br>
                    <input type="radio" value="16GB" name="ram">16 GB<br>
                    <input type="radio" value="32GB" name="ram">32 GB<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">ROM</div><!-- <br> -->
                    <input type="radio" value="hdd" name="rom">HDD<br>
                    <input type="radio" value="ssd" name="rom">SSD<br>
                    <input type="radio" value="eMMC" name="rom">eMMC<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">SO</div><!-- <br> -->
                    <input type="radio" value="Windows" name="so">Win10<br>
                    <input type="radio" value="MacOs" name="so">Mac Os<br>
                    <input type="radio" value="Chrome" name="so">Chrome<br>
                    <input type="radio" value="Linux" name="so">Linux<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">GPU</div><!-- <br> -->
                    <input type="radio" value="Nvidia" name="gpu">Nvidia<br>
                    <input type="radio" value="AMD" name="gpu">AMD<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">PREZZO</div>
                    <input type="number" min="0" max="5000" step="50" value="400" name="pricemin"> 
                    a  <input type="number" min="0" max="5000" step="50" value="1200" name="pricemax">
                </div>
                <br>
                <div id="specifica"><!-- <br> -->
                    <input type="submit" id="bottone" value="Applica">
                    <input type="reset" value="Annulla filtri" id="bottone">
                </div>
            </form>
        </div>
            <!-- <button id="latosx" href="desktop.php">Pc Desktop</button>
            <button id="home" href="PCF.html">Home</button>
            <button id="latodx" href="portatili.php">Pc Portatile</button> -->
            <div class="areapc">
            <!-- bottoni grandi -->
                <a href="portatili.php" id="buttonpc" >
                    <img src="./PcImmagini/pcportatile.png" alt="Pc portatili" id="size">
                </a>
                <a id="buttonpc" href="desktop.php">
                    <img src="./PcImmagini/pcdesktop.png" alt="Pc desktop" id="size">
                </a>
            </div>
           <div class="consigliati">
               <div id="top">Consigliati</div> 
               <div id="elenco">
               </div>
               <div id="bottom"></div>
               </div>
               <div class="privacy">
                <ul>
                    <a href="chisiamo.html"><li>Chi siamo</li></a>
                    <a href="cosePCF.html"><li>Cos'&#232 PCF</li></a>
                    <a href="privacy.html"><li>Informativa sulla privacy</li></a>
                    <a href="terminiuso.html"><li>Termini d'uso</li></a>
                </ul>
               </div>
    </body>
</html>