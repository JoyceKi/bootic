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
    <title>connexion</title>
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
                        <a class="nav-link active" href="#">connexion</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="inscription.php">inscription</a>
                    </li>
                    <?php if ($pseudo) {
                        echo '<li class="nav-item">
                        <a class="nav-link" href="profil.php">profil</a>
                        </li>';
                    }
                    ?>
                </ul>

            </div>
        </div>
    </nav>

</body>

<!-- Le form -->
<main class="container">
    <div class="row">
        <form class="col-sm-12 col-lg-8 mx-auto my-5" method="POST" action="admin.php">
            <fieldset>
                <legend>Formulaire de connexion</legend>
                <div class="mb-3">
                    <label for="InputPseudo" class="form-label">Pseudo</label>
                    <input type="text" class="form-control" id="InputPseudo" name="pseudo">
                </div>
                <div class="mb-3">
                    <label for="InputPassword" class="form-label">Password</label>
                    <input type="password" class="form-control" id="InputPassword" name="pwd">
                </div>
                <div class="mb-3">
                    <input type="hidden" name="connexion" value="connexion">
                    <input type="submit" class="btn btn-primary" name="submit" value="S'inscrire">
                </div>
            </fieldset>
        </form>
    </div>
</main>
<!-- fin de form -->

</html>