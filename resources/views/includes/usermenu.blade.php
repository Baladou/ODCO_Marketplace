<div class="dashboard-menu">
    <h3>Mon Compte</h3>
    <ul class="dashboard-mainmenu">
        <li><a href="{{ route('logout') }}"
               onclick="event.preventDefault();
               document.getElementById('logout-form').submit();">
                <i class="fa fa-fw fa-power-off"></i> Se déconnecter
            </a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                {{ csrf_field() }}
            </form></li>
        <li><a href="{{route('user.account')}}">Tableau de bord</a></li>
        <li><a href="{{route('user.accinfo')}}">Mes informations</a></li>
        <li><a href="{{route('user.accpass')}}">Changer le mot de passe</a></li>
        <li><a href="{{route('user.orders')}}">Mes commandes</a></li>
    </ul>
</div>