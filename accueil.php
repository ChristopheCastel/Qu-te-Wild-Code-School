<?php

    // echo '<pre>'; print_r($_POST); echo '</pre>';

    // Cnnexion à la BDD
     $pdo = new PDO('mysql:host=localhost;dbname=equipage', 'root', '', [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING,
        PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'
    ]);

    if(isset($_POST['name']))
        {
            if(empty($_POST['name']))
            {
                $errorName = "<small class='msgErrorNameEmpty'>Merci de saisir un nom d'utilisateur.</small>";
        
            }
            else
            {
                $_POST['name'] = htmlentities($_POST['name']);
                

                $pdoStatement = $pdo->prepare("INSERT INTO membres (name) VALUES (:name)");
                $pdoStatement->bindValue(':name', $_POST['name'], PDO::PARAM_STR);
                $pdoStatement->execute();


                // ou
                // $nbInsert = $pdo->exec("INSERT INTO membres (name) VALUES ('$_POST[name]')");

                // ou
                // $nbInsert = $pdo->query("INSERT INTO membres (name) VALUES ('$_POST[name]')");
    
            }
            
        }    
    
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Jason</title>
    </head>
    <body>
        
        <!-- Header section -->
        <header>
            <h1>
                <img src="https://www.wildcodeschool.com/assets/logo_main-e4f3f744c8e717f1b7df3858dce55a86c63d4766d5d9a7f454250145f097c2fe.png" alt="Wild Code School logo" />
                Les Argonautes
            </h1>
        </header>

        <!-- Main section -->
        <main>
        
            <!-- New member form -->
            <div class="newMemberFormContainer">
                <h2>Ajouter un(e) Argonaute</h2>
                <form method="post" class="new-member-form" >
                    <label for="name">Nom de l&apos;Argonaute</label>
                    <div>
                        <input class="inputForm" id="name" name="name" type="text" placeholder="Charalampos"/>
                        <button type="submit" class="btnForm">Envoyer</button>
                    </div>
                    <?php if(isset($errorName)) echo $errorName; ?>
                </form>
            </div>

            <!-- Member list -->
            <div class="listMemberContainer">
                <h2>Membres de l'équipage</h2>
                    <section class="member-list">
                        <?php

                            $pdoStatement = $pdo->query("SELECT * FROM membres");

                            $compteurMembre = 1;

                            while($membres = $pdoStatement->fetch(PDO::FETCH_ASSOC))
                            {
                                // echo '<pre>'; print_r($membres); echo '</pre>';
                                
                                echo '<div class="member-item">'; 
                                    echo $compteurMembre . ". " . ucfirst($membres['name']);
                                echo '</div>';
                                $compteurMembre++;

                            }   

                            echo '<hr>';
                            
/* ------------------ Avec l'utilisation de fetchAll --------------------------------
                            $pdoStatement = $pdo->query("SELECT * FROM membres");
                            $membres = $pdoStatement->fetchAll(PDO::FETCH_ASSOC);
                            $compteurMembre = 1;

                            foreach($membres as $key => $tab)
                            {
                      
                                        echo '<div class="member-item">'; 
                                            echo $compteurMembre . ". " . ucfirst($membres[$key]['name']);
                                        echo '</div>';
                                        $compteurMembre++;

                                }
----------------------------------------------------------------------------------- */ 

                        ?>

                    </section>
            </div>
        </main>

        <footer>
            <p>Réalisé par Jason en Anthestérion de l'an 515 avant JC</p>
        </footer>
















    </body>
</html>




