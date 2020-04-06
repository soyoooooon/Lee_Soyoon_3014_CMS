<?php 
    require_once '../load.php';
    confirm_logged_in();
    
    if(isset($_GET['id'])){
        $user_id = $_GET['id'];
        $delete_pro_result = deleteProduct($user_id);

        if(!$delete_pro_result){
            $message = 'Failed to delete';
        }
    }

    $pros = getAllProduct();
    if(!$pros){
        $message = 'Failed to get the list';
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Page</title>
</head>
<body>
   <h2>DELETE Whatever you want</h2>
   <?php echo !empty($message)?$message:'';?>
   <?php if($pros):?>
   <table>
        <thead>
            <tr>
                <td>Name</td>
                <td>Price</td>
                <td>Image</td>
                <td>Delete</td>
            </tr>
        </thead>
        <tbody>
            <?php while($pro = $pros->fetch(PDO::FETCH_ASSOC)):?>
                <tr>
                    <td><?php echo $pro['p_id'];?></td>
                    <td><?php echo $pro['name'];?></td>
                    <td><?php echo $pro['images'];?></td>
                    <td><?php echo $pro['colours'];?></td>
                    <td><a href="admin_deleteproduct.php?id=<?php echo $pro['p_id'];?>">Delete</a></td>
                </tr>
            <?php endwhile;?>
        </tbody>
   </table>
   <?php endif;?>
</body>
</html>