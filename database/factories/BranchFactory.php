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
            'branch_name' => $this->faker->unique()->randomElement([
                'Chapter Paragon Mall',
                'Chapter Mall Kelapa Gading',
                'Chapter Mall Taman Anggrek',
                'Chapter Mall Puri Indah',
                'Chapter Mall Senayan',
                'Chapter Mall Gandaria City',
                'Chapter Mall Grand Indonesia',
                'Chapter Mall Plaza Senayan',
                'Chapter Mall Central Park',
                'Chapter Mall Kota Kasablanka',
                'Chapter Mall Summarecon Serpong',
            ]),
            'branch_address' => $this->faker->unique()->randomElement([
                'Jl. Paragon No.1, Semarang',
                'Jl. Kelapa Gading No.2, Jakarta',
                'Jl. Taman Anggrek No.3, Jakarta',
                'Jl. Puri Indah No.4, Jakarta',
                'Jl. Senayan No.5, Jakarta',
                'Jl. Gandaria City No.6, Jakarta',
                'Jl. Grand Indonesia No.7, Jakarta',
                'Jl. Plaza Senayan No.8, Jakarta',
                'Jl. Central Park No.9, Jakarta',
                'Jl. Kota Kasablanka No.10, Jakarta',
                'Jl. Summarecon Serpong No.11, Tangerang',
            ]),
            'branch_type' => 'Self Order', // Assuming branch types are between 1 and 10
            'branch_phone' => $this->faker->unique()->randomElement([
                '021-12345678', // Jakarta
                '024-87654321', // Semarang
                '022-11223344', // Bandung
                '031-22334455', // Surabaya
                '0361-33445566', // Bali
                '0274-44556677', // Yogyakarta
                '061-55667788', // Medan
                '0411-66778899', // Makassar
                '0711-77889900', // Palembang
                '0778-88990011', // Batam
                '0542-99001122', // Balikpapan
            ]),
            'branch_latitude' => $this->faker->unique()->randomElement([
                '-6.2088', // Jakarta
                '-6.1751', // Semarang
                '-6.2500', // Bandung
                '-6.9147', // Surabaya
                '-7.7972', // Bali
                '-6.2000', // Yogyakarta
                '-6.9142', // Medan
                '-6.1750', // Makassar
                '-6.2080', // Palembang
                '-6.2000', // Batam
                '-6.1750', // Balikpapan
            ]),
            'branch_longitude' => $this->faker->unique()->randomElement([
                '106.8456', // Jakarta
                '110.3688', // Semarang
                '107.6191', // Bandung
                '112.7383', // Surabaya
                '115.1687', // Bali
                '110.3646', // Yogyakarta
                '98.6722',  // Medan
                '119.4179', // Makassar
                '104.6950', // Palembang
                '104.0000', // Batam
                '116.9000', // Balikpapan
            ]),
            'created_by' => 1,
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
