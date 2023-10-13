<?php
session_start();

// on vérifie que la variable de session pseudo existe
if (isset($_SESSION['pseudo'])) {
    $pseudo = $_SESSION['pseudo'];
}
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Fifth navbar example">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Expand at lg</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExample05">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="connexion.php">connexion</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">inscription</a>
                    </li>
                    <?php if ($pseudo) {
                        echo '<li class="nav-item">
                        <a class="nav-link" href="profil.php">profil</a>
                        </li>';
                    }
                    ?>
            </div>
        </div>
    </nav>
    <!-- Le formulaire -->
    <section class="container">
        <div class="row">
            <form class="col-sm-12 col-lg-8 mx-auto my-5" method="POST" action="admin.php">
                <div class="mb-3">
                    <div class="">
                        <input class="form-check-input" type="radio" name="genre" id="flexRadioDefault2" value="F" checked>
                        <label class="form-check-label" for="flexRadioDefault2">
                            F
                        </label>
                        <!-- </div>
            <div class="form-check"> -->
                        <input class="form-check-input" type="radio" name="genre" id="flexRadioDefault1" value="M">
                        <label class="form-check-label" for="flexRadioDefault1">
                            M
                        </label>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="InputPseudo" class="form-label">Pseudo</label>
                    <input type="text" class="form-control" id="InputPseudo" name="pseudo">
                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                </div>
                <div class="mb-3">
                    <label for="InputPassword1" class="form-label">Password</label>
                    <input type="password" class="form-control" id="InputPassword1" name="pwd1">
                </div>
                <div class="mb-3">
                    <label for="InputPassword2" class="form-label">Password verify</label>
                    <input type="password" class="form-control" id="InputPassword2" name="pwd2">
                </div>
                <div class="mb-3">
                    <label class="form-label" for="inputName">Name</label>
                    <input type="text" class="form-control" id="inputName" name="name">
                </div>
                <div class="mb-3">
                    <label class="form-label" for="inputFisrtName">First name</label>
                    <input type="text" class="form-control" id="inputFisrtName" name="firstName">
                </div>
                <div class="mb-3">
                    <label class="form-label" for="inputEmail">Email</label>
                    <input type="email" class="form-control" id="inputEmail" name="email">
                </div>
                <div class="mb-3">
                    <label class="form-label" for="inputCity">City</label>
                    <input type="text" class="form-control" id="inputCity" name="city">
                </div>
                <div class="mb-3">
                    <label class="form-label" for="inputCp">CP</label>
                    <input type="number" class="form-control" id="inputCp" name="cp">
                </div>
                <div class="mb-3">
                    <label class="form-label" for="inputAdress">Adress</label>
                    <input type="text" class="form-control" id="inputAdress" name="adress">
                </div>
                <div class="mb-3">
                    <input type="hidden" name="action" value="inscription">
                    <input type="submit" class="btn btn-primary" name="submit" value="S'inscrire" </div>
            </form>
        </div>
    </section>
    <!-- Fin de form -->
</body>

</html>