<?php

namespace Database\Seeders;

use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->insert([
            [
                'name' => 'Development',
                'slug' => Str::slug('Development'),
                'status' => 'active',
            ],
            [
                'name' => 'CompanyNews',
                'slug' => Str::slug('CompanyNews'),
                'status' => 'active',
            ],
            [
                'name' => 'Fashion',
                'slug' => Str::slug('Fashion'),
                'status' => 'active',
            ],
         
            // Add more categories as needed
        ]);
    }
}
