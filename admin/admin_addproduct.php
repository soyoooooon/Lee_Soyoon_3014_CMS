<?php

require_once '../load.php';
confirm_logged_in();

$category_table = 'tbl_categories';
$category = getAll($category_table);

if (isset($_POST['submit'])) {
    $product = array(
        'name'        => trim($_POST['name']),
        'price'       => trim($_POST['price']),
        'image'       => $_FILES['image'],
        'colours' => trim($_POST['colours']),
        'category'    => trim($_POST['cateList'])
    );

    $result  = addProduct($product);
    $message = $result;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product Page</title>
</head>
<body>
    <?php echo !empty($message)?$message:'';?>
    <form action="admin_addproduct.php" method="post" enctype="multipart/form-data">
        <label>Product Name:</label><br>
        <input type="text" name="name" value=""><br><br>

        <label>Product Price:</label><br>
        <input type="text" name="price" value=""><br><br>


        <label>Product Image:</label><br>
        <input type="file" name="image" value=""><br><br>

        <label>Product Colour:</label><br>
        <input type="text" name="colours" value=""><br><br>

        <label>Product Categories:</label><br>
        <select name="cateList">
            <option>Please select category</option>
            <?php while ($row = $category->fetch(PDO::FETCH_ASSOC)): ?>
                <option value="<?php echo $row['c_id']?>"><?php echo $row['category']?></option>
            <?php endwhile; ?>
        </select><br><br>

        <button type="submit" name="submit">Add Product</button>
    </form>
</body>
</html>