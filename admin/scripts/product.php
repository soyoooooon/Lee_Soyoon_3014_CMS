<?php

function addProduct($product)
{
    var_dump($product);

    try {
        // 1. Connect to the DB
        $pdo = Database::getInstance()->getConnection();

        // 2. Validate the uploaded file
        $image         = $product['image'];
        $upload_file    = pathinfo($image['name']);
        $accepted_types = array('gif', 'jpg', 'jpe', 'png', 'jpeg', 'webp', 'JPG', 'HEIC');
        if (!in_array($upload_file['extension'], $accepted_types)) {
            throw new Exception('Invalid file type!');
        }

        // 3. Move the uploaded file around (move the file from tmp path to the /images)
        $image_path = '../images/';

        // //Optional 10 ~ 20 mins
        // // Randomlize/hash the file name before move it over!
        $generated_name     = md5($upload_file['filename'] . time());
        $generated_filename = $generated_name . '.' . $upload_file['extension'];
        $targetpath         = $image_path . $generated_filename;

        if (!move_uploaded_file($image['tmp_name'], $targetpath)) {
            throw new Exception('Failed to move upload file, check permission!');
        }

        // If the upload file is a image, convert it to WebP

        // 4. Insert into DB (tbl_movies as well as tbl_mov_genre)
        $insert_product_query = 'INSERT INTO tbl_products(name,price,images,colours)';
        $insert_product_query .= ' VALUES(:name,:price,:images,:colours)';

        $insert_product        = $pdo->prepare($insert_product_query);
        $insert_product_result = $insert_product->execute(
            array(
                ':name'       => $product['name'],
                ':price'      => $product['price'],
                ':images'      => $generated_filename,
                ':colours'=> $product['colours'],
                
            )
        );

        $last_uploaded_id = $pdo->lastInsertId();
        if ($insert_product_result && !empty($last_uploaded_id)) {
            $update_product_query = 'INSERT INTO tbl_pro_cate(p_id, c_id) VALUES(:p_id, :c_id)';
            $update_product     = $pdo->prepare($update_product_query);

            $update_product_result = $update_product->execute(
                array(
                    ':p_id' => $last_uploaded_id,
                    ':c_id'=> $product['category'],
                )
            );
        }

        // 5. If all of above works, redirect user to index.php
        redirect_to('index.php');
    } catch (Exception $e) {
        // Otherwise, return some error message
        $error = $e->getMessage();
        return $error;
    }
}


//edit try


function getAllProduct(){
    $pdo = Database::getInstance()->getConnection();
    $get_all_query = "SELECT * FROM tbl_products";
    $all_state = $pdo->query($get_all_query);

    if($all_state){
        return $all_state;
    }else{
        return false;
    }
}

function deleteProduct($id){
   
    $pdo = Database::getInstance()->getConnection();

    //2. Run the proper SQL query that remove the user with user_id = $id
    $delete_pro_query = 'DELETE FROM tbl_products WHERE p_id=:id';
    $delete_pro_set = $pdo->prepare($delete_pro_query);
    $delete_pro_result = $delete_pro_set->execute(array(
        ':id'=>$id
    ));

   
    if($delete_pro_result && $delete_pro_set->rowCount() > 0){
        redirect_to('admin_deleteproduct.php');
    }else{
        return false;
    }
}