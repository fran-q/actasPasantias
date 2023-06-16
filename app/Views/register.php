<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register usuario</title>
    <meta name="description" content="The small framework with powerful features">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/png" href="/favicon.ico">
    

</head>

<header>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>    
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</header>
<body>
    <div class="card">
        <div class="card-body">
            <form method="post" action="<?= base_url("register");   ?>" >
                <h1>Registrarse</h1>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input name="email"  required type="email" class="form-control" id="email" placeholder="name@example.com">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input name="password" required type="password" class="form-control" id="password" placeholder="Contraseña">
                </div>
                <div class="mb-3">
                    <label for="password2"  class="form-label">Password</label>
                    <input name="password2" required type="password" class="form-control" id="password2" placeholder="Repetir contraseña">
                </div>
                <div class="mnb-3">
                    <input type="submit" value="Registrarse" class="btn btn-primary" />
                </div>
                
            </form>
            <br>
            <form action="<?= base_url("register");?>" method="post">
                <div class="mnb-3">
                    <input type="submit" value="login" class="btn btn-secondary">
                </div>
            </form>
        </div>
    </div>
</body>

</html>