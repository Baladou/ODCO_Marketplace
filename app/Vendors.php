<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Vendors extends Authenticatable
{
    use Notifiable;
    public $table = "vendor_profiles";
    protected $fillable = [
        'name_resp','email', 'coop_name','NumImm','sect_act' ,'photo', 'phone', 'password', 'fax', 'address', 'city', 'zip', 'current_balance', 'status', 'created_at', 'updated_at'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
    ];
}
