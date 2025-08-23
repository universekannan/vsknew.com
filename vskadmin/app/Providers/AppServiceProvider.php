<?php

namespace App\Providers;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\ServiceProvider;

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
      public $orderstatus;

      public function boot()
    {
		   $sql = "select * from order_status where status='1'";
           $this->orderstatus = DB::select( DB::raw( $sql ) );
               
        view()->composer('common.sidebar', function($view) {
            $view->with([ 'orderstatus' => $this->orderstatus]);
        });
        view()->composer('common.header', function($view) {
            $view->with([ 'orderstatus' => $this->orderstatus]);
        });
    }
}
