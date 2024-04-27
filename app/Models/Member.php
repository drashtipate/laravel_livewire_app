<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    use HasFactory;

    // public $table = 'members'; // directly accessible from outside the class

    protected $table = 'members';  // accessible within the class and its subclasses

    protected $fillable = [
        'name',
        'designation',
        'fb_url',
        'tw_url',
        'in_url',
        'image',
        'status',
    ];
}
