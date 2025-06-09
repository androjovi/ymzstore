<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

use App\Http\Controllers\StockController;

Route::get('/', function () {
    return Inertia::render('Welcome');
})->name('home');

Route::get('/menu', [StockController::class, 'show'])
    ->name('menu');

Route::get('dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

require __DIR__.'/settings.php';
require __DIR__.'/auth.php';
