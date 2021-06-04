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
        <header>
        <a href="../index.html"><img src="../LOGHI/LOGO_PCF_SITO_NOSFONDO.PNG" id="logo"/></a>
            <div class="sezionericerca">
                <form action=" pc.php" method="POST">
                        <input type="text" name="marca" id="barraricerca" placeholder="Cerca Pc per marca "/>
                        <input type="hidden" name="send">
                        <input type="submit" name="send" id="buttonsearch">
                </form>
            </div>
        </header>
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