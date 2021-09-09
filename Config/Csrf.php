<?php

session_start();


// membuat value kode token menggunakan teknik session
Function CreateCSRF()
{
    $token= base64_encode(openssl_random_pseudo_bytes(32));
    $_SESSION['csrf']=$token;
    return $token; }

// menghapus value kode token menggunakan teknik session
function UnsetCSRF()
{
    unset($_SESSION['csrf']);
}

// Validasi untuk pengecekan kode csrf client ke server
function validation()
{  
    $csrf = isset($_SESSION['csrf']);  
    if(isset($_POST['csrf_token']))
    {  
            $value_POST=$_POST['csrf_token'];
            if($value_POST==$csrf)
            {
                UnsetCSRF();
                return true;  }else{
                UnsetCSRF();
                return false;
            }
    }
    else
    {
            UnsetCSRF();
            return false;
    }
}



?>