<?php

namespace App\Http\Livewire;

use App\Models\Page;
use Livewire\Component;

class ShowPage extends Component
{
    public $pageId = null;

    public function mount($id) 
    {
        $this->pageId = $id;
    }  

    public function render()
    {
        $page = Page::findOrFail($this->pageId);
        
        // dd($page);
        return view('livewire.show-page',compact('page'))
        ->layout('layouts.main');
    }
}
