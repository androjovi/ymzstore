<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Stock;
use App\Models\Branch;
use Illuminate\Support\Facades\DB;
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

    public function getMenu($id)
    {;
        $stocks = DB::table('stock')
            ->selectRaw("stock.id,stock.stock_name,stock.stock_thumbnail,stock.price,stock.stock_type,stock_type.stock_name 'category_name'")
            ->join('stock_type', 'stock_type.id', '=', 'stock.stock_type')
            ->orderBy('stock_type.id', 'asc')
            ->get();

        return Inertia::render('order/Menu', [
            'data' => $stocks,
        ]);
    }
}
