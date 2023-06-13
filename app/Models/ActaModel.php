<?php

namespace App\Models;

use CodeIgniter\Model;

class ActaModel extends Model
{
    protected $table = 'actas';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'direccion'
    ];
    protected $returnType    = \App\Entities\Acta::class;
}