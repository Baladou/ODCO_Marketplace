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
                        <div id="my-orders-tab">
                            <h1>Mes commandes</h1>
                            {{--<div class="order-item-quantity">--}}
                                {{--<div class="row">--}}
                                    {{--<div class="col-md-6">--}}
                                        {{--1 Item(s)--}}
                                    {{--</div>--}}
                                    {{--<div class="col-md-6 text-right">--}}
                                        {{--<div class="form-group">--}}
                                            {{--<label>Afficher</label>--}}
                                            {{--<select name="show-order">--}}
                                                {{--<option value="">10 par page</option>--}}
                                                {{--<option value="">15 par page</option>--}}
                                                {{--<option value="">20 par page</option>--}}
                                            {{--</select>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                            <div class="table-responsive">
                                <table class="table" id="userOrders">
                                    <thead>
                                    <tr class="table-header-row">
                                        <th>Commande#</th>
                                        <th>Date</th>
                                        <th>Total de la commande</th>
                                        <th>Statut de la commande</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($orders as $order)
                                    <tr>
                                        <td>{{$order->order_number}}</td>
                                        <td>{{$order->booking_date}}</td>

                                        <td>{{$order->pay_amount}}{{$settings[0]->currency_sign}}</td>
                                        <td>{{$order->status}}</td>
                                        <td><a href="{{url('user/order/')}}/{{$order->id}}">Voir la commande</a></td>
                                    </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>

                            <a href="" class="back-btn">Retour</a>
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
<script>
    $('#userOrders').DataTable( {
        "order": []
    });
</script>
@stop