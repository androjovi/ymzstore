<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StockType extends Model
{
    protected $table = 'stock_type';
    protected $fillable = [
        'stock_type_code',
        'stock_type_name',
        'created_by',
    ];
    public function stocks()
    {
        return $this->hasMany(Stock::class, 'stock_type');
    }
}
