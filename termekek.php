<?php
        include 'csatlakozas.php';
?>



<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tekerdmeg!</title>
    <link rel="stylesheet" type="text/css" href="tekerdmeg.css" />

</head>

<body>
    <header>
                    <h1>Üdvözöljük a "Tekerdmeg" oldalon!</h1>
    </header>
    
    <nav>
    <ul>
        <li>
            <a href="index.php">Bemutatkozás</a>
        </li>
        <li>
            <a href="termekek.php">Termékek</a>
        </li>
        <li>
            <a href="szolgaltatasok.php">Szolgáltatások</a>
        </li>
        <li>
            <a href="kapcsolatok.php">Kapcsolat</a>
        </li>
        </ul>
    </nav>
    
    <div class="container">
    <!--FŐ TARTALOM -->
        <main>
            <h2> Válasszon kategóriát:</h2>


       <?php



               $sql = "SELECT id, name,image FROM kategoria WHERE id = 1";
              
                $result = mysqli_query($conn,$sql);

                $row = mysqli_fetch_all($result,MYSQLI_ASSOC);
                        
                        foreach ($row as $rows) {
                    
                            $name = $rows['name'];
                           
                            $image = $rows['image'];

                        
                                                        
                            echo '<li style="padding:15px 15px";>

                            <a href=termekek01.php>

                            <h2>'.$name.'</h2>
                            
                            <img src="kepek/'.$image.'"alt = Trekking"width=175 height=175">
                            </a>
                            
                        </li>';

                        }

                 $sql = "SELECT id, name,image FROM kategoria WHERE id = 2";
              
                $result = mysqli_query($conn,$sql);

                    $row = mysqli_fetch_all($result,MYSQLI_ASSOC);
                        
                        foreach ($row as $rows) {
                    
                        
                            $name = $rows['name'];
                           
                            $image = $rows['image'];
                                                        
                            echo '<li style="padding:15px 15px";>

                            <a href=termekek02.php>

                            <h2>'.$name.'</h2>
                            
                            <img src="kepek/'.$image.'"alt = Mountainbike"width=175 height=175">
                            </a>
                            
                        </li>';

                        }

                 $sql = "SELECT id, name,image FROM kategoria WHERE id = 3";
              
                $result = mysqli_query($conn,$sql);

                 $row = mysqli_fetch_all($result,MYSQLI_ASSOC);
                        
                        foreach ($row as $rows) {
                    
                            $name = $rows['name'];
                           
                            $image = $rows['image'];

                            echo '<li>

                            <a href=termekek03.php>

                            <h2>'.$name.'</h2>
                            
                            <img src="kepek/'.$image.'"alt = BMX"width=175 height=175">
                            </a>
                            
                        </li>';

                        }
                
            ?>
                    

        </main>

    </div>
    
    
    
    <!--oldalsáv-->
    <aside>
        <!--szekcio-->
        <section>
        <h3>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in mauris quis erat molestie ullamcorper vitae at augue. Sed eu neque elementum, condimentum velit sit amet, vulputate velit. Aliquam id lectus dictum quam tincidunt vehicula. Etiam semper scelerisque lectus, vel interdum dui tempor in. Aliquam venenatis, odio eu lacinia sollicitudin, turpis nisi porta ipsum, at malesuada quam lorem id tortor. Fusce semper ipsum quam. Duis tincidunt interdum velit in consectetur. Nulla facilisi. Praesent tincidunt risus in nibh cursus imperdiet. Vivamus ut nisi sit amet sapien ornare gravida eu non odio. Duis ac auctor lorem.

        </h3>
        </section>
         <section>
        <h3>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in mauris quis erat molestie ullamcorper vitae at augue. Sed eu neque elementum, condimentum velit sit amet, vulputate velit. Aliquam id lectus dictum quam tincidunt vehicula. Etiam semper scelerisque lectus, vel interdum dui tempor in. Aliquam venenatis, odio eu lacinia sollicitudin, turpis nisi porta ipsum, at malesuada quam lorem id tortor. Fusce semper ipsum quam. Duis tincidunt interdum velit in consectetur. Nulla facilisi. Praesent tincidunt risus in nibh cursus imperdiet. Vivamus ut nisi sit amet sapien ornare gravida eu non odio. Duis ac auctor lorem.

        </h3>
        </section>
        
    </aside>
    
    <!-- LÁBLÉC -->
    <footer>
        <p>Forduljon hozzánk bizalommal</p>
    </footer>
    
   
        
    
</body>
</html>