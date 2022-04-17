<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;



class Professeur extends Model 
{

    
    protected $fillable = [
        'nom',
        'email',
        'user_id',
    ];
    
    public function scopeProfesseurs($query)
    {
        if (Auth::user()->role_id == 2)
        {
            return $query->where('nom', '=', Auth::user()->name);
        }
    }
}
 