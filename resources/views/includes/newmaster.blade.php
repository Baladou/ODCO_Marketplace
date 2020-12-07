<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="keywords" content="{{$code[0]->meta_keys}}">
    <meta name="author" content="GeniusOcean">
    <link rel="icon" type="image/png" href="{{url('/')}}/images/{{$settings[0]->favicon}}" />
    <title>{{$settings[0]->title}}</title>

    <link href="{{ URL::asset('/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{ URL::asset('/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{ URL::asset('/css/animate.css')}}" rel="stylesheet">
    <link href="{{ URL::asset('/css/owl.carousel.css')}}" rel="stylesheet">
    <link href="{{ URL::asset('/css/bootstrap-slider.min.css')}}" rel="stylesheet">
    <link href="{{ URL::asset('/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{ URL::asset('/css/genius-slider.css')}}" rel="stylesheet">
    <link href="{{ URL::asset('/css/go-style.css')}}" rel="stylesheet">
    <link href="{{ URL::asset('/css/style.css')}}" rel="stylesheet">
    <link href="{{ URL::asset('/css/responsive.css')}}" rel="stylesheet">
    <link rel="manifest" href="/marketplace_odco/manifest.webmanifest" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js')}}"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js')}}"></script>
    <![endif]-->


</head>
<body>
<div id="cover"></div>
<div id="content-block">
    <div class="content-center fixed-header-margin" style="padding-top: 114px;">
        <!-- HEADER -->
        <div class="header-wrapper style-10">
            <header class="type-1">

                <div class="header-product">
                    <div class="logo-wrapper">
                        <a href="{{url('/')}}" id="logo">
                            <img alt="" src="{{ URL::asset('/images/logo')}}/{{$settings[0]->logo}}">
                        </a>
                    </div>

                    <div class="product-header-content">
                        <div class="line-entry">
                            <div class="menu-button responsive-menu-toggle-class"><i class="fa fa-reorder"></i></div>

                        </div>
                        {{--<div class="middle-line"></div>--}}
                        <div class="line-entry">
                            <div class="header-top-entry increase-icon-responsive open-search-popup">
                                <div class="title"><i class="fa fa-search"></i> <span>{{$language->search}}</span></div>
                            </div>
                            <div class="header-top-entry increase-icon-responsive login">
                                <a href="{{url('/vendor')}}" class="title"><i class="fa fa-group"></i> <span>{{$language->vendor}}</span></a>
                            </div>
                            <div class="header-top-entry increase-icon-responsive login">
                                @if(Auth::guard('profile')->guest())
                                    <a href="{{url('user/login')}}" class="title"><i class="fa fa-user"></i> <span>{{$language->sign_in}}</span></a>
                                @else
                                    <a href="{{route('user.account')}}" class="title"><i class="fa fa-user"></i> <span>{{$language->my_account}}</span></a>
                                @endif
                            </div>
                            <a href="{{url('/cart')}}" class="header-top-entry open-cart-popup" id="notify"><div class="title"><i class="fa fa-shopping-cart"></i><span>{{$language->my_cart}}</span> <b id="carttotal">0.00{{$settings[0]->currency_sign}}</b></div></a>

                            <div class="header-top-entry increase-icon-responsive login">
                                <a href="{{url('/admin')}}" class="title">Admin</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="close-header-layer"></div>
                <div class="navigation">
                    <div class="navigation-header responsive-menu-toggle-class">
                        <div class="title">Navigation</div>
                        <div class="close-menu"></div>
                    </div>
                    <div class="nav-overflow">
                        <nav>
                            <ul>
                                <li class="simple-list"><a href="{{url('/')}}" class="">{{$language->home}}</a></li>

                                @foreach($menus as $menu)
                                    <li class="full-width-columns">
                                        <a href="{{url('/category')}}/{{$menu->slug}}">{{$menu->name}}</a>
                                        @if(\App\Category::where('mainid',$menu->id)->where('role','sub')->count() >0)
                                            <i class="fa fa-chevron-down"></i>
                                            <div class="submenu">
                                                @foreach(\App\Category::where('mainid',$menu->id)->where('role','sub')->get() as $submenu)
                                                    <div class="product-column-entry">
                                                        <div class="submenu-list-title"><a href="{{url('/category')}}/{{$submenu->slug}}">{{$submenu->name}}</a><span class="toggle-list-button"></span></div>
                                                        <div class="description toggle-list-container">
                                                            <ul class="list-type-1">
                                                                @foreach(\App\Category::where('subid',$submenu->id)->where('role','child')->get() as $childmenu)
                                                                    <li><a href="{{url('/category')}}/{{$childmenu->slug}}"><i class="fa fa-angle-right"></i>{{$childmenu->name}}</a></li>
                                                                @endforeach
                                                            </ul>
                                                        </div>
                                                        <div class="hot-mark yellow">sale</div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        @endif
                                    </li>
                                @endforeach

                                @if($pagesettings[0]->a_status == 1)
                                    <li class="simple-list"><a href="{{url('/about')}}" class="">{{$language->about_us}}</a></li>
                                @endif
                                @if($pagesettings[0]->f_status == 1)
                                    <li class="simple-list"><a href="{{url('/faq')}}" class="">{{$language->faq}}</a></li>
                                @endif
                                @if($pagesettings[0]->blogs_status == 1)
                                    <li class="simple-list"><a href="{{url('/blogs')}}" class="">{{$language->blog}}</a></li>
                                @endif
                                @if($pagesettings[0]->c_status == 1)
                                    <li class="simple-list"><a href="{{url('/contact')}}" class="">{{$language->contact_us}}</a></li>
                                @endif

                                <li class="fixed-header-visible">
                                    <a class="fixed-header-square-button open-cart-popup"><i class="fa fa-shopping-cart"></i></a>
                                    <a class="fixed-header-square-button open-search-popup"><i class="fa fa-search"></i></a>
                                </li>
                            </ul>

                            <div class="clear"></div>

                        </nav>
                        <div class="navigation-footer responsive-menu-toggle-class">

                        </div>
                    </div>
                </div>
            </header>
            <div class="clear"></div>
        </div>
    </div>

    @yield('content')

        <!-- starting of footer area -->
        <footer class="section-padding footer-area-wrapper wow fadeInUp">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-8 col-sm-8 col-xs-12">
                        <div class="single-footer-area">
                            <div class="footer-title">
                                {{$language->about_us}}
                            </div>
                            <div class="footer-content">
                                <p>
                                    {{$settings[0]->about}}
                                </p>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-8 col-sm-8 col-xs-12">
                        <div class="single-footer-area">
                            <div class="footer-title">
                               Liens
                            </div>
                            <div class="footer-content">
                                <ul class="about-footer">
                                    <li><a href="{{url('/')}}"><i class="fa fa-caret-right"></i> {{$language->home}}</a></li>
                                    <li><a href="{{url('/about')}}"><i class="fa fa-caret-right"></i> {{$language->about_us}}</a></li>
                                    <li><a href="{{url('/faq')}}"><i class="fa fa-caret-right"></i> {{$language->faq}}</a></li>
                                    <li><a href="{{url('/contact')}}"><i class="fa fa-caret-right"></i> {{$language->contact_us}}</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-8 col-sm-8 col-xs-12">
                        <div class="single-footer-area">
                            <div class="footer-title">
                              Tag Populaire
                            </div>
                            <div class="footer-content tags">
                                @foreach(explode(',',$settings[0]->popular_tags) as $tag)
                                    <a href="{{url('/tags')}}/{{$tag}}">{{$tag}}</a>
                                @endforeach

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="container">
                <div class="col-md-6 col-sm-6 footer-copy">
                    {!! $settings[0]->footer !!}
                </div>
                <div class="col-md-6 col-sm-6">
                    <div class="footer-social-links">
                        <ul>
                            @if($sociallinks[0]->f_status == "enable")
                            <li>
                                <a class="facebook" href="{{$sociallinks[0]->facebook}}">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            @endif
                            @if($sociallinks[0]->g_status == "enable")
                            <li>
                                <a class="google" href="">
                                    <i class="fa fa-google"></i>
                                </a>
                            </li>
                            @endif
                            @if($sociallinks[0]->t_status == "enable")
                            <li>
                                <a class="twitter" href="{{$sociallinks[0]->twiter}}">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            @endif
                            @if($sociallinks[0]->link_status == "enable")
                            <li>
                                <a class="tumblr" href="{{$sociallinks[0]->linkedin}}">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Ending of footer area -->


        <div class="cart-box popup">
            <div class="popup-container">
                <div id="emptycart">
                    {{$language->empty_cart}}
                </div>
                <div id="goCart">

                </div>
                <div class="summary">
                    <div class="grandtotal">{{$language->total}} <span id="grandttl">0.00{{$settings[0]->currency_sign}}</span></div>
                </div>
                <div class="cart-buttons">
                    <div class="column">
                        <a href="{{url('/cart')}}" class="button style-3">{{$language->view_cart}}</a>
                        <div class="clear"></div>
                    </div>
                    <div class="column">
                        <a href="{{route('user.checkout')}}" class="button style-4">{{$language->checkout}}</a>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>


        <div class="search-box popup">
            <form id="searchform">
                <button type="button" id="searchbtn" class="search-button">
                    <i class="fa fa-search"></i>

                </button>

                <div class="search-field">
                    <input type="text" id="searchdata" value="" placeholder="{{$language->search}}" />
                </div>
            </form>
        </div>

        <!-- Product Quick View Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="row" id="viewProduct">

                        </div>
                    </div>
                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>

</div>

<script>
    var mainurl = '{{url('/')}}';
    var currency = '{{$settings[0]->currency_sign}}';
    var language = {!! json_encode($language) !!};
</script>

<script src="{{ URL::asset('/js/jquery.min.js')}}"></script>
<script src="{{ URL::asset('/js/jquery.zoom.js')}}"></script>
<script src="{{ URL::asset('/js/owl.carousel.min.js')}}"></script>
<script src="{{ URL::asset('/js/bootstrap.min.js')}}"></script>
<script src="{{ URL::asset('/js/bootstrap-slider.min.js')}}"></script>
<script src="{{ URL::asset('/js/jquery.dataTables.min.js')}}"></script>
<script src="{{ URL::asset('/js/dataTables.bootstrap.min.js')}}"></script>
<script src="{{ URL::asset('/js/wow.js')}}"></script>
<script src="{{ URL::asset('/js/genius-slider.js')}}"></script>
<script src="{{ URL::asset('/js/global.js')}}"></script>
<script src="{{ URL::asset('/js/main.js')}}"></script>
<script src="{{ URL::asset('/js/plugins.js')}}"></script>
<script src="{{ URL::asset('/js/notify.js')}}"></script>
<script src="/marketplace_odco/index.js">

</script>
@yield('footer')
</body>
</html>