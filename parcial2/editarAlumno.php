<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Alumno</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="code.jquery.com_jquery-3.7.1.min.js"></script>
</head>
<body>
    <?php 
        include 'menu.php'; 
        include 'conexion.php';

        $id = $_GET["id"];
        $sql = "SELECT * FROM alumnos id=" .$id;

        $datos = $conexion->query($sql);
        $alumno = $datos->fetch_assoc();
        ?>
    <div class="container">
        <div class="row">
            <div class="col-12 card m-4">
                <form action="guardarRegistro.php" method="POST">
                    <div class="form-group">
                        <label for="">Nombre: </label>
                        <input value="<?php echo $alumnp["nombre"]; ?>" name="nombre" type="text" class="form-control" placeholder="Teclea el nombre del alumno:" required>
                    </div>
                    <div class="form-group">
                        <label for="">Numero de control: </label>
                        <input value="<?php echo $alumnp["numero_control"]; ?>" name="nc" type="text" class="form-control" placeholder="Teclea el numero de control del alumno:" required>
                    </div>
                    <div class="form-group">
                        <label for="">Semestre: </label>
                        <input value="<?php echo $alumnp["semestre"]; ?>" name="semestre" type="number" class="form-control" placeholder="Teclea el semestre del alumno:" required>
                    </div>
                    <div class="form-group">
                        <label for="">Edad: </label>
                        <input value="<?php echo $alumnp["edad"]; ?>" name="edad" type="number" class="form-control" placeholder="Teclea la Edad del alumno:" required>
                    </div>
                    <div class="form-group">
                        <label for="">Turno: </label>
                        <select name="turno" id="" class="form-control" required>
                        <option value="<?php echo $alumnp["turno"]; ?>"></option>
                        <option value="">Selecciona el turno</option>
                        <option value="Matutino">Matutino</option>
                        <option value="Vespertino">Vespertino</option>
                    </select>
                    </div>
                    <div class="form-group">
                        <label for="">Sexo: </label>
                        <select name="sexo" id="" class="form-control" required>
                        <option value="">Selecciona el Sexo</option>
                        <option value="0">Mujer</option>
                        <option value="1">Hombre</option>
                        <option value="2">Prefiero no responder</option>
                    </select>
                    </div>
                    <div>
                        <br>
                        <center><input type="submit" value="Registrar" class="btn btn-primary">
                        <a href="consultarAlumnos.php" class="btn btn-danger">Cancelar</a>
                        <a href="editarAlumnos.php"></a></center>
                    </div>
                    <br>
                </form>
            </div>
        </div>
    </div>

    <footer class="text-center">
        <hr>
        CETis 107 &copy; 2023
    </footer>

    <script src="js/bootstrap.js"></script>

</body>
</html>