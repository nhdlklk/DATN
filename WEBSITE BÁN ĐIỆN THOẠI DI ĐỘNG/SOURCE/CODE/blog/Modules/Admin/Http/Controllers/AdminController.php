<?php

namespace Modules\Admin\Http\Controllers;

use App\Models\Contact;
use App\Models\Rating;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Response
     */
    public function index()
    {
        //Doanh thu
        $moneyDay=Transaction::whereDay('created_at',date('d'))->where('tr_status',Transaction::STATUS_DONE)
        ->sum('tr_total');

        $moneyMonth=Transaction::whereMonth('created_at',date('m'))->where('tr_status',Transaction::STATUS_DONE)
            ->sum('tr_total');
        $moneyYear=Transaction::whereYear('created_at',date('Y'))->where('tr_status',Transaction::STATUS_DONE)
            ->sum('tr_total');

        $datamoney=[
            [
                "name" => "Danh thu tháng",
                "y" =>(int)$moneyMonth

            ],
            [

                    "name" => "Danh thu năm",
                    "y" =>(int)$moneyYear

            ]
        ];
        //Dan sach don hang moi

        $transactionNews= Transaction::with('user:id,name')->limit(5)->orderByDesc('id')->get();

        $ratings= Rating::with('user:id,name','product:id,pro_name')->limit(10)->get();
        $contacts= Contact::limit(10)->get();
        $viewData=[
            'ratings'=>$ratings,
            'contacts'=>$contacts,
            'moneyDay'=>$moneyDay,
            'moneyMonth'=>$moneyMonth,
            'moneyYear'=>$moneyYear,
            'datamoney'=>json_encode($datamoney),
            'transactionNews'=>$transactionNews,
        ];
        return view('admin::index',$viewData);
    }

    /**
     * Show the form for creating a new resource.
     * @return Response
     */
    public function create()
    {
        return view('admin::create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Response
     */
    public function show($id)
    {
        return view('admin::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Response
     */
    public function edit($id)
    {
        return view('admin::edit');
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Response
     */
    public function destroy($id)
    {
        //
    }
}
