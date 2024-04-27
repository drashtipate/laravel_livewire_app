<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Database\Seeders\ServiceSeeder;
use Database\Seeders\MemeberTableSeeder;
use Database\Seeders\CategoriesTableSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        $this->call(ServiceSeeder::class);
        $this->call(CategoriesTableSeeder::class);
        $this->call(MemeberTableSeeder::class);
    }
}
