<?php

namespace App\Controllers;
use App\Models\ComercioModel;

class Home extends BaseController
{
    public function index()
    {
        if ( null == session('user') || session('user')->id < 1){
            return redirect()->to('login');
        }
        $comercio = new ComercioModel();
        $datos['comercios'] = $comercio->findAll();
        return view('home', $datos);
    }


}
