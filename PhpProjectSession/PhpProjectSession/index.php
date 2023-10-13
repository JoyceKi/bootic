<?php
// on démarre une session
session_start();

echo '<pre>';
var_dump($_SESSION);
echo '</pre>';

// on vérifie que la variable de session pseudo existe
if (isset($_SESSION['pseudo'])) {
    $pseudo = $_SESSION['pseudo'];
}

require 'functions.php';
?>

<!DOCTYPE html>
<html lang="fr">

<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Php Project Session</title>
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
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="connexion.php">connexion</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="inscription.php">inscription</a>
                    </li>
                    <?php if (isset($pseudo)) {
                        echo '<li class="nav-item">
                        <a class="nav-link " href="profil.php">profil</a>
                        </li>';
                    }
                    ?>
                </ul>

            </div>
    </nav>
    <?php
    if (isset($pseudo)) {
        echo "<h1>Bienvenue $pseudo</h1>";
        echo "<p><a href='admin.php?logout=1'>Déconnexion</a>";
    } else {
        echo "<H1>Vous ne vous êtes pas encore authentifié</H1>";
    }
    ?>

    <?php
    // $profils = getAllProfiles();

    // foreach ($profils as $value) {
    //     echo "<p>" . $value['pseudo'] . "</p>";
    // }


    ?>
</body>

</html>