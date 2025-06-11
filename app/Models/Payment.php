<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    protected $table = 'payment';

    protected $fillable = [
        'id',
        'user_id',
        'payment_code',
        'order_invoice',
        'total_payment',
        'payment_method',
        'payment_status',
        'created_by',
    ];
}
