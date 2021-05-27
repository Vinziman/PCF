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
        <?php
            $host='localhost'; 
            $user='root';
            $psw='';
            $db='pcf';

            $conn = mysqli_connect($host, $user, $psw);

            $selectdb = mysqli_select_db($conn,$db);
            $n=count($_GET['selection']);
            if($n>3){
                echo "Errore,siamo spiacenti il sito al momento può supportore solo 3 pc in comparazione la preghiamo di tornare alla pagina precedente,";
            }
            else{
                if(!empty($_GET['selection'])) {
                    foreach($_GET['selection'] as $check) {
                        $select="SELECT *
                                FROM pc
                                WHERE id='$check'";
                        $query=mysqli_query($conn, $select);
                        $numrows=mysqli_num_rows($query); 
                    if($numrows != 0){
                            while($row = mysqli_fetch_array($query)){
                            ?>
                            <div class="comparazione">
                                <img src="<?php echo $row['immagine']?>" id="pcimage"/>
                                <div id="caratteristica">Marca: </div>
                                <div id="caratteristica">Modello: </div>
                                <div id="caratteristica">Cpu: </div>
                                <div id="caratteristica">Ram: </div>
                                <div id="caratteristica">Memoria: </div>
                                <div id="caratteristica">Prezzo: </div>
                                <div id="caratteristica">Punteggi:
                                    <table>
                                        <tr>
                                            <th>Qualità/Prezzo</th>
                                            <th>Gaming</th>
                                            <th>Editing</th>
                                            <th>Workstation</th>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                                <div id="caratteristica">Link per acquisto: </div>
                            </div>
                            <?php
                            }
                        }
                    }
                }
            }
        ?>
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