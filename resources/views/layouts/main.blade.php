<!DOCTYPE html>

<html lang="en-us">

<head>
	<meta charset="utf-8">
	<title>@yield('title')</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5">
	<meta name="description" content="This is meta description">
	<meta name="author" content="Themefisher">
	<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
	<link rel="icon" href="images/favicon.png" type="image/x-icon">

	<!-- # Google Fonts -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;700&display=swap" rel="stylesheet">

	<!-- # CSS Plugins -->
	<link rel="stylesheet" href="{{ asset('/front/plugins/slick/slick.css') }}">
	<link rel="stylesheet" href="{{ asset('/front/plugins/font-awesome/fontawesome.min.css') }}">
	<link rel="stylesheet" href="{{ asset('/front/plugins/font-awesome/brands.css') }}">
	<link rel="stylesheet" href="{{ asset('/front/plugins/font-awesome/solid.css') }}">


	<!-- # Main Style Sheet -->
	<link rel="stylesheet" href="{{ asset('/front/css/style.css') }}">
	<link href="{{ asset('/front/css/colorswitcher.css') }}" rel="stylesheet">
  @livewireStyles
</head>

<body>

<!-- navigation -->
<header class="navigation">
	<nav class="navbar navbar-expand-xl navbar-light text-center py-3">
		<div class="container">
			<div class="nav-row clearfix ">
				<a class="navbar-brand" href="{{ route('home') }}">
					<img loading="prelaod" decoding="async" class="img-fluid" width="160" src="{{ asset('/front/images/logo.png') }}" alt="Wallet">
				</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav m-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link" href="{{ route('home') }}">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="{{ route('page',1) }}">About Us</a></li>
						<li class="nav-item"><a class="nav-link" href="{{ route('servicesPage') }}">Services</a></li>
						<li class="nav-item"><a class="nav-link" href="{{ route('teamPage') }}">Our Team</a></li>
						<li class="nav-item"><a class="nav-link " href="{{ route('blog') }}">Blog</a></li>
						<li class="nav-item"><a class="nav-link " href="{{ route('faqs') }}">FAQ</a></li>
					</ul>
					<div class="button_module">
						<a href="{{ route('contact') }}" class="button_link" style="top:0px;">Contact Us</a>
					</div>
				</div>
			</div>
		</div>
	</nav>
</header>
<!-- /navigation -->

<!-- main section -->
<main>
    {{ $slot }}
</main>  <!-- slot ni or ma @yield('content') no pn use thay -->
<!-- /main section -->

