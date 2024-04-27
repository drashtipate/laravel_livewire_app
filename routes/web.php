<?php

use App\Http\Livewire\ShowBlog;
use App\Http\Livewire\ShowHome;
use App\Http\Livewire\ShowPage;
use App\Http\Livewire\BlogDetail;
use App\Http\Livewire\ShowFaqPage;
use App\Http\Livewire\ShowService;
use App\Http\Livewire\ShowTeamPage;
use Illuminate\Support\Facades\Route;
use App\Http\Livewire\ShowContactPage;
use App\Http\Livewire\ShowServicePage;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', ShowHome::class)->name('home');
Route::get('/services', ShowServicePage::class)->name('servicesPage');
Route::get('/service/{id}', ShowService::class)->name('servicePage');

Route::get('/team',ShowTeamPage::class)->name('teamPage');

// Route::get('/blog',ShowBlog::class)->name('blog');
Route::get('/blog/{categorySlug?}', ShowBlog::class)->name('blog');
Route::get('/blogdetail/{id}', BlogDetail::class)->name('blogDetail');

Route::get('/faqs',ShowFaqPage::class)->name('faqs');

Route::get('/page/{id}',ShowPage::class)->name('page');

Route::get('/contact',ShowContactPage::class)->name('contact');
Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
