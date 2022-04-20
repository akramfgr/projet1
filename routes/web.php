<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DossierController;
use App\Models\Professeur;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Symfony\Contracts\Service\Attribute\Required;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Hash;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/create-symlink', function (){
    symlink(storage_path('/app/public'), public_path('storage'));
    echo "Symlink Created. Thanks";
});

Route::get('sample', function () {
    return view('sample');
});



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
    Route::post('/logout',[AuthenticatedSessionController::class,'destroy'])->name('logout');
});

Route::get('dossier',[DossierController::class,'show']);

Auth::routes(['verify'=> true]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home') ->middleware('verified');



