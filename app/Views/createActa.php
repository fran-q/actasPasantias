<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Creacion de acta</title>
    <meta name="description" content="The small framework with powerful features">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/png" href="/favicon.ico">
    

</head>
<body table="" style="background-color: cadetblue; margin: 50px">
<!-- HEADER: MENU + HEROE SECTION -->

<header>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>    
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</header>
<div class="formulario">
<form action="procesar_formulario.php"method="POST">
<style>
        table {
            border-collapse:collapse;
            margin:0 auto;
        }
        td {
            border:none;
            padding:0;
            text-align: left;
        }
        </style>
</head>
<body>
  <table>
    <tr>
      <td><font size="+2">FORMULARIO DE ACTA</font><br> <br></td>
    </tr>
    <tr>
      <td><label for="TIPO DE ACTA">TIPO DE ACTA:</label>
      <input type="text" id="tipo_acta" name="tipo_acta" required><br><br> </td>
    </tr>
    <tr>
        <td><label for="NOMBRE DE COMERCIO">NOMBRE DE COMERCIO:</label>
        <input type="text" id="comercio" name="comercio" required><br><br></td>
    </tr>
    <tr>
        <td><label for="DIRECCIÓN">DIRECCIÓN:</label>
        <input type="text" id="direccion" name="direccion" required><br><br></td>
    </tr>
    <tr>
        <td><label for="RESPONSABLE">RESPONSABLE:</label>
        <input type="text" id="responsable" name="responsable" required><br><br></td>
    </tr>
    <tr>
        <td><label for="LEGAJO INSPECTOR">LEGAJO INSPECTOR:</label>
        <input type="text" id="inspector" name="inspector" required><br><br></td>
    </tr>
    <tr>
        <td><label for="EMPRESA DESINFECCIÓN">EMPRESA DESINFECCIÓN:</label>
        <input type="text" id="empresa" name="empresa" required><br><br></td>
    </tr>
    <tr>
        <td><label for="DESINFECCIÓN">DESINFECCIÓN:</label>
        <input type="text" id="desinfeccion" name="desinfeccion" required><br><br></td>
    </tr>
    <tr>
        <td><p align= "center"><input type="submit" value="Enviar"></p></td>
    </tr>
  </table>
  </form>
 
</div>


<script>
    function toggleMenu() {
        var menuItems = document.getElementsByClassName('menu-item');
        for (var i = 0; i < menuItems.length; i++) {
            var menuItem = menuItems[i];
            menuItem.classList.toggle("hidden");
        }
    }
</script>



</body>
</html>
