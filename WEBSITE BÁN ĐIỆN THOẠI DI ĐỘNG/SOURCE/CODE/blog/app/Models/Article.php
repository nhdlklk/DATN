<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $table='articles';
    const HOT=1;
    protected $status = [
        1=>[
            'name' => 'Public',
            'class' => 'label-danger'
        ],
        0=>[
            'name' => 'Private',
            'class' => 'label-default'
        ]
    ];
    public function getStatus(){
        return array_get($this->status,$this->a_active,'[N\A]');
    }
}
