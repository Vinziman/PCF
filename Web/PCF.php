<html>
    <head>
        <title>PcFinder</title>
        <link rel="stylesheet" href="base.css">
    </head>
    <body>
        <!--Sezione Icona-->
            <!-- Icona -->
        <!--Area utente-->
        <div class="areautente">
            <img id="image"/>
            <div id="dati">
                <a href=""></a><br>
                <a href=""></a>
            </div>
            <a href="Profilo.php" id="view">visita</a>
        </div>
        <!--Scelta dei filtri-->
        <div class="filtri">
            <form action method="POST" href="homepage.php"> 
                <div id="specifiche">
                    SO<br>
                    <input type="checkbox" value="Win10">Win10<br>
                    <input type="checkbox" value="Mac_Os">Mac Os<br>
                    <input type="checkbox" value="Chrome">Chrome<br>
                    <input type="checkbox" value="Linux">Linux<br>
                </div>
                <div id="specifiche">
                    Ram<br>
                    <input type="checkbox" value="4GB">4 GB<br>
                    <input type="checkbox" value="8GB">8 GB<br>
                    <input type="checkbox" value="12GB">12 GB<br>
                    <input type="checkbox" value="12+GB">12+ GB<br>
                </div>
                <div id="specifiche">
                    CPU<br>
                    <input type="checkbox" value="Intel">Intel<br>
                    <input type="checkbox" value="AMD">AMD<br>
                    <input type="checkbox" value="Apple">Apple<br>
                </div>
                <div id="specifiche">
                    GPU<br>
                    <input type="checkbox" value="Nvidia">Nvidia<br>
                    <input type="checkbox" value="AMD">AMD<br>
                </div>
                <div id="specifiche">
                    Prezzo<br>
                    Min: <input type="number" min="0" max="5000" step="50" value="400"><br>
                    Max: <input type="number" min="0" max="5000" step="50" value="700"><br>
                </div>
                <br>
                <button>Applica</button>
            </form>
        </div>
        <!--Realizzazione della zona di ricerca di pc desktop e portatili-->
            <div class="areapc">
                <!-- bottoni riga -->
                <button id="latosx" href="desktop.php">Pc Desktop</button>
                <button id="home" href="PCF.html">Home</button>
                <button id="latodx" href="portatili.php">Pc Portatile</button>
                <!-- bottoni grandi -->
                <button id="buttonpc" href="portatili.php">
                    <img src="../PcImmagini/pcp.png" alt="Pc portatili" id="size">
                </button>
                <button id="buttonpc" href="desktop.php">
                    <img src="../PcImmagini/pcd.png" alt="Pc desktop" id="size">
                </button>
            </div>
            <!-- sezione ricerca -->
            <form action="pc.php" method="get">
                <div class="sezionericerca">
                    <input type="text" id="barraricerca" placeholder="Cerca Pc"/>
                    <input type="hidden" name="Cerca">
                </div>
            </form>
    </body>
</html>