<?php
    require_once 'load.php';
    
    if(isset($_GET['filter'])){
        $args = array(
            'tbl'=>'tbl_products',
            'tbl2'=>'tbl_categories',
            'tbl3'=>'tbl_pro_cate',
            'col'=>'p_id',
            'col2'=>'c_id',
            'col3'=>'category',
            'filter'=>$_GET['filter']
        );

        $getProducts = getProductsByFilter($args);
    }else{
        $products_table = 'tbl_products';
        $getProducts = getAll($products_table);
    }

   
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SPORT CHE(C)K</title>
</head>
<body>
   <h1>SPORT CHE(C)K</h1> 
   <header>
   <div><a href="admin/admin_login.php">Log In</a></div>
   <nav class="filterNav">
            <ul>
                <li><a href="index.php">All</a></li>
                <li><a href="index.php?filter=Shoes">Shoes</a></li>
                <li><a href="index.php?filter=Jacket">Jacket</a></li>
                <li><a href="index.php?filter=Hoodies">Hoodies</a></li>
                <li><a href="index.php?filter=Pants">Pants</a></li>
                <li><a href="index.php?filter=Socks">Socks</a></li>
                <li><a href="index.php?filter=Underwear">Underwear</a></li>
                <li><a href="index.php?filter=Swimwear">Swimwear</a></li>
            </ul>
        </nav>
    </header>
    
    <?php while($row = $getProducts->fetch(PDO::FETCH_ASSOC)):?>
        <a href="details.php?id=<?php echo $row['p_id'];?>">
        <div>
            <img src="images/<?php echo $row['images'];?>" alt="<?php echo $row['name'];?>"/>
            <h2><?php echo $row['name']; ?></h2>
            <h3><?php echo $row['price']; ?></h3>
        </div>
        </a>
    <?php endwhile;?>
   
</body>
</html>