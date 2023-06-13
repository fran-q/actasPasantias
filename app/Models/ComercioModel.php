<?php

namespace App\Models;

use CodeIgniter\Model;

class ComercioModel extends Model
{
    protected $table = 'comercios';
    protected $primaryKey = 'id';

    //This array should be updated with the field names that can be set during save(), insert(), or update() methods. Any field names other than these will be discarded. 
    protected $allowedFields = [
            ];
    protected $returnType    = \App\Entities\Comercio::class;
}