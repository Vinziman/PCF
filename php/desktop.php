<html>
    <head>
        <title>PcFinder</title>
        <link rel="stylesheet" href="../base.css">
    </head>
    <body>
        <!--Sezione superiore-->
        <div class="top">
            <!-- Icona -->
            <img src="../LOGHI/LOGO_PCF_SITO_NOSFONDO.PNG" id="logo"/>
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
                <a href="./desktop.php" id="latosx" ><li>Pc Desktop</li></a>
                <a href="../PCF.html" id="home" ><li>Home</li></a>
                <a href="./portatili.php" id="latodx" ><li>Pc Portatile</li></a>
            </ul>
        </div>
        <!--Scelta dei filtri-->
        <div class="filtri">
            <form action method="POST" href="homepage.php"> 
                <div id="specifiche">
                    <div id="specifica">CPU</div><!-- <br> -->
                    <input type="checkbox" value="Intel">Intel<br>
                    <input type="checkbox" value="AMD">AMD<br>
                    <input type="checkbox" value="Apple">Apple<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">RAM</div><!-- <br> -->
                    <input type="checkbox" value="4GB">4 GB<br>
                    <input type="checkbox" value="8GB">8 GB<br>
                    <input type="checkbox" value="12GB">12 GB<br>
                    <input type="checkbox" value="12+GB">12+ GB<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">ROM</div><!-- <br> -->
                    <input type="checkbox" value="4GB">HDD<br>
                    <input type="checkbox" value="8GB">SSD<br>
                    <input type="checkbox" value="12GB">eMMC<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">SO</div><!-- <br> -->
                    <input type="checkbox" value="Win10">Win10<br>
                    <input type="checkbox" value="Mac_Os">Mac Os<br>
                    <input type="checkbox" value="Chrome">Chrome<br>
                    <input type="checkbox" value="Linux">Linux<br>
                </div>
                <!-- <div id="specifiche">
                    <div id="specifica">ARCHIVIANE</div><br>
                    <input type="checkbox" value="4GB">128 GB<br>
                    <input type="checkbox" value="8GB">256 GB<br>
                    <input type="checkbox" value="12GB">512 GB<br>
                    <input type="checkbox" value="12+GB">1 TB<br>
                </div> -->
                <div id="specifiche">
                    <div id="specifica">GPU</div><!-- <br> -->
                    <input type="checkbox" value="Nvidia">Nvidia<br>
                    <input type="checkbox" value="AMD">AMD<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">PREZZO</div><!-- <br> -->
                    Min: <input type="number" min="0" max="5000" step="50" value="400"><br>
                    Max: <input type="number" min="0" max="5000" step="50" value="800"><br>
                </div>
                <br>
                <div id="specifica"><!-- <br> -->
                    <button id="bottone">Applica</button>
                    <input type="reset" value="Annulla filtri" id="bottone">
                </div>
            </form>
        </div>
            <!-- <button id="latosx" href="desktop.php">Pc Desktop</button>
            <button id="home" href="PCF.html">Home</button>
            <button id="latodx" href="portatili.php">Pc Portatile</button> -->
            <div class="areapc">
                <?php 
                    $host='localhost'; 
                    $user='root';
                    $psw='';
                    $conn = mysqli_connect($host, $user, $psw);
                    if (!$conn) {
                        die("Connection failed: " . mysqli_connect_error());
                    }
                    mysqli_close($conn);
                ?>
            </div>
           <div class="consigliati">
               <div id="top">Consigliati</div> 
               <div id="elenco">
                   <div id="pc">
                       <div id="pcimage"></div>
                   </div>
               </div>
               <div id="bottom"></div>
               </div>
               <div class="privacy">
                <ul>
                    <a href="chisiamo.html"><li>Chi siamo</li></a>
                    <a href="cosePCF.html"><li>Cos'è PCF</li></a>
                    <a href="privacy.html"><li>Informativa sulla privacy</li></a>
                    <a href="terminiuso.html"><li>Termini d'uso</li></a>w
                </ul>
               </div>
</body>
</html>