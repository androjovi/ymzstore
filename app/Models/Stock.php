<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Stock extends Model
{
    use HasFactory;
    protected $table = 'stock';

    protected $fillable = [
        'stock_code',
        'stock_name',
        'stock_description',
        'stock_quantity',
        'stock_thumbnail',
        'stock_image',
        'stock_image1',
        'stock_type',
        'price',
        'tax',
        'created_by',
    ];

    public function stockType()
    {
        return $this->belongsTo(StockType::class, 'stock_type');
    }

    public function createdBy()
    {
        return $this->belongsTo(User::class, 'created_by');
    }
}
