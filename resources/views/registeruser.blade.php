@extends('includes.newmaster')

@section('content')

    <div class="home-wrapper">
        <!-- Starting of login area -->
        <div class="section-padding login-area-wrapper wow fadeInUp">
            <div class="container">
                <div class="row">

                    <div class="col-lg-6 col-lg-offset-3 col-md-offset-3 col-md-6 col-sm-12 col-xs-12">
                        <div class="newAccount-area">
                            <h2 class="signIn-title">Creér un nouveau compte</h2>
                            <hr/>

                            <p>Creér un compte.</p>
                            <form action="{{route('user.reg.submit')}}" method="post">
                                {{csrf_field()}}
                                <div class="form-group">
                                    <label for="reg_email">Email <span>*</span></label>
                                    <input class="form-control" type="email" name="email" id="reg_email" required>
                                </div>
                                <div class="form-group">
                                    <label for="reg_name">Nom <span>*</span></label>
                                    <input class="form-control" type="text" name="name" id="reg_name" required>
                                </div>
                                <div class="form-group">
                                    <label for="reg_Pnumber">Numéro de téléphone <span>*</span></label>
                                    <input class="form-control" type="text" name="phone" id="reg_Pnumber" required>
                                </div>
                                <div class="form-group">
                                    <label for="reg_password">Mot de passe <span>*</span></label>
                                    <input class="form-control" type="password" name="password" id="reg_password" required>
                                </div>
                                <div class="form-group">
                                    <label for="confirm_password">Confirmer le mot de passe<span>*</span></label>
                                    <input class="form-control" type="password" name="password_confirmation" id="confirm_password" required>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6 col-xs-12">

                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12 text-right">
                                            <a href="{{url('user/login')}}">Vous avez déja un compte?</a>
                                        </div>
                                    </div>
                                </div>
                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>* {{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>* {{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>* {{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                                <div class="form-group">
                                    <input class="btn btn-md login-btn" type="submit" value="Créer un compte">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Ending of login area -->
    </div>
@stop

@section('footer')

@stop