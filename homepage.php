<!DOCTYPE html>
<html>
    <head>
        <title>PcFinder</title>
        <link rel="stylesheet" href="base.css">
        <!-- overwrider della barra di scroll laterale-->
        <style>
            ::-webkit-scrollbar {
                width: 20px;
            }       
            ::-webkit-scrollbar-track{
                box-shadow: inset 0 0 5px grey; 
                border-radius: 10px;
            }
            ::-webkit-scrollbar-thumb{
                background:rgb(100, 100, 100);
                border-radius:15px;
            }
        </style>
    </head>
    <body>
        <!--Sezione superiore contenente icona, area utente e barra di ricerca-->
        <header>
            <!-- Icona -->
            <a href="index.html"><img src="LOGHI/LOGO_PCF_SITO_NOSFONDO.PNG" id="logo"/></a>
            <!-- sezione ricerca -->
            <div class="sezionericerca">
                <form action="php/pc.php" method="POST">
                        <input type="text" name="marca" id="barraricerca" placeholder="Cerca Pc per marca "/>
                        <input type="hidden" name="send">
                        <button id="buttonsearch"><img src="LOGHI/lente.png"></button>
                </form>
            </div>
        </header>
        <!--Scelta dei filtri-->
        <div class="filtri">
            <form action="php/pc.php" method="POST"> 
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
                    <input type="number" min="0" max="5000" step="50" value="400" name="pricemin"> 
                    a  <input type="number" min="0" max="5000" step="50" value="1200" name="pricemax">
                </div>
                
                <div id="specifica"><!-- <br> -->
                    <input type="submit" id="bottone" value="Applica">
                    <input type="reset" value="Annulla filtri" id="bottone">
                </div>
            </form>
        </div>
        <!--zona visualizzazione pc-->
        <form action="php/PCF.php" method="POST" target="_blank">
            <input type="hidden"  id="compara" name="invio">
            <button id="comparabutton"><img src="LOGHI/vs.png"></button>
            <input type="reset"  id="reset" name="reset" value="Resetta selezione">
            <div class="areapc">
                <?php
                $host='localhost'; 
                $user='root';
                $psw='';
                $db='pcf';

                $conn = mysqli_connect($host, $user, $psw);

                $selectdb = mysqli_select_db($conn,$db);
                $id1=rand(1,60);
                $id2=rand(1,60);
                $id3=rand(1,60);
                $id4=rand(1,60);
                $id5=rand(1,60);
                $id6=rand(1,60);
                $id7=rand(1,60);

                $select="SELECT *
                        FROM pc
                        WHERE id=36 or id='$id2' or id='$id3' or id='$id4' or id='$id5' or id='$id6' or id='$id7'
                        order by marca asc";
                        $count=0;
                        $query=mysqli_query($conn, $select);
                        if(mysqli_num_rows($query)!=0){
                            while($row = mysqli_fetch_array($query)){
                                while($row = mysqli_fetch_array($query)){
                                    if($count==0){
                                        $count++;
                                        ?>
                                        <div class="pc1">
                                        <img src="<?php echo $row["immagine"] ?>" alt="<?php echo $row["marca"]. " " .$row["modello"]." ".$row["cpu"]." ".$row["ram"]?>GB<?php echo " ".$row["capienza"]?>GB" id="pcimage"/>
                                        <input type="checkbox" name="selection[]" value="<?php echo $row['id'] ?>">   
                                        <div id="pcdesc">
                                            <form action="schedatecnica.php" method="POST" target="_blank">
                                                <input type="number" name="id" value="<?php echo $row["id"]?>" id="number">
                                                <input type="submit" value="<?php echo $row["marca"]. " " .$row["modello"]." ".$row["prezzo"]?>€" id="scheda">
                                            </form>
                                        </div>                                                         
                                    </div>
                                    <?php 
                                    }
                                    else{
                                    ?>
                                    <div class="pc">
                                        <img src="<?php echo $row["immagine"] ?>" alt="<?php echo $row["marca"]. " " .$row["modello"]." ".$row["cpu"]." ".$row["ram"]?>GB<?php echo " ".$row["capienza"]?>GB" id="pcimage"/>
                                        <input type="checkbox" name="selection[]" value="<?php echo $row['id'] ?>">   
                                        <div id="pcdesc">
                                            <form action="php/schedatecnica.php" method="POST">
                                                <input type="number" name="id" value="<?php echo $row["id"]?>" id="number">
                                                <input type="submit" name="invio" value="<?php echo $row["marca"]. " " .$row["modello"]." ".$row["prezzo"]?>€" id="scheda">
                                            </form>
                                        </div>                                                         
                                    </div> 
                                    <?php
                                    }
                                }
                            }
                        }
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