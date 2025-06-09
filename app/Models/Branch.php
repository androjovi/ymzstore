<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Branch extends Model
{
    use HasFactory;

    protected $table = 'branch';

    protected $fillable = [
        'branch_code',
        'branch_name',
        'branch_address',
        'branch_latitude',
        'branch_longitude',
        'branch_type',
        'branch_phone',
        'created_by',
    ];

    public function stocks()
    {
        return $this->hasMany(Stock::class, 'branch_id');
    }

    public function createdBy()
    {
        return $this->belongsTo(User::class, 'created_by');
    }
}
