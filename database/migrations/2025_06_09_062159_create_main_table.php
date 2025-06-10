<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('branch', function (Blueprint $table) {
            $table->id()->autoIncrement()->primary();
            $table->string('branch_code')->unique();
            $table->string('branch_name');
            $table->string('branch_type');
            $table->string('branch_phone');
            $table->string('branch_latitude')->nullable();
            $table->string('branch_longitude')->nullable();
            $table->string('branch_thumbnail')->nullable();
            $table->text('branch_address')->nullable();
            $table->bigInteger('created_by');
            $table->timestamps();
        });

        Schema::create('stock', function (Blueprint $table) {
            $table->id()->autoIncrement()->primary();
            $table->bigInteger('branch_id');
            $table->string('stock_code')->unique();
            $table->string('stock_name');
            $table->text('stock_description')->nullable();
            $table->double('stock_quantity');
            $table->bigInteger('stock_type');
            $table->string('stock_thumbnail')->nullable();
            $table->string('stock_image')->nullable();
            $table->string('stock_image1')->nullable();
            $table->double('price');
            $table->double('tax');
            $table->bigInteger('created_by');
            $table->timestamps();
        });

        Schema::create('stock_type', function (Blueprint $table) {
            $table->id()->autoIncrement()->primary();
            $table->string('stock_name');
            $table->string('stock_description');
            $table->timestamps();
        });

        Schema::create('cart', function (Blueprint $table) {
            $table->id()->autoIncrement()->primary();
            $table->bigInteger('cart_code');
            $table->bigInteger('branch_id');
            $table->bigInteger('stock_id');
            $table->bigInteger('user_id');
            $table->string('order_type');
            $table->double('total_quantity');
            $table->double('total_price');
            $table->double('tax');
            $table->bigInteger('created_by');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('branch');
        Schema::dropIfExists('stock');
        Schema::dropIfExists('stock_type');
        Schema::dropIfExists('cart');
    }
};
