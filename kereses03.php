

<link rel="stylesheet" type="text/css" href="kereses.css" />

    <form action="termekek03.php" method="POST">
        <input type="text" name="search" placeholder="Keresés">
    </form>

    <?php 
        if (isset($_POST['search'])) {
        $search = mysqli_escape_string($conn,$_POST['search']);               
         $sql = "SELECT * FROM termek WHERE name LIKE '%$search%' AND category_id = 3";
         $result = mysqli_query($conn,$sql);
         $row = mysqli_fetch_all($result,MYSQLI_ASSOC);
            if ($row > 0) {
        
                 foreach ($row as $rows) {
                    
                            $name = $rows['name'];
                            $price = $rows['price'];
                            $image = $rows['image'];

                            echo'
                            <li style="padding: 25px 25px;">
                        
                            <h2 style="text-align: center;">'.$name.'</h2>
                            
                            <img src="kepek/'.$image.'"alt=trekking""width=175 height=175">
                            
                            <h2 style="text-align: center;">'.$price.'ft</h2>
                        
                        </li>';

                        }                      
                }else{
                        echo "Nincs találat";
                }
        }
    ?>
