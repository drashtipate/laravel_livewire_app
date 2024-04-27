<div class="services_wrapper">
    <div class="service_front rounded shadow py-5 px-4" style="border-color:#e6e6e6;">
        <div class="mb-4"> 
            @if ($service->icon_class != '')
                <!-- <img src="{{ asset($service->icon_class) }}" alt="image"> -->
                <i class="{{ $service->icon_class }} icon-service"></i>
            @endif
                <!-- <i class="fas fa-user"></i> -->
        </div>
        <h3 class="mb-3">{{ $service->title}}</h3>
        <p class="mb-4">{{ $service->short_desc}}</p> 
        <!-- <a class="btn btn-sm btn-outline-primary" href="{{ route('servicePage' ,$service->id) }}">View Details <i class="las la-arrow-right ms-1"></i></a> -->
    </div>

    <!-- <div class="services_back" style="background-image: url(https://integrio.wgl-demo.net/wp-content/uploads/2019/05/integrio_services_layers_1.jpg);">
    </div> -->
    <div class="services_back">
        <img src="{{ asset($service->image)}}" class="h-100">
    </div>
    <div class="services_button">
        <div id="services_button_1">
            <a class="button_link" href="{{ route('servicePage' ,$service->id) }}">View Details <i class="fas fa-arrow-right ps-2"></i></a>
        </div>
    </div>
</div>
