<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //Specified key was too long; max key length is 767 bytes
        Schema::defaultStringLength(191);
        // \DB::listen(function ($query) {
        //         \Log::info($query->sql);
        //         \Log::info($query->bindings);
        //         \Log::info($query->time);
        //         // $query->bindings
        //         // $query->time
        // });
    }
}
