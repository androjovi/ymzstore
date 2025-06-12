<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

use App\Http\Controllers\StockController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PaymentController;

Route::get('/', [StockController::class, 'show'])
    ->name('home');

Route::get('/menu', [StockController::class, 'show'])
    ->name('menu');
Route::get('/get-stock/{id}', [StockController::class, 'getMenu'])
    ->name('stock.branch');
Route::get('/cart', [CartController::class, 'show'])
    ->name('cart');
Route::post('/order', [OrderController::class, 'save'])
    ->name('order');
Route::post('/payment-confirmation', [PaymentController::class, 'confirmPayment'])
    ->name('payment-confirmation');
Route::post('/payment-confirmation-pdf', [PaymentController::class, 'paymentConfirmationPDF'])
    ->name('payment.pdf');

Route::get('dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

require __DIR__.'/settings.php';
require __DIR__.'/auth.php';
