<?php

namespace App\Http\Livewire;

use App\Models\Service;
use Livewire\Component;

class ShowServicePage extends Component
{
    public function render()
    {
        $services = Service::orderBy('title', 'ASC')->where('status',1)->get();
        return view('livewire.show-service-page', compact('services'))
        ->layout('layouts.main');
    }
}
