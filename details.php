<?php
    require_once 'load.php';
    
    if(isset($_GET['id'])){
        $products_table = 'tbl_products';
        $col = 'p_id';
        $id = $_GET['id'];

        $getProducts = getSingleProduct($products_table, $col, $id);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Single Product</title>
</head>
<body>
    <?php while($row = $getProducts->fetch(PDO::FETCH_ASSOC)):?>
        <div>
            <img src="images/<?php echo $row['images'];?>" alt="<?php echo $row['name'];?>"/>
            <h3><?php echo $row['name']; ?></h3>
            <h4><?php echo $row['price']; ?></h4>
            <p><?php echo $row['colours']; ?></p>
            <a href="index.php">BACK</a>
        </div>
    <?php endwhile;?>
</body>
</html>