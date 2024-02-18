<?php

use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\AdvanceFilterController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\EducationController;
use App\Http\Controllers\LifestyleController;
use App\Http\Controllers\AboutController; 
use App\Http\Controllers\FamilyController;
use App\Http\Controllers\YourLikeController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

Log::info(url()->current());

// Auth::routes();


Route::prefix('my-admin')->group(function () {
    Auth::routes([
        'register' => false, // Register Routes...
        'reset' => false, // Reset Password Routes...
        'verify' => false, // Email Verification Routes...
    ]);
});

Route::get('/home', function () {
    return redirect('/my-admin/register');
});
Route::any('/my-admin/', [DashboardController::class,'index'])->middleware('auth');
Route::get('/', function () {
    return redirect('/register.index');
});
Route::auth();
Route::any('/my-admin/admin_profie', [HomeController::class,'admin_profie']);
Route::any('/my-admin/update_profile', [HomeController::class,'update_profile']);

Route::group(['prefix' => 'my-admin', 'middleware' => ['auth']], function () {
 //admin profile
    Route::any('/admin_change_password', [HomeController::class,'admin_change_password'])->name('admin_paas')->middleware('auth');
    Route::any('/change_masterpassword', [HomeController::class,'change_masterpassword'])->middleware('auth');
    Route::resource('register', RegisterController::class);
    Route::resource('lifestyle', LifestyleController::class);

});

Route::any('/error', function () {
   abort(404);
});
Route::any('/index', function () {
    return view('advance_fillter/index');
 });

//register manager
// Route::resource('register', RegisterController::class);
Route::resource('about_me', AboutController::class);
Route::resource('family_details', FamilyController::class);
Route::resource('your_likes', YourLikeController::class);

//forgot password
Route::get('forget-password', [ForgotPasswordController::class, 'showForgetPasswordForm'])->name('forget.password.get');
Route::post('forget-password', [ForgotPasswordController::class, 'submitForgetPasswordForm'])->name('forget.password.post'); 
Route::get('reset-password/{token}', [ForgotPasswordController::class, 'showResetPasswordForm'])->name('reset.password.get');
Route::post('reset-password', [ForgotPasswordController::class, 'submitResetPasswordForm'])->name('reset.password.post');

//education and carrer
Route::resource('education',EducationController::class);

//filter data
Route::resource('filter',AdvanceFilterController::class);
Route::post('all_data',[AdvanceFilterController::class,'all_data'])->name('all_data');
Route::post('challenged',[AdvanceFilterController::class,'challenged'])->name('challenged');
Route::post('users_height',[AdvanceFilterController::class,'users_height'])->name('users_height');
Route::post('users_income',[AdvanceFilterController::class,'users_income'])->name('users_income');
Route::post('manglik',[AdvanceFilterController::class,'manglik'])->name('manglik');
Route::post('users_religion',[AdvanceFilterController::class,'users_religion'])->name('users_religion');
Route::post('mother_tongue',[AdvanceFilterController::class,'mother_tongue'])->name('mother_tongue');
Route::post('marital_status',[AdvanceFilterController::class,'marital_status'])->name('marital_status');
Route::post('country',[AdvanceFilterController::class,'country'])->name('country');
Route::post('users_education',[AdvanceFilterController::class,'education'])->name('users_education');
Route::post('users_occupation',[AdvanceFilterController::class,'occupation'])->name('users_occupation');
Route::post('dietary_habbit',[AdvanceFilterController::class,'dietary_habbit'])->name('dietary_habbit');
Route::post('smoking_habbit',[AdvanceFilterController::class,'smoking_habbit'])->name('smoking_habbit');
Route::post('drinking_habbit',[AdvanceFilterController::class,'drinking_habbit'])->name('drinking_habbit');