<footer class="section-sm bg-white" style="border-top:outset;">
	<div class="container">
		<div class="row">
			<!-- <div class="col-lg-2 col-md-4 col-6 mb-4">
				<div class="footer-widget">
					<h5 class="mb-4 text-primary font-secondary">Service</h5>
					<ul class="list-unstyled">
						@foreach (getServices() as $service)
							<li class="mb-2"><a href="{{ route('servicePage',$service->id) }}">{{ $service->title }}</a>
							</li>	
						@endforeach
					</ul>
				</div>
			</div> -->
			<div class="col-lg-4 col-md-6 col-sm-6 mb-5">
				<div class="footer-widget-1">
					<img src="{{asset('front/images/logo.png')}}">
					<p>Avoids pleasure itself, because it is pleasure, but because those who do not know ways.</p>
					<ul class="m-0 p-0 social-icons">
						<li>
							<a href="#" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a>
						</li>
						<li>
							<a href="#" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a>
						</li>
						<li>
							<a href="#" target="_blank" title="Instagram"><i class="fab fa-instagram"></i></a>
						</li>
						<li>
							<a href="#" target="_blank" title="Google"><i class="fab fa-google"></i></a>
						</li>
					</ul>
				</div>
			</div>



			<div class="col-lg-4 col-md-6 col-sm-6 mb-5">
				<div class="footer-widget">
					<h5 class="mb-4 text-primary font-secondary">Explore Links</h5>
					<div class="d-flex">
						<ul class="list-unstyled">
							<li class="mb-2"><a href="{{ route('page',1) }}">About Us</a>
							</li>
							<li class="mb-2"><a href="{{ route('servicesPage') }}">Our Services</a>
							</li>
							<li class="mb-2"><a href="{{ route('teamPage') }}">Meet Our Team</a>
							</li>
							<li class="mb-2"><a href="{{ route('contact') }}">Contact</a>
							</li>
							<li class="mb-2"><a href="{{ route('blog') }}">News</a>
							</li>	
						</ul>
						<ul class="list-unstyled ms-5">
							<li class="mb-2"><a  href="{{ route('page',4) }}">Privacy Policy</a>
							</li>
							<li class="mb-2"><a  href="{{ route('page',3) }}">Terms &amp; Conditions</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- <div class="col-lg-3 col-md-4 col-6 mb-4">
				<div class="footer-widget">
					<h5 class="mb-4 text-primary font-secondary">Other Links</h5>
					<ul class="list-unstyled">
						<li class="me-4"><a class="text-black" href="{{ route('page',4) }}">Privacy Policy</a>
                        </li>
						<li class="me-4"><a class="text-black" href="{{ route('page',3) }}">Terms &amp; Conditions</a>
                        </li>
					</ul>
				</div>
			</div> -->
			
			<div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6 mb-4">
				<div class="footer-widget-3">
					<h5 class="mb-4 text-primary font-secondary">Solutions</h5>
					<ul class="m-0 p-0">
						<li>
							<div class="footer-widget-icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="">
								<a href="tel:+012345678999">+012 (3456) 789 99</a>
								<!-- <a href="">+012 (3456) 789 99</a> -->
							</div>
						</li>
						<li>
							<div class="footer-widget-icon">
								<i class="fa fa-envelope"></i>
							</div>
							<div class="">
								<a href="mailto:">info@company.com</a>
							</div>
						</li>
						<li>
							<div class="footer-widget-icon">
								<i class="fa fa-map-marker"></i>
							</div>
							<div class="">
								<p>455, Park Street, Adajan, Surat</p>
							</div>
						</li>
					</ul>
				</div>
			</div>

		</div>
		
	</div>

	<!-- color switcher -->
    <div class="color-switcher">
        <div class="switcher-btn">
            <i class="fa fa-cog"></i>
        </div>

        <h3>Select your color</h3>
        <div class="theme-buttons-container">
            <span class="theme-buttons" data-color="#ff805d" style="background: #ff805d;"></span>
            <span class="theme-buttons" data-color="#06ba63" style="background: #06ba63;"></span>
            <span class="theme-buttons" data-color="#f4b942" style="background: #f4b942;"></span>
            <span class="theme-buttons" data-color="#3083dc" style="background: #3083dc;"></span>
            <span class="theme-buttons" data-color="#49c6e5" style="background: #49c6e5;"></span>
            <span class="theme-buttons" data-color="#8850f8" style="background: #8850f8;"></span>
            <span class="theme-buttons" data-color="#052c71" style="background: #052c71;"></span>
            <span class="theme-buttons" data-color="#8BC34A" style="background: #8BC34A;"></span>
            <span class="theme-buttons" data-color="#7b1c00" style="background: #7b1c00;"></span>
			<span class="theme-buttons" data-color="#51b56d8f" style="background: #51b56d8f;"></span>
        </div>        
    </div>
</footer>

<!-- # JS Plugins -->
<script src="{{ asset('/front/plugins/jquery/jquery.min.js') }}"></script>
<script src="{{ asset('/front/plugins/bootstrap/bootstrap.min.js') }}"></script>

<!-- Main Script -->
<script src="{{ asset('front/js/script.js') }}"></script>
<script>
	// switcher button color theme
	document.querySelector('.switcher-btn').onclick = () => {
	document.querySelector('.color-switcher').classList.toggle('active');

	let themeButtons = document.querySelectorAll('.theme-buttons');

	themeButtons.forEach(color =>{
		color.addEventListener('click', () =>{
			let dataColor = color.getAttribute('data-color');
			document.querySelector(':root').style.setProperty('--main-color', dataColor);
			document.querySelector(':root').style.setProperty('--bg-color', dataColor);
			document.querySelector(':root').style.setProperty('--sky-light', dataColor);
			document.querySelector(':root').style.setProperty('--sky-dark', dataColor);
			document.querySelector(':root').style.setProperty('--dark-light', dataColor);
			document.querySelector(':root').style.setProperty('--linear-btn', dataColor);
		});
	});
	}
</script>

<!-- <script src="https://cdn.jsdelivr.net/npm/livewire@2.x"></script> -->


@livewireScripts

</body>
</html>