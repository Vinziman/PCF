<!DOCTYPE html>
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
        <!--Sezione superiore-->
        <header>
            <!-- Icona -->
            <a href="../index.html"><img src="../LOGHI/LOGO_PCF_SITO_NOSFONDO.PNG" id="logo"/></a>
            <div class="sezionericerca">
                <form action=" pc.php" method="POST">
                        <input type="text" name="marca" id="barraricerca" placeholder="Digita qui la marca del pc da ricercare"/>
                        <input type="hidden" name="send">
                        <button id="buttonsearch"><img src="../LOGHI/lente.png"></button>
                </form>
            </div>
        </header>
        
        <!-- connesione -->
        <br><br><br>
        <?php
            $host='localhost'; 
            $user='root';
            $psw='';
            $db='pcf';

            $conn = mysqli_connect($host, $user, $psw);

            $selectdb = mysqli_select_db($conn,$db);
            /*controllo dei pc selezionati se non selezionati */
            if(empty($_POST['selection'])){
                ?>
                <div id="errore">Errore!<br>
                Si prega di selezionare almeno un pc per la comparazione oppure di deselezionare i pc in eccesso dalla pagina precedente
                </div>
                <?php
            }
            else{
                $l=&$_POST['selection'];
                $n=count($l);
                /*controllo dei pc selezionati se superiori a 3 */
                if($n>3){
                    ?>
                    <div id="errore">Errore!<br>
                    Si prega di selezionare almeno un pc per la comparazione oppure di deselezionare i pc in eccesso dalla pagina precedente
                    </div>
                    <?php
                }
                /*creazione delle sezioni per il confronto*/
                else{
                    if(!empty($_POST['selection'])) {
                        foreach($_POST['selection'] as $check) {
                            $select="SELECT *
                                    FROM pc
                                    WHERE id='$check'";
                            $query=mysqli_query($conn, $select);
                            $numrows=mysqli_num_rows($query); 
                            if($numrows != 0){
                                while($row = mysqli_fetch_array($query)){
                                ?>
                                <div class="comparazione">
                                    <br>
                                    <img src="<?php echo $row['immagine']?>"/><br>
                                    <div id="caratteristica" style="margin-left:200px;"><?php echo $row['prezzo']?> €</div>
                                    <div id="caratteristica">Marca: <?php echo $row['marca']?></div>
                                    <div id="caratteristica">Modello: <?php echo $row['modello']?></div>
                                    <div id="caratteristica">Cpu: <?php echo $row['cpu']?></div>
                                    <div id="caratteristica">Ram: <?php echo $row['ram']?> GB</div>
                                    <div id="caratteristica">Memoria: <?php echo $row['rom']?></div>
                                    <div id="caratteristica">Capienza: <?php echo $row['capienza']?> GB</div>
                                    
                                    <div id="caratteristica">Punteggi:
                                        <table id="table">
                                            <tr>
                                                <th>Qualità/Prezzo</th>
                                                <th>Gaming</th>
                                                <th>Editing</th>
                                                <th>Workstation</th>
                                            </tr>
                                            <tr>
                                                <td><?php echo $row['qp']?></td>
                                                <td><?php echo $row['gaming']?></td>
                                                <td><?php echo $row['editing']?></td>
                                                <td><?php echo $row['workstation']?></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="caratteristica"> <a href="<?php echo $row['link']?>" id="e-commerce" target="_blank">Link per acquisto</a></div>
                                    <br>
                                </div>
                                <?php
                                }
                            }
                        }
                    }
                }
            }
            ?>
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