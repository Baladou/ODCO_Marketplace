@extends('includes.newmaster')

@section('content')


    <div class="home-wrapper">
        <!-- Starting of Account Dashboard area -->
        <div class="section-padding dashboard-account-wrapper wow fadeInUp">
        <div class="row">
            <div class="container">
                <div class="col-md-12 text-center services">
                    <div class="services-div">
                        <h1 class="text-center" style="color: green"> Félicitations !</h1>
                        <h2>Votre commande est confirmée</h2>
                        <p></p>
                        <a href="{{url('user/dashboard')}}" class="button style-10">Mon compte</a>
                    </div>
                </div>

            </div>
        </div>
        </div>
    </div>

@stop

@section('footer')

@stop