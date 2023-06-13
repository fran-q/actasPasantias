<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sistema de Actas de Comercio</title>
    <meta name="description" content="The small framework with powerful features">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/png" href="/favicon.ico">
    

</head>
<body>

<!-- HEADER: MENU + HEROE SECTION -->
<header>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>    
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</header>

<!-- CONTENT -->

<section>
    <h1>Lista de Comercios</h1>
   
      <table class="table"> 
            <thead>
                <th>NOMBRE</th>
                <th>RAZON</th>
            </thead>
            <tbody>
            <?php 
                foreach ($comercios as $comercio) { ?>
                <tr>
                    <td>
                        <?php  echo "<p>". $comercio?->nombre ."</p>"; ?>
                    </td>
                    <td>
                        <?php  echo "<p>". $comercio?->nombre ."</p>";  ?>
                    </td>
                </tr>
                <?php   
                }
            ?>
            </tbody>
        </table>
       
    
</section>



</footer>

<!-- SCRIPTS -->

<script>
    function toggleMenu() {
        var menuItems = document.getElementsByClassName('menu-item');
        for (var i = 0; i < menuItems.length; i++) {
            var menuItem = menuItems[i];
            menuItem.classList.toggle("hidden");
        }
    }
</script>

<!-- -->

</body>
</html>
