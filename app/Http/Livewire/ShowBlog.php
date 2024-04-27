<?php

namespace App\Http\Livewire;

use App\Models\Article;
use Livewire\Component;
use App\Models\Category;
use Livewire\Attributes\Url;
use Livewire\WithPagination;

class ShowBlog extends Component
{

    #[Url]
    public $categorySlug = null;
    public $categoryName = null;
 
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public function render()
    {
       
        $categories = Category::all();

        if(!empty($this->categorySlug)) {
            $category = Category::where('slug', $this->categorySlug)->first();
            // dd($category);

            if (empty($category)) {
                abort(404);
            }

            $articles = Article::orderBy('created_at','DESC')
                        ->where('category_id', $category->id)
                        ->where('status', 1)
                        ->paginate(4);

        } else {
            $articles = Article::orderBy('created_at','DESC')
                        ->where('status', 1)
                        ->paginate(4);
        }

        $latestArticles = Article::orderBy('created_at','DESC')
                        ->where('status', 1)
                        ->get()
                        ->take(3);
    
        return view('livewire.show-blog', compact('articles', 'categories', 'latestArticles'))
        ->layout('layouts.main');
    }

    public function setCategory($slug = null, $name = null)
    {
        $this->categorySlug = $slug;
        $this->categoryName = $name;

        // dd($this->categorySlug, $this->categoryName);
    }
    

    
    
    
}
