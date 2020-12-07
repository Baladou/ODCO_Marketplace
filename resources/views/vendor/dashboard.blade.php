@extends('vendor.includes.master-coop')

@section('content')

<div id="page-wrapper">
    <div class="container-fluid">
        <!-- Page Heading -->
        <br/>
        <h3>Tableau de bord de la coopérative </h3>

    <div class="col-sm-6 col-md-4">
        <div class="panel panel-default" style="border-radius: 4px;margin: 0 20px 0 0">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-download fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="text-total">{{round(\App\OrderedProducts::where('vendorid',Auth::user()->id)->where('paid','yes')->where('status','completed')->sum('cost'),2)}}{{$settings[0]->currency_sign}}</div>
                        <p class="titles">Total des gains</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

        <h3>Statistiques de la boutique! </h3>

        <div class="row" id="main" >
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-shopping-cart fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="text-total">{{ \App\Product::where('vendorid',Auth::user()->id)->where('status',1)->count() }}</div>
                                <p class="titles">Total des produits</p>
                            </div>
                        </div>
                    </div>
                    <a class="panel-footer detail-link clearfix btn-block" href="{{url('vendor/products')}}"><span class="pull-left">Voir tout</span><span class="pull-right"><i class="fa fa-chevron-circle-right"></i>
                    </span>
                    </a><!-- END panel-->
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-money fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="text-total">{{\App\OrderedProducts::where('vendorid',Auth::user()->id)->where('payment','Completed')->where('status','pending')->count() }}</div>
                                <p class="titles">Commandes en attente</p>
                            </div>
                        </div>
                    </div>
                    <a class="panel-footer detail-link clearfix btn-block" href="{{url('vendor/orders')}}"><span class="pull-left">Voir tout</span><span class="pull-right"><i class="fa fa-chevron-circle-right"></i>
                    </span>
                    </a><!-- END panel-->
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-truck fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="text-total">{{\App\OrderedProducts::where('vendorid',Auth::user()->id)->where('payment','Completed')->where('status','processing')->count() }}</div>
                                <p class="titles">Commandes en cours</p>
                            </div>
                        </div>
                    </div>
                    <a class="panel-footer detail-link clearfix btn-block" href="{{url('vendor/orders')}}"><span class="pull-left">Voir tout</span><span class="pull-right"><i class="fa fa-chevron-circle-right"></i>
                    </span>
                    </a><!-- END panel-->
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-check-circle fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="text-total">{{\App\OrderedProducts::where('vendorid',Auth::user()->id)->where('payment','Completed')->where('status','completed')->count() }}</div>
                                <p class="titles">Commandes terminées</p>
                            </div>
                        </div>
                    </div>
                    <a class="panel-footer detail-link clearfix btn-block" href="{{url('vendor/orders')}}"><span class="pull-left">Voir tout</span><span class="pull-right"><i class="fa fa-chevron-circle-right"></i>
                    </span>
                    </a><!-- END panel-->
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