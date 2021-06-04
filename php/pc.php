<html>
    <head>
        <title>PcFinder</title>
        <link rel="stylesheet" href="../base.css">
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
        <!--Sezione superiore conteente icona, area utente e barra di ricerca-->
        <header>
            <!-- Icona -->
            <a href="../index.html"><img src="../LOGHI/LOGO_PCF_SITO_NOSFONDO.PNG" id="logo"/></a>
            <!-- sezione ricerca -->
            <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
                <div class="sezionericerca">
                    <input type="text" name="marca" id="barraricerca" placeholder="Cerca Pc"/>
                    <input type="submit" name="send" id="buttonsearch">
                    <input type="hidden" name="send">
                </div>
            </form>
        </header>
        
        <!--Scelta dei filtri-->
        <div class="filtri">
            <form action="pc.php" method="POST"> 
                <div id="specifiche">
                    <div id="specifica">Tipologia</div>
                    <input type="radio" name="tipologia" value="portatile">Portatile<br>
                    <input type="radio" name="tipologia" value="desktop">Desktop<br>
                </div>
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
                    <input type="number" min="0" max="5000" step="50" value="300" name="pricemin"> 
                    a  <input type="number" min="0" max="5000" step="50" value="1200" name="pricemax">
                </div>
                
                <div id="specifica"><!-- <br> -->
                    <input type="submit" id="bottone" value="Applica">
                    <input type="reset" value="Annulla filtri" id="bottone">
                </div>
            </form>
        </div>
        <form action="PCF.php" method="GET" target="_blank">
            <input type="hidden"  id="compara" name="invio">
            <p>Confronta:</p>
            <input type="submit"  id="compara" name="invio">
            <div class="areapc">
                <?php 
                /*connessione al db*/
                    $host='localhost'; 
                    $user='root';
                    $psw='';
                    $db='pcf';

                    $conn = mysqli_connect($host, $user, $psw);

                    $selectdb = mysqli_select_db($conn,$db);

                    /*tipologia */
                    if(isset($_POST["tipologia"]) && $_POST["tipologia"]=="desktop"){
                        $tipologia="desktop";
                    }
                    else if(isset($_POST["tipologia"]) && $_POST["tipologia"]=="portatile"){
                        $tipologia="portatile";
                    }
                    else{
                        $tipologia="";
                    }


                    /*selezione marca cpu*/
                    if(isset($_POST["cpu"]) && $_POST["cpu"]=="Intel"){
                        $cpu="i";
                    }
                    else if(isset($_POST["cpu"]) && $_POST["cpu"]=="Amd"){
                        $cpu="Amd";
                    }
                    else if(isset($_POST["cpu"]) && $_POST["cpu"]=="Apple") {
                        $cpu="Apple";
                    }
                    else{
                        $cpu="";
                    }


                    /*selezione dimesione ram*/
                    if(isset($_POST["ram"]) && $_POST["ram"]=="4GB"){
                        $ram=4;
                    }
                    else if(isset($_POST["ram"]) && $_POST["ram"]=="8GB"){
                        $ram=8;
                    }
                    else if(isset($_POST["ram"]) && $_POST["ram"]=="12GB"){
                        $ram=12;
                    }
                    else if(isset($_POST["ram"]) && $_POST["ram"]=="16GB"){
                        $ram=16;
                    }
                    else if(isset($_POST["ram"]) && $_POST["ram"]=="32GB"){
                        $ram=32;
                    }
                    else{
                        $ram=null;
                    }


                    /*selezione tipo rom*/
                    if(isset($_POST["rom"]) && $_POST["rom"]=="hdd"){
                        $rom="HDD";
                    }
                    else if(isset($_POST["rom"]) && $_POST["rom"]=="ssd"){
                        $rom="SSD";
                    }
                    else if(isset($_POST["rom"]) && $_POST["rom"]=="eMMC"){
                        $rom="eMM";
                    }
                    else {
                        $rom="";
                    }
                    /*selezione so installato*/
                    if(isset($_POST["so"]) && $_POST["so"]=="Windows"){
                        $so="Win";
                    }
                    else if(isset($_POST["so"]) && $_POST["so"]=="MacOs"){
                        $so="MacOS";
                    }
                    else if(isset($_POST["so"]) && $_POST["so"]=="Chrome"){
                        $so="Chrome";
                    }
                    else if(isset($_POST["so"]) && $_POST["so"]=="Linux"){
                        $so="Linux";
                    }
                    else{
                        $so="";
                    }


                    /*selezione fascia prezzo */
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
                        $maxprice=5000;
                    }

                    /*controllo invio */
                    if(isset($_POST["send"])){           
                        $marca = $_POST['marca'];
                    }
                    else{
                        $marca="";
                    }


                    /*ram diversa da null*/
                    if($ram!=null){
                        $select="SELECT * 
                                from pc
                                where cpu like '%$cpu%' and ram='$ram' and rom like '%$rom%' 
                                and so like '%$so%' and prezzo between '$minprice' and '$maxprice' 
                                and marca like '%$marca%'
                                and tipologia like '%$tipologia%'
                                order by marca asc";
                    }
                    else{
                        $select="SELECT * 
                            from pc
                            where cpu like '%$cpu%' and rom like '%$rom%' 
                            and so like '%$so%' and prezzo between '$minprice' and '$maxprice' 
                            and marca like '%$marca%'
                            and tipologia like '%$tipologia%'
                            order by marca asc";
                    }
                    $query=mysqli_query($conn, $select);
                    
                    if(mysqli_num_rows($query)!=0){
                            while($row = mysqli_fetch_array($query)){
                                ?>
                                <div class="pc">
                                    <img src="<?php echo $row["immagine"] ?>" alt="<?php echo $row["marca"]. " " .$row["modello"]." ".$row["cpu"]." ".$row["ram"]?>GB<?php echo " ".$row["capienza"]?>GB" id="pcimage"/>
                                    <input type="checkbox" name="selection[]" value="<?php echo $row['id'] ?>">   
                                    <div id="pcdesc">
                                        <form action="schedatecnica.php" method="POST">
                                            <input type="number" name="id" value="<?php echo $row["id"]?>" id="number">
                                            <input type="submit" value="<?php echo $row["marca"]. " " .$row["modello"]." ".$row["prezzo"]?>€" id="scheda" >
                                        </form>
                                    </div>                                                         
                                </div> 
                            <?php
                            }                 
                    }
                    mysqli_close($conn);
                ?>
            </div>
        </form>
        <footer>
            <ul>
                <a href="documenti/chisiamo.html" target="_blank"><li>Chi siamo</li></a>
                <a href="documenti/cosepcf.pdf" target="_blank"><li>Cos'&#232 PCF</li></a>
                <a href="documenti/privacy.html" target="_blank"><li>Informativa sulla privacy</li></a>
                <a href="documenti/terminiuso.html" target="_blank"><li>Termini d'uso</li></a>
            </ul>
        </footer>
</body>
</html>