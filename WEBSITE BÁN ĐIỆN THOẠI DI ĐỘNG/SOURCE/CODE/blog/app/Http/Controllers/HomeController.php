<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Category;
use App\Models\Order;
use App\Models\Product;
use App\Models\Transaction;
use Illuminate\Http\Request;

class HomeController extends FrontendController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $productSuggest=[];
        $productHot = Product::where([
            'pro_hot' => Product::HOT_ON,
            'pro_active' => Product::STATUS_PUBLIC
        ])->get();
        $articleNews=Article::orderBy('id','DESC')->limit(6)->get();
        $categoriesHome=Category::with('products')
            ->where('c_home',Category::HOME)->limit(3)->get();

        $productPay=Product::orderBy('pro_pay','DESC')->limit(4)->get();
        if(get_data_user('web'))
        {
            $transactions=Transaction::where([
                'tr_user_id' =>get_data_user('web'),
                'tr_status' => Transaction::STATUS_DONE
            ])->pluck('id');

            if(!empty($transactions))
            {
                $listID = Order::whereIn('or_transaction_id',$transactions)->distinct()->pluck('or_product_id');
              if(!empty($listID))
              {
                  $listIDCategory=Product::whereIn('id',$listID)->distinct()->pluck('pro_category_id');
                 if($listIDCategory)
                 {
                     $productSuggest = Product::whereIn('pro_category_id',$listIDCategory)->limit(8)->get();
                 }
              }
            }

        }
        $viewData=[
            'productHot'=> $productHot,
            'articleNews'=>$articleNews,
            'categoriesHome'=>$categoriesHome,
            'productSuggest'=>$productSuggest,
            'productPay'=>$productPay,
        ];

        return view('home.index',$viewData);
    }
    public function renderProductView(Request $request)
    {
        if($request->ajax())
        {
            $listID=$request->id;
            $products = Product::whereIn('id',$listID)->get();
            $html = view('components.product_view',compact('products'))->render();
            return response()->json(['data'=>$html]);
        }

    }
}
