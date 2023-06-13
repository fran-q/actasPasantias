<?php

namespace App\Controllers;
use App\Models\UserModel;

class Login extends BaseController
{
    public function index()
    {
        return view('login');
    }

    
    public function do_login(){
        
        $userModel = new UserModel();
        $email = $this->request->getPost('email');
        $password = $this->request->getPost('password');

        //$password = password_hash($password, PASSWORD_BCRYPT);

        $r = $userModel->where('email', $email)->first();
        if($r->id > 0){
            if(password_verify($password, $r->password)){
                $this->session->set("user", $r);
                return redirect()->to('/');
            }
            else
            {
                echo "El email o password es inválido";
            }
        }
        else{
            echo "El email o password es inválido";
        }
    }

    public function logout(){
        session_destroy();
    }

}
