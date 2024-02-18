<?php

namespace App\Http\Middleware;

use Artisan;
use Auth;
use Closure;

class CheckStarter
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $i = 1;

        do {
            Artisan::call('view:clear');
            Artisan::call('cache:clear');

            $i++;
        } while ($i <= 10);

        // cache()->flush();

        if (Auth::check() && Auth::user()->role == '5') {
            echo 'ereads';die;
            return $next($request);
        }
    }
}
