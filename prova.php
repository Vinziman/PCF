<html>
    <head>
        <title>PcFinder</title>
        <link rel="stylesheet" href="cssstyle.css">
        <style>
            ::-webkit-scrollbar {
                width: 20px;
            }       
            ::-webkit-scrollbar-track{
                box-shadow: inset 0 0 5px grey; 
                border-radius: 20px;
            }
            ::-webkit-scrollbar-thumb{
                background:rgb(100, 100, 100);
                border-radius:20px;
            }
        </style>
    </head>
    <body>
        <!--Sezione superiore-->
        <div class="top">
            <!-- Icona -->
            <img src="../LOGHI/LOGO_PCF_SITO_NOSFONDO.PNG" id="logo"/>
        <!--Area utente-->
            <div class="areautente">
                <img id="image" src="../guest.png"/>
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
                <a href="desktop.php" id="latosx" ><li>Pc Desktop</li></a>
                <a href="../PCF.html" id="home" ><li>Home</li></a>
                <a href="portatili.php" id="latodx" ><li>Pc Portatile</li></a>
            </ul>
        </div>
        <!--Scelta dei filtri-->
        <div class="filtri">
            <form action="./pc.php" method="POST"> 
            <div id="specifiche">
                    <div id="specifica">CPU</div><!-- <br> -->
                    <input type="checkbox" name="cpu[]" value="Intel">Intel<br>
                    <input type="checkbox" name="cpu[]" value="Amd">AMD<br>
                    <input type="checkbox" name="cpu[]" value="Apple">Apple<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">RAM</div><!-- <br> -->
                    <input type="checkbox" value="4GB" name="ram[]">4 GB<br>
                    <input type="checkbox" value="8GB" name="ram[]">8 GB<br>
                    <input type="checkbox" value="12GB" name="ram[]">12 GB<br>
                    <input type="checkbox" value="16GB" name="ram[]">16 GB<br>
                    <input type="checkbox" value="32GB" name="ram[]">32 GB<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">ROM</div><!-- <br> -->
                    <input type="checkbox" value="hdd" name="rom[]">HDD<br>
                    <input type="checkbox" value="ssd" name="rom[]">SSD<br>
                    <input type="checkbox" value="eMMC" name="rom[]">eMMC<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">SO</div><!-- <br> -->
                    <input type="checkbox" value="Windows" name="so[]">Win10<br>
                    <input type="checkbox" value="Mac Os" name="so[]">Mac Os<br>
                    <input type="checkbox" value="Chrome" name="so[]">Chrome<br>
                    <input type="checkbox" value="Linux" name="so[]">Linux<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">GPU</div><!-- <br> -->
                    <input type="checkbox" value="Nvidia" name="gpu[]">Nvidia<br>
                    <input type="checkbox" value="AMD" name="gpu[]">AMD<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">PREZZO</div><!-- <br> -->
                    <input type="number" min="0" max="5000" step="50" value="400"  name="price">
                    a <input type="number" min="0" max="5000" step="50" value="1200" name="pricem"><br>
                </div>
                <br>
                <div id="specifica"><!-- <br> -->
                    <input type="submit" id="bottone" value="Applica" name="submit">
                    <input type="reset" value="Annulla filtri" id="bottone">
                </div>
            </form>
        </div>
            <div class="areapc">
                <?php 
                if(isset($_POST["submit"])){
                /*connessione al db*/
                    $host='localhost'; 
                    $user='root';
                    $psw='';
                    $db='pcf';

                    $conn = mysqli_connect($host, $user, $psw);

                    $selectdb = mysqli_select_db($conn,$db);
                    
                   /*  $query=mysqli_query($conn, $select);
                    
                    $numrows=mysqli_num_rows($query);
                    mysqli_close($conn); */
                }
                ?>
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
                    <a href="cosePCF.html"><li>Cos'è PCF</li></a>
                    <a href="privacy.html"><li>Informativa sulla privacy</li></a>
                    <a href="terminiuso.html"><li>Termini d'uso</li></a>
                </ul>
               </div>
</body>
</html>