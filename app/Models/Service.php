<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;

    // const TABLE = 'services';

    // protected $table = self::TABLE;
    protected $table = 'services';

    protected $fillable = [
        'title',
        'icon_class',
        'short_desc',
        'description',
        'image',
        'status',
    ];
}
