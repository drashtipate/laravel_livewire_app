@section('title', 'Contact')
<main>
    <section class="page-header" style="background-image: url(./front/images/contacts_page_title_bg.jpg); background-size:cover; background-repeat:no-repeat; background-attachment:scroll; background-position:bottom center;background-color:#f2f2f4; height:520px; padding-top:170px; padding-bottom:100px;">
        <div class="container">
            <div class="row">
                <div class="col-8 mx-auto text-center">
                    <h2 class="mb-3 text-capitalize">Contact Us</h2>
                    <ul class="list-inline breadcrumbs text-capitalize" style="font-weight:500">
                        <li class="list-inline-item"><a href="{{ route('home') }}">Home</a>
                        </li>
                        <li class="list-inline-item">/ &nbsp; Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="section bg-cover" style="background-image:url(./front/images/bg-1.jpg); padding-bottom:80px;">
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-lg-7">
                    <div class="section-title text-center">
                        <p class="text-primary text-uppercase fw-bold mb-3">Contact With us</p>
                        <h1>We&rsquo;re Here to Help You</h1>
                        <p>Got a project in mind? We’d love to hear about it. Take five minutes to fill out our project form so that we can get to know you and understand your project.</p>
                    </div>
                </div>
                <div class="col-lg-10">
                    <div class="shadow rounded p-5 bg-white">
                        <div class="row">
                            <div class="col-12 mb-4">
                                <h4>Leave A Message</h4>
                            </div>
                            <div class="col-lg-6">
                                <div class="contact-form">
                                    <form wire:submit.prevent="submit">
                                        <div class="form-group mb-4 pb-2">
                                            <label for="name" class="form-label">Name</label>
                                            <input wire:model="name" type="text" class="form-control shadow-none @error('name') is-invalid @enderror" id="name" name="name">
                                            @error('name')
                                                <p class="invalid-feedback">{{ $message }}</p>
                                            @enderror
                                        </div>
                                        <div class="form-group mb-4 pb-2">
                                            <label for="email" class="form-label">Email address</label>
                                            <input wire:model="email" type="email" class="form-control shadow-none @error('email') is-invalid @enderror" id="email" name="email">
                                            @error('email')
                                                <p class="invalid-feedback">{{ $message }}</p>
                                            @enderror
                                        </div>
                                        <div class="form-group mb-4 pb-2">
                                            <label for="subject" class="form-label">Subject</label>
                                            <input wire:model="subject" type="text" class="form-control shadow-none @error('subject') is-invalid @enderror" id="subject" name="subject">
                                            @error('subject')
                                                <p class="invalid-feedback">{{ $message }}</p>
                                            @enderror
                                        </div>
                                        <div class="form-group mb-4 pb-2">
                                            <label for="message" class="form-label">Write Message</label>
                                            <textarea wire:model="message" class="form-control shadow-none @error('message') is-invalid @enderror" id="message" name="message" rows="3"></textarea> 
                                            @error('message')
                                                <p class="invalid-feedback">{{ $message }}</p>
                                            @enderror
                                        </div>
                                        <button wire:click="submit" class="btn btn-primary w-100" type="submit" id="button" wire:loading.attr="disabled">
                                            <span wire:loading wire:target="submit" class="spinner-border spinner-border-sm" role="status" aria-hidden="true">
                                                <i class="fa fa-spinner"></i>
                                            </span>
                                             Send Message
                                            <!-- <div wire:loading.delay wire:target="submit">
                                                 Loading...
                                            </div> -->
                                        </button>
                                       
                                     
                                        <div>
                                            @if (session()->has('success'))
                                                <div class="alert alert-success">
                                                    {{ session('success') }}
                                                </div>
                                            @endif
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-6 mt-5 mt-lg-0">
                                <div class="contact-info">
                                    <div class="block mt-0">
                                        <h4 class="h5">Still Have Questions?</h4>
                                        <div class="content">Call Us We Will Be Happy To Help
                                            <br> <a href="tel:+55 (9900) 666 22" style="color:var(--main-color);">+55 (9900) 666 22</a> 
                                            <br>Mon- Fri: 7.00 - 22.00
                                            <br>St-sun: 9.00 - 20.00
                                        </div>
                                    </div>
                                    <div class="block mt-4">
                                        <h4 class="h5">Contact Location</h4>
                                        <div class="content">Park Street.
                                            <br>455.
                                            <br>Adajan, Surat</div>
                                    </div>
                                    <div class="block mt-4">
                                        <h4 class="h5">Demo Office</h4>
                                        <div class="content">22 Park Road.
                                            <br>23BX,
                                            <br>Demo</div>
                                    </div>
                                    <!-- <div class="block">
                                        <ul class="list-unstyled list-inline my-4 social-icons">
                                            <li class="list-inline-item me-3"><a title="Explorer Facebook Profile" class="text-black" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                                            </li>
                                            <li class="list-inline-item me-3"><a title="Explorer Twitter Profile" class="text-black" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                            </li>
                                            <li class="list-inline-item me-3"><a title="Explorer Instagram Profile" class="text-black" href="https://instagram.com/"><i class="fab fa-instagram"></i></a>
                                            </li>
                                        </ul>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>


<script>
 
</script>