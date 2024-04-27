<?php

namespace App\Http\Livewire;

use App\Models\Service;
use Livewire\Component;

class ShowService extends Component
{
    public $service;

    public function mount($id)
    {
        $this->service = Service::findOrFail($id); 
    }

    public function render()
    {
        return view('livewire.show-service', compact($this->service))
        ->layout('layouts.main');
    }
}
