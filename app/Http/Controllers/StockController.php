<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Stock;
use App\Models\Branch;
use Inertia\Inertia;

class StockController extends Controller
{
    public function show()
    {
        $stocks = Stock::all();
        $branch = Branch::all();
        return Inertia::render('order/Menu', [
            'stocks' => $stocks,
            'branchs' => $branch
        ]);
    }
}
