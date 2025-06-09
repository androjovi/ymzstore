<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Branch>
 */
class BranchFactory extends Factory
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
            'branch_code' => $this->faker->unique()->bothify('BR-###'),
            'branch_name' => $this->faker->company(),
            'branch_address' => $this->faker->address(),
            'branch_type' => $this->faker->numberBetween(1, 10), // Assuming branch types are between 1 and 10
            'branch_phone' => $this->faker->phoneNumber(),
            'branch_latitude' => $this->faker->latitude(),
            'branch_longitude' => $this->faker->longitude(),
            'created_by' => $this->faker->numberBetween(1, 1000),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
