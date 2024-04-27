<div class="card bg-transparent border-0 text-center">
    <div class="card-img">
        @if ($member->image != '')
            <img loading="lazy" decoding="async" src="{{ asset($member->image) }}" alt="Scarlet Pena" class="w-100" width="300" height="332">
        @endif
            <ul class="card-social list-inline">
                @if ($member->fb_url != '')
                    <li class="list-inline-item"><a class="facebook" target="_blank" href="{{ $member->fb_url }}"><i class="fab fa-facebook"></i></a></li>
                @endif

                @if ($member->tw_url != '')
                    <li class="list-inline-item"><a class="twitter" target="_blank" href="{{ $member->tw_url }}"><i class="fab fa-twitter"></i></a></li>
                @endif
                
                @if ($member->in_url != '')
                    <li class="list-inline-item"><a class="instagram" target="_blank" href="{{ $member->in_url }}"><i class="fab fa-instagram"></i></a></li>
                @endif
            </ul>
    </div>
    <div class="card-body">
        <h3>{{ $member->name }}</h3>
        <p>{{ $member->designation }}</p>
    </div>
</div>