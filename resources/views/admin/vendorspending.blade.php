@extends('admin.includes.master-admin')

@section('content')

    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row" id="main">
                <!-- Page Heading -->
                <div class="go-title">
                    <div class="pull-right">
                    <a href="{!! url('admin/vendors') !!}" class="btn btn-default btn-back"><i class="fa fa-arrow-circle-left"></i> Retour</a>
                    </div>
                    <h3>Demande En Attente</h3>
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
                        <table class="table table-striped table-bordered" cellspacing="0" id="example" width="100%">
                            <thead>
                            <tr>
                                <th>Nom du coopérative</th>

                                <th width="10%"> Email</th>
                                <th>Téléphone</th>
                                <th width="10%">Adresse</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($vendors as $vendor)
                                <tr>
                                    <td>{{$vendor->coop_name}}</td>
                                    <td>{{$vendor->NumImm}}</td>
                                    <td>{{$vendor->email}}</td>
                                    <td>{{$vendor->phone}}</td>
                                    <td>{{$vendor->address}}</td>
                                    <td>Pending</td>

                                    <td>

                                        <a href="{{url('admin/vendors')}}/{{$vendor->id}}" class="btn btn-primary btn-xs"><i class="fa fa-check"></i> Voir details </a>

                                        <a href="{{url('admin/vendors/accept')}}/{{$vendor->id}}" class="btn btn-success btn-xs"><i class="fa fa-check"></i> Accepter</a>
                                        <a href="{{url('admin/vendors/reject')}}/{{$vendor->id}}" class="btn btn-danger btn-xs"><i class="fa fa-times"></i> Rejecter</a>

                                    </td>
                                </tr>
                            @endforeach
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