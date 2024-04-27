@section('title', 'Blog')
<main>
    <div class="section">
        <div class="container">
            <div class="back-link-blog">
                <a class="backtoblog" href="{{ url('/blog') }}">Back to blog
                    <span>
                        <i class="fas fa-arrow-left ms-2" ></i>
                    </span>
                </a>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="mb-5 text-center">
                        <h2 class="mb-4" style="line-height:1.5">{{ $article->title }}</h2>
                        <span>{{ \Carbon\Carbon::parse($article->created_at)->format('M d, Y') }} <span class="mx-2">/</span> </span>
                        <p class="list-inline-item">Category : <a href="#!" class="ml-1" style="color: var(--main-color);">{{ $article->category_name }} </a> </p>
                        <p class="list-inline-item">Author : <a href="#!" class="ml-1" style="color: var(--main-color);">{{ $article->author }} </a> </p>
                        <!-- <p class="list-inline-item">Tags : <a href="#!" class="ml-1">Photo </a> ,<a href="#!" class="ml-1">Image </a> </p> -->
                    </div>
                    @if ($article->image != '')
                        <div class="mb-5 text-center blog-post">
                            <div class="post-slider rounded overflow-hidden">
                                <!-- <img loading="lazy" decoding="async" src="images/blog/post-4.jpg" alt="Post Thumbnail"> -->

                                <img loading="lazy"  decoding="async" src="{{ asset($article->image) }}" alt="Post Thumbnail">
                            
                            </div>
                        </div>
                    @endif
                    <div class="content">
                        <!-- <h4 id="heading-example">Heading example</h4> -->
                        {!! $article->content !!}
                    </div>
                </div>
            </div>
        </div>
    </div>  
</main>