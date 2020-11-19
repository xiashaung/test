<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Test    extends  Model
{
    protected  $table = 'xs_test';

    protected $fillable = [
        'name',
        'content',
        'create_time',
    ];

    const CREATED_AT = 'create_time';

    const  UPDATED_AT = 'update_time';

}
