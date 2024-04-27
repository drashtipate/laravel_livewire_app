<?php

namespace App\Http\Livewire;

use App\Models\Service;
use Livewire\Component;

class ShowHome extends Component
{
    public function render()
    {
        $services = Service::orderBy('title', 'ASC')->where('status',1)->get();
        return view('livewire.show-home', compact('services'))
        ->layout('layouts.main');

    }
}
