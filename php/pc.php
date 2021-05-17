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
                    <input type="radio" value="Mac Os" name="so">Mac Os<br>
                    <input type="radio" value="Chrome" name="so">Chrome<br>
                    <input type="radio" value="Linux" name="so">Linux<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">GPU</div><!-- <br> -->
                    <input type="radio" value="Nvidia" name="gpu">Nvidia<br>
                    <input type="radio" value="AMD" name="gpu">AMD<br>
                </div>
                <div id="specifiche">
                    <div id="specifica">PREZZO</div><!-- <br> -->
                    <input type="number" min="0" max="5000" step="50" value="400"  name="price">
                    a <input type="number" min="0" max="5000" step="50" value="1200" name="pricem"><br>
                </div>
                <br>
                <div id="specifica"><!-- <br> -->
                    <input type="submit" id="bottone" value="Applica">
                    <input type="reset" value="Annulla filtri" id="bottone">
                </div>
            </form>
        </div>
            <div class="areapc">
                <?php 
                /*connessione al db*/
                    $host='localhost'; 
                    $user='root';
                    $psw='';
                    $db='pcf';

                    $conn = mysqli_connect($host, $user, $psw);

                    $selectdb = mysqli_select_db($conn,$db);
                    /*controllo marca cpu*/
                    if(isset($_POST["cpu"])&&$_POST["cpu"]=="Intel"){
                        $cpu="Intel";
                    }
                    else if(isset($_POST["cpu"])&&$_POST["cpu"]=="Amd"){
                        $cpu="Amd";
                    }
                    else if(isset($_POST["cpu"])&&$_POST["cpu"]=="Apple") {
                        $cpu="Apple";
                    }
                    else{
                        $cpu="";
                    }
                    /*controllo dimesione ram*/
                    if(isset($_POST["ram"])&&$_POST["ram"]=="4GB"){
                        $ram=4;
                    }
                    else if(isset($_POST["ram"])&&$_POST["ram"]=="8GB"){
                        $ram=8;
                    }
                    else if(isset($_POST["ram"])&&$_POST["ram"]=="12GB"){
                        $ram=12;
                    }
                    else if(isset($_POST["ram"])&&$_POST["ram"]=="16GB"){
                        $ram=16;
                    }
                    else if(isset($_POST["ram"])&&$_POST["ram"]=="32GB"){
                        $ram=32;
                    }
                    else{
                        $ram=null;
                    }
                    /*controllo tipo rom*/
                    if(isset($_POST["rom"])&&$_POST["rom"]=="hdd"){
                        $rom="HDD";
                    }
                    else if(isset($_POST["rom"])&&$_POST["rom"]=="ssd"){
                        $rom="SSD";
                    }
                    else if(isset($_POST["rom"])&&$_POST["rom"]=="eMMC"){
                        $rom="eMMc";
                    }
                    else {
                        $rom="";
                    }
                    /*controllo so installato*/
                    if(isset($_POST["so"])&&$_POST["so"]=="Windows"){
                        $so="Win";
                    }
                    else if(isset($_POST["so"])&&$_POST["so"]=="MacOs"){
                        $so="MacOS";
                    }
                    else if(isset($_POST["so"])&&$_POST["so"]=="Chrome"){
                        $so="Chrome";
                    }
                    else if(isset($_POST["so"])&&$_POST["so"]=="Linux"){
                        $so="Linux";
                    }
                    else{
                        $so="";
                    }
                    if(isset($_POST["price"])){           
                        $minprice = $_POST['price'];
                    }
                    else{
                        $minprice=0;
                    }
                    if(isset($_POST["pricem"])){           
                        $maxprice = $_POST['pricem'];
                    }
                    else{
                        $maxprice=2000;
                    }
                    if($ram!=null){
                    $select="SELECT * 
                            from pc
                            where cpu like '%$cpu%' and ram='$ram' and rom like '%$rom%' and so like '%$so%' and prezzo between '$minprice' and '$maxprice'
                            order by marca asc";
                    }
                    else{
                        $select="SELECT * 
                            from pc
                            where cpu like '%$cpu%' and rom like '%$rom%' and so like '%$so%' and prezzo between '$minprice' and '$maxprice'
                            order by marca asc";
                    }
                    $query=mysqli_query($conn, $select);
                    
                    $numrows=mysqli_num_rows($query);
                    if($numrows != 0){
                        while($row = mysqli_fetch_array($query)){
                            ?> 
                            <div class="pc">
                                <img src="../PcImmagini/<?php echo $row["immagine"] ?>" id="pcimage"/>
                                <div id="pcdesc">
                                    (<?php echo $row["id"]?>)<?php echo $row["marca"]. " " .$row["modello"]." ".$row["cpu"]." ".$row["ram"]?>GB<?php echo " ".$row["capienza"]?>GB
                                </div>
                            </div>
                            <?php
                        }
                    }
                    mysqli_close($conn);
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