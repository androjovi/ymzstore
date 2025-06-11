<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';
    protected $fillable = [
        'id',
        'order_parent',
        'order_invoice',
        'branch_id',
        'stock_id',
        'user_id',
        'order_type',
        'total_quantity',
        'total_price',
        'total_taxes',
        'point_earned',
        'status',
        'order_note',
        'order_note_mart',
        'created_by'
    ];
}
