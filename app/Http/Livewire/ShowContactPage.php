<?php

namespace App\Http\Livewire;

use App\Models\Contact;
use Livewire\Component;
use App\Mail\ContactEmail;
use Livewire\Attributes\Validate;
use Illuminate\Support\Facades\Mail;

class ShowContactPage extends Component
{
    #[Validate] 
	public $name = '';
	public $email = '';
	public $subject = '';
	public $message = '';
	public $loading = false; // New property for loading
	
	protected $rules = [
		'name'      =>  'required',
		'email'     =>  'required|email',
		'subject'   =>  'required',
		'message'   =>  'required'
	];

    public function submit()
	{
		$this->validate();

		$this->loading = true; // Show loading spinner

		Contact::create([
			'contact_name' => $this->name,
			'contact_email' => $this->email,
			'contact_subject' => $this->subject,
			'contact_message' => $this->message
		]);


		$mailData =[ 
			'subject'     => 'You have received a contact email ' . $this->subject,            
			'name'        => $this->name,
			'email'       => $this->email,
			// 'subject'     => $this->subject,
			'message'     => $this->message
		];

		// Set the MAIL_FROM_ADDRESS and MAIL_FROM_NAME configuration values
		config(['mail.from.address' => $mailData['email']]); 
		// config(['mail.from.name' => $mailData['name']]);


		// Send email to admin
		Mail::send('drashtiv2392002@gmail.com')->to(new ContactEmail($mailData));

		// Send email to admin with user's email as "from"
		// Mail::send(new ContactEmail($mailData), [], function($message) use ($mailData) {
		// 	$message->from($mailData['email'], $mailData['name']); // Set user's email and name as "from"
		// 	$message->to('drashtiv2392002@gmail.com'); // Set the recipient's email address here
		// });


		// Send confirmation email to user
		Mail::to($this->email)->send(new ContactEmail([
			'subject' => 'Thank you for contacting us!',
			'name' => env('MAIL_FROM_NAME'),  // Set your website or company name here
			'email' => 'drashtiv2392002@gmail.com', // Set your email address here
			'message' => 'We have received your message and will get back to you soon.'
		]));

		session()->flash('success', 'Thanks for contacting us, we will get back to you soon.!');

		$this->loading = false; // Hide loading spinner
		$this->resetForm();


		$this->redirect('/contact');
	}

	private function resetForm()
	{
		$this->name = '';
		$this->email = '';
		$this->subject = '';
		$this->message = '';
	}


    public function render()
    {
        return view('livewire.show-contact-page')
        ->layout('layouts.main');;
    }
}
