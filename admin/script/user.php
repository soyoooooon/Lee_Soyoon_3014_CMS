<?php 
function createUser($fname, $username, $password, $email){
    $pdo = Database::getInstance()->getConnection();

    $create_user_query = 'INSERT INTO tbl_user(user_fname, user_name, user_pass, user_email)';
    $create_user_query .= ' VALUES(:fname, :username, :password, :email)';
    $create_user_set = $pdo->prepare($create_user_query);
    $create_user_result = $create_user_set->execute(
        array(
            ':fname'=>$fname,
            ':username'=>$username,
            ':password'=>$password,
            ':email'=>$email
        )
    );
  
    if($create_user_result){
        redirect_to('index.php');
    }else{
        return 'This individual sucks!';
    }
}

function getSingleUser($id){
    //TODO: set up database connection
    $pdo = Database::getInstance()->getConnection();

    //TODO: run the proper SQL query to fetch the user based on $id
    $get_user_query = 'SELECT * FROM tbl_user WHERE user_id = :id';
    $get_user_set = $pdo->prepare($get_user_query);
    $get_user_result = $get_user_set->execute(
        array(
            ':id'=>$id
        )
    );

    // echo $get_user_set->debugDumpParams();
    // exit;
    
 
    if($get_user_result && $get_user_set->rowCount()){
        return $get_user_set;
    }else{
        return false;
    }
}

function getAllUsers(){
    $pdo = Database::getInstance()->getConnection();
    $get_user_query = "SELECT * FROM tbl_user";
    $user_state = $pdo->query($get_user_query);

    if($user_state){
        return $user_state;
    }else{
        return false;
    }
}

function editUser($id, $fname, $username, $password, $email){

    $pdo = Database::getInstance()->getConnection();

   
    $update_user_query = 'UPDATE tbl_user SET user_fname=:fname, user_name=:username';
    $update_user_query .= ', user_pass=:password, user_email=:email';
    $update_user_query .= ' WHERE user_id=:id';
    $update_user_set = $pdo->prepare($update_user_query);
    $update_user_result = $update_user_set->execute(
        array(
            ':fname'=>$fname,
            ':username'=>$username,
            ':password'=>$password,
            ':email'=>$email,
            ':id'=>$id
        )
    );

    if($update_user_result){
        redirect_to('index.php');
    }else{
        return 'Update failed...';
    }
}

