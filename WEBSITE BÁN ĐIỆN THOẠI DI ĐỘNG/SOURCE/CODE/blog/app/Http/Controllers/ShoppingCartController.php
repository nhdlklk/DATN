<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use App\Models\Transaction;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ShoppingCartController extends FrontendController
{
    public function __construct()
    {
        parent::__construct();
    }
    public function addProduct(Request $request,$id)
    {
        $product=Product::select('pro_name','id','pro_price','pro_sale','pro_avatar','pro_number','pro_slug')->find($id);

        if(!$product)
            return redirect('home');
        $price=$product->pro_price;
        if($product->pro_sale)
        {
            $price=$price*(100 - $product->pro_sale)/100;
        }
        if($product->pro_number<=0)
        {
            return  redirect()->back()->with('warning','Sản phẩm đã hết hàng');
        }
        \Cart::add([
            'id' => $id,
            'name' => $product->pro_name,
            'qty' => 1,
            'price' =>$price,
            'options' => [
                'avatar' => $product->pro_avatar,
                'sale' => $product->pro_sale,
                'price_old' => $product->pro_price,
                'pro_slug'=>$product->pro_slug


            ]
        ]);
        return redirect()->back()->with('success','Thêm vào giỏ hàng thành công');
    }
    public function deleteProductItem($key)
    {
        \Cart::remove($key);
        return redirect()->back();
    }
    public function getListShoppingCart()
    {
        $products=\Cart::content();
        $productPay=Product::orderBy('pro_pay','DESC')->limit(4)->get();
        return view('shopping.index',compact('products','productPay'));
    }
    public function getFormPay()
    {
        $products=\Cart::content();

        return view('shopping.pay',compact('products'));
    }
    public function saveInfoShoppingCart(Request $request)
    {
        $totalMoney= str_replace(',','',\Cart::subtotal(0,3));
        $transactionId = Transaction::insertGetId([
            'tr_user_id' => get_data_user('web'),
            'tr_total' =>(int)$totalMoney,
            'tr_note' => $request->note,
            'tr_address' => $request->address,
            'tr_phone' => $request->phone,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        ]);
        if($transactionId)
        {
            $products=\Cart::content();
            foreach ($products as $product)
            {
                Order::insert([
                   'or_transaction_id' => $transactionId,
                    'or_product_id' => $product->id,
                    'or_qty' => $product->qty,
                    'or_price' => $product->options->price_old,
                    'or_sale' => $product->options->sale
                ]);
            }
        }
        $checkUser= get_data_user('web','email');
        $data=[
            'route'=>(int)$totalMoney,
            'products'=>$products
        ];
        Mail::send('email.pay',$data, function($message) use ($checkUser){
            $message->to($checkUser, 'Visitor')->subject('Thanh toán');
        });
        \Cart::destroy();

        return redirect()->route('home')->with('success','Thanh Toán thành công. Chúng tôi sẽ liên hệ với bạn sớm nhất');

    }
    public function addProductqty($key)
    {
        $row = \Cart::get($key);
        \Cart::update($key, $row->qty + 1);
        return redirect()->back();
    }
    public function addProductminus($key)
    {
        $row = \Cart::get($key);
        if(($row->qty)==0)
        {
            \Cart::remove($key);

        }
        \Cart::update($key, $row->qty - 1);

        return redirect()->back();
    }
    public function renderProductView(Request $request)
    {
        if($request->ajax())
        {
            $listID=$request->id;
            $products = Product::whereIn('id',$listID)->get();
            $html = view('components.product_view_pay',compact('products'))->render();
            return response()->json(['data'=>$html]);
        }

    }
}
