<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;
    protected $table = 'company';
    //protected $fillable = ['id', 'fio', 'phone', 'ref', 'created_at', 'updated_at'];
    protected  $guarded = ['id'];
    //public $timestamps = false;
}
