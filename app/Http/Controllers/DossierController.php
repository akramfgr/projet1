<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Professeur;

class DossierController extends Controller
{
    //
    function show()
    {
        $data= Professeur::all();
        return view('dossier',['professeurs'=>$data]);
    }
}
