@extends('vendor.includes.master-coop')

@section('content')

    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row" id="main">

                <!-- Page Heading -->
                <div class="go-title">
                    <h3>Le profil du coopérative</h3>
                    <div class="go-line"></div>
                </div>
                <!-- Page Content -->
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div id="response">
                            @if(Session::has('message'))
                                <div class="alert alert-success alert-dismissable">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    {{ Session::get('message') }}
                                </div>
                            @endif
                        </div>
                        <form method="POST" action="{!! action('VendorProfileController@update',['id' => $vendor->id]) !!}" class="form-horizontal form-label-left" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <input type="hidden" name="_method" value="PATCH">
                            <div class="item form-group">
                                <label style="margin-top: 90px;" class="control-label col-md-3 col-sm-3 col-xs-12" for="name"> le logo du coopérative <span class="required">*</span>
                                </label>
                                <span class="col-md-2 col-sm-6 col-xs-12">
                                              <img style="width: 120px; height: 120px;" src="{{url('/')}}/images/vendor/{{$vendor->photo}}" id="vendorimg" class="img-circle profile_img" alt="Vendor Photo">

                        </span>
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <input class="hidden" onchange="readURL(this)" id="uploadFile" name="photo" type="file">
                                    <div id="uploadTrigger" onclick="uploadclick()" style="margin-top: 90px;white-space: normal;" class="form-control btn btn-default"><i class="fa fa-upload"></i> Changer le logo</div>
                                </div>
                            </div>



                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"> Le nom du responsable du coopérative <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input class="form-control col-md-7 col-xs-12" name="name" placeholder="Nom" value="{{$vendor->name_resp}}" required="required" type="text">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"> Le nom du coopérative <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input class="form-control col-md-7 col-xs-12" name="shop_name" placeholder="Le nom du coopérative " value="{{$vendor->coop_name}}" required="required" type="text">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"> Email  <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input class="form-control col-md-7 col-xs-12" name="email" placeholder=" Email" value="{{$vendor->email}}" required="required" type="text" disabled>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"> Numéro de téléphone <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input class="form-control col-md-7 col-xs-12" name="phone" placeholder="Numéro de téléphone" value="{{$vendor->phone}}" required="required" type="text">
                                </div>
                            </div>

                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="adresse"> L'adresse <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input class="form-control col-md-7 col-xs-12" name="adresse" placeholder="adresse" value="{{$vendor->address}}" required="required" type="text">
                                </div>
                            </div>

                            <div class="item form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="city"> La ville <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input class="form-control col-md-7 col-xs-12" name="city" placeholder="La ville" value="{{$vendor->city}}" required="required" type="text">
                                </div>
                            </div>


                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-3">
                                    <button type="submit" class="btn btn-success btn-block">éditer</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
@stop

@section('footer')
<script>

    function readURL(input) {

        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#vendorimg').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
@stop