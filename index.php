<?php

require_once "bd.php";

$stmt = $pdo->query("select * from Games");
$Games = $stmt->fetchAll();
$size1 = count($Games);
$size = $size1 * 360;
$px = 'px';
?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Game store</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
    <form action="" method="post">
        <div class="header">
            <h2 class="heading">Games-Store</h2>
            <input class="btn_auth_reg" type="button" value="Авторизация/Регистрация">
        </div>
    </form>
    <form action="" method="post">
        <div class="body_site">
            <div id = "slider" class="slider">
                <div id="slider_line" class="slider_line" style ="width: <?php echo "$size$px"?>;">
                    <?php foreach($Games as $game): ?>
                    <div id ="slider_block" class="slider_block">
                        <img class = "slide-img" src="<?= $game['cover'] ?>" alt="">
                        <div class="name_game"><?= $game['title']?></div>
                    </div>
                    <?php endforeach; 
                    ?>
            </div>
            <input type="button" class="slider_btn_back" value="🡸">
            <input type="button" class="slider_btn_next" value="🡺">
        </div>
    </form>
    <div class="footer">
        <div class="name-company">
            <div class="znak">©</div>
            <p>MARSEL-GROUP</p>
        </div>
        <ul class="social-icons">
            <li><a href="https://vk.com"><i class="fa fa-vk"></i></a></li>
            <li><a href="#"><i class="fa fa-telegram"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        </ul>
    </div>
    <script> 
    let size = "<?php echo $size; ?>";
    let size1 = "<?php echo $size1; ?>";
     </script>
    <script src="script.js">
    </script>
</body>
</html>
