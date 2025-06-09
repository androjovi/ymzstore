<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class StockFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id' => $this->faker->unique()->randomNumber(8, true),
            'branch_id' => $this->faker->numberBetween(1, 1000), // Assuming branch IDs are between 1 and 1000
            'stock_type' => $this->faker->numberBetween(1, 10), // Assuming stock types are between 1 and 10
            'stock_code' => $this->faker->unique()->bothify('ST-###'),
            'stock_name' => $this->faker->word(),
            'stock_description' => $this->faker->sentence(),
            'stock_quantity' => $this->faker->numberBetween(1, 1000),
            'created_by' => $this->faker->numberBetween(1, 1000), // Assuming user IDs are between 1 and 1000
            'created_at' => now(),
            'updated_at' => now(),
            'price' => $this->faker->randomFloat(2, 1, 1000), // Random price between 1 and 1000
            'tax' => $this->faker->randomFloat(2, 0, 100), // Random tax between 0 and 100
            'stock_thumbnail' => $this->faker->imageUrl(640, 480, 'business', true, 'Stock Thumbnail'), // Random image URL for stock thumbnail
            'stock_image' => $this->faker->imageUrl(640, 480, 'business', true, 'Stock Image'), // Random image URL for stock image
        ];
    }
}
