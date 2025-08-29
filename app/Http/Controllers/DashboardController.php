<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class DashboardController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function dashboard()
    {
        $user = Auth::user();
        $user_type_id = $user->user_type_id;
        $shop_id = $user->shop_id;
        $user_id = $user->id;

        $today = Carbon::today()->toDateString();

        if ($user_type_id == 1) {
            $products = DB::table('products')->count();
        } else {
            $products = DB::table('products')
                ->where('status', 1)
                ->count();
        }

        $purchase = DB::table('purchase')
            ->when($user_type_id == 1, function ($q) {
                $q->where('shop_id', 0);
            }, function ($q) use ($shop_id) {
                $q->where('shop_id', $shop_id);
            })
            ->count();

        $Users = DB::table('users')
            ->where('id', '!=', 1)
            ->count();

        $bill = DB::table('orders')
            ->whereDate('date_added', $today)
            ->when($user_type_id != 1, function ($q) use ($shop_id) {
                $q->where('shop_id', $shop_id);
            })
            ->count();

        $PendingCount = DB::table('orders')
            ->where('order_status_id', 1)
            ->when(!in_array($user_type_id, [1, 2]), function ($q) use ($user_id) {
                $q->where('user_id', $user_id);
            })
            ->count();

        $order = [];
        $statuses = DB::table('order_status')
            ->where('status', 1)
            ->where('order_status_id', '!=', 1)
            ->orderBy('order_status_id')
            ->get();

        foreach ($statuses as $i => $status) {
            $order_count = DB::table('orders')
                ->where('order_status_id', $status->order_status_id)
                ->when(!in_array($user_type_id, [1, 2]), function ($q) use ($user_id) {
                    $q->where('user_id', $user_id)->where('live', '!=', 0);
                })
                ->count();

            $order[] = [
                "order_status_id"   => $status->order_status_id,
                "order_status_name" => $status->name,
                "order_count"       => $order_count,
                "color"             => $i % 2 == 0 ? "bg-olive" : "bg-indigo",
            ];
        }

        return view("dashboard", compact('products', 'bill', 'purchase', 'Users', 'order', 'PendingCount'));
    }
}
