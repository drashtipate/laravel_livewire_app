<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class MemeberTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('members')->insert([
            [
                'name' => 'Johan Dave',
                'designation' => 'Mobile Developer',
                'fb_url' => 'https://www.facebook.com/',
                'tw_url' => 'https://twitter.com/',
                'in_url' => 'https://www.instagram.com/',
                'image'  => 'front/images/testimonials/team-1.jpg',
                'status' => '1',
            ],
            [
                'name' => 'Mohini Singh',
                'designation' => 'Web Developer',
                'fb_url' => 'https://www.facebook.com/',
                'tw_url' => 'https://twitter.com/',
                'in_url' => 'https://www.instagram.com/',
                'image'  => 'front/images/testimonials/team-2.jpg',
                'status' => '1',
            ],
           
            // Add more categories as needed
        ]);
    }
}
