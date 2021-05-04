<html>
    <head>
        <title>
            Carga los Datos enviados por php4.html
        </title>
    </head>
    <body>
        <?php
              $y = $_POST['a'];
              $z = $_POST['b'];
              $c = $y + $z;
              echo "la suma de $y + $z es ". $c;
        ?>
    </body>
</html>