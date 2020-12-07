@extends('admin.includes.master-admin')

@section('content')

    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row" id="main">
                <!-- Page Heading -->
                <div class="go-title">
                    <div class="pull-right">
                        <a href="{!! url('admin/vendors') !!}" class="btn btn-default btn-add"><i class="fa fa-arrow-left"></i> Retour</a>
                    </div>
                    <h3>Détails du Coopérative</h3>

                </div>
                <!-- Page Content -->
                <div class="panel panel-default">
                    <div class="panel-body">

                        <table class="table">
                            <tbody>
                          <!--  <tr>
                                <td width="30%" style="text-align: right;"><strong> ID#</strong></td>
                                <td>{{$vendor->id}}</td>
                            </tr>-->
                            <tr>
                                <td width="30%" style="text-align: right;"><strong>Nom du Coopérative:</strong></td>
                                <td>{{$vendor->coop_name}}</td>
                            </tr>

                             <tr>
                                <td width="30%" style="text-align: right;"><strong>Numéro d'immatriculation:</strong></td>
                                <td>{{$vendor->NumImm}}</td>
                            </tr>
                            <tr>
                                <td width="30%" style="text-align: right;"><strong>Nombre des produits:</strong></td>
                                <td><strong>{{\App\Product::where('vendorid',$vendor->id)->count()}}</strong></td>
                            </tr>
                            <tr>
                                <td width="30%" style="text-align: right;"><strong>Nom du Responsable:</strong></td>
                                <td>{{$vendor->name_resp}}</td>
                            </tr>
                            <tr>
                                <td width="30%" style="text-align: right;"><strong> Email:</strong></td>
                                <td>{{$vendor->email}}</td>
                            </tr>
                            <tr>
                                <td width="30%" style="text-align: right;"><strong>Téléphone:</strong></td>
                                <td>{{$vendor->phone}}</td>
                            </tr>
                            <tr>
                                <td width="30%" style="text-align: right;"><strong>Fax:</strong></td>
                                <td>{{$vendor->fax}}</td>
                            </tr>
                            <tr>
                                <td width="30%" style="text-align: right;"><strong>Adresse:</strong></td>
                                <td>{{$vendor->address}}</td>
                            </tr>
                            <tr>
                                <td width="30%" style="text-align: right;"><strong>Ville:</strong></td>
                                <td>{{$vendor->city}}</td>
                            </tr>
                            <tr>
                                <td width="30%" style="text-align: right;"><strong> Zip:</strong></td>
                                <td>{{$vendor->zip}}</td>
                            </tr>
                            <tr>
                                <td width="30%" style="text-align: right;"><strong>Rejointe:</strong></td>
                                <td>{{$vendor->created_at->diffForHumans()}}</td>
                            </tr>
                            <tr>
                                <td width="30%"></td>
                                <td><a href="email/{{$vendor->id}}" class="btn btn-primary"><i class="fa fa-send"></i> Contacter la coopérative</a>
                                </td>
                            </tr>

                            </tbody>
                        </table>

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

@stop