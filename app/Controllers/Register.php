<?php

namespace App\Controllers;
use \App\Models\UserModel;

class Register extends BaseController
{
    public function index()
    {
        return view('register');
    }

    public function do_register(){
        $userModel = new UserModel();
        $email = $this->request->getPost('email');
        $password = $this->request->getPost('password');
        $passwordConfirmed = $this->request->getPost('password2');
        $correctPassword = false;
        $r = [];

        if ($password == $passwordConfirmed){
            $correctPassword = true;

            $password = password_hash($password, PASSWORD_BCRYPT);
            $data = ['email' => $email, 'password' => $password];
            $r = $userModel->insert($data);
        } else {
            $correctPassword = false;
        }        
        
        if($r && $correctPassword){
            return view('login');
        }
        else{
            echo "Error en la registración";
        }
        

    }

}
