<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cátalago de Alumnos</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="code.jquery.com_jquery-3.7.1.min.js"></script>
</head>
<body>
    <?php 
        include 'menu.php'; 
        include 'conexion.php';

        $sql = "SELECT * FROM alumnos";
        $datos = $conexion->query($sql);

    ?>

    <div class="container">
        <div class="row">
            <div class="col-12">
        <?php 
            if($datos->num_row > 0) { ?>

                <table class="table table-hover">
                    <thead> 
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Número de control</th>
                            <th>Semestre</th>
                            <th>Edad</th>
                            <th>Turno</th>
                            <th>Sexo</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
        <?php }else{ ?>
            <h2>No existen datos del alumno en la base de datos</h2>
        <?php } ?>
            </div>
        </div>
    </div>
    <script src="js/bootstrap.js"></script>
</body>
</html>