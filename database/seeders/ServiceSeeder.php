<?php

namespace Database\Seeders;

use App\Models\Service;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class ServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('services')->insert([
            [
                'title' => 'Digital Marketing',
                'icon_class' => 'dummy',
                'short_desc' => 'Digital marketing is the promotion and marketing of goods and services to consumers through digital channels and electronic technologies.',
                'description' => 'Digital marketing is the promotion and marketing of goods and services to consumers through digital channels and electronic technologies.',
                'status' => '1',
            ],
            [
                'title' => 'Logo Design',
                'icon_class' => 'dummy',
                'short_desc' => 'Your logo design brief tells designers what kind of logo to design, with all the necessary details and background information.',
                'description' => 'Your logo design brief tells designers what kind of logo to design, with all the necessary details and background information.',
                'status' => '1',
            ],
            [
                'title' => 'Web Design',
                'icon_class' => 'dummy',
                'short_desc' => 'A web designer is responsible for creating the design and layout of a website or web pages',
                'description' => 'A web designer is responsible for creating the design and layout of a website or web pages.',
                'status' => '1',
            ],
            // Add more categories as needed
        ]);
    }
}
