@extends('includes.newmaster')

@section('content')

<div class="home-wrapper">
    <!-- Starting of Account Dashboard area -->
    <div class="section-padding dashboard-account-wrapper wow fadeInUp">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    @include('includes.usermenu')
                </div>
                <div class="col-md-9">
                    <div class="dashboard-content">
                        <div id="account-information-tab">
                            <h1>Editer mon compte</h1>
                            <div class="edit-account-info-div">
                                <h3>Mes informations</h3>
                                @if(Session::has('message'))
                                    <div class="alert alert-success alert-dismissable">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        {{ Session::get('message') }}
                                    </div>
                                @endif
                                <p><span>*</span> obligatoire</p>
                                <form action="{{ action('UserProfileController@passchange',['id' => $user->id]) }}" method="POST">
                                    {{ csrf_field() }}
                                    <div class="row">
                                        <div class="col-md-8 form-group">
                                            <label for="dash_password">Mot de passe actuel <span>*</span></label>
                                            <input class="form-control" type="password" name="cpass" id="dash_password" placeholder="01234567" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8 form-group">
                                            <label for="new_password">Nouveau mot de passe<span>*</span></label>
                                            <input class="form-control" type="password" name="newpass" id="new_password" placeholder="01234567" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8 form-group">
                                            <label for="change_password">Confirmer le mot de passe <span>*</span></label>
                                            <input class="form-control" type="password" name="renewpass" id="change_password" placeholder="01234567" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8 form-group">
                                            <input class="btn btn-md save-btn" type="submit" value="Sauvegarder">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Ending of Account Dashboard area -->
</div>

@stop

@section('footer')

@stop