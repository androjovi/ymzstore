<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    protected $table = 'cart';
    protected $fillable = [
        'id',
        'cart_code',
        'branch_id',
        'stock_id',
        'user_id',
        'order_type',
        'total_quantity',
        'total_price',
        'tax',
        'created_by',
    ];
}
