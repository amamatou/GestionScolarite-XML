<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Gestion de Scolarité</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/login.css">
</head>
<body>
  <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container login_style">
      <div class="card login_style">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="assets/images/login.jpg" alt="login" class="login-card-img">
          </div>
          <div class="col-md-7">
            <div class="card-body">
              <div class="brand-wrapper">
                <img src="assets/images/ensa.png" alt="logo" class="logo">
              </div>
              <p class="card_description"><h3><b>Bienvenue sur la plateforme de gestion de scolarité de l'ENSA Tanger</b></h3></p>
              <form action="" method="POST">
                  <div class="form-group">
                    <label for="test" class="sr-only">Nom d'utilisateur</label>
                    <input type="text" name="login" id="login" class="form-control" placeholder="Entrez le nom d'utilisateur">
                  </div>
                  <div class="form-group mb-4">
                    <label for="password" class="sr-only">Mot de passe</label>
                    <input type="password" name="password" id="password" class="form-control" placeholder="Entrez le mot de passe">
                  </div>
                  <input name="cnx" id="cnx" class="btn btn-info btn-lg active" type="submit" value="Connexion">
                </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
<?php
  
  if(isset($_POST['cnx'])){
     $login=$_POST['login'];
     $pass=$_POST['password'];
    if($login =='admin' && $pass=='admin'){
    header("location:dashboard.php");
    exit();
    }
    else{
    echo '<script>alert("mot de passe ou nom d utilisateur invalide");</script>';
    }
  }
?>
