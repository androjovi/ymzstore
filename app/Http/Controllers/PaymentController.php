<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\PaymentMail;

use Illuminate\Support\Facades\DB;
use Inertia\Inertia;
use Illuminate\Support\Facades\Mail;

class PaymentController extends Controller
{
    public function confirmPayment(Request $request){
        $data = [
            'invoice' => $request->detailPayment['invoice'],
            'payment_code' => $request->detailPayment['paymentCode'],
            'total_payment' => $request->detailPayment['totalPayment'],
            'payBy' => $request->detailPayment['payBy'],
            'timestamp' => now()->format('d F Y H:i:s'),
            'expired' => $request->detailPayment['expired']
        ];
        Mail::to('andro.nm92@gmail.com')->send(new PaymentMail($data));

        return Inertia::render('payment/Payment', [
            'data' => $data,
        ]);
    }
}
