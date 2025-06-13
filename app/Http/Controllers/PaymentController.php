<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\PaymentMail;
use Illuminate\Support\Facades\Mail;
use App\Models\Payment;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;

// use Spatie\LaravelPdf\Facades\Pdf;
use Barryvdh\DomPDF\Facade\Pdf;

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
        Mail::to(env('MAIL_TO_DEFAULT', 'andro.nm92@gmail.com'))->send(new PaymentMail($data));
        Mail::to('andro.nm92@gmail.com')->send(new PaymentMail($data));

        Payment::where('payment_code', $request->detailPayment['paymentCode'])
            ->update(['payment_status' => 'PAID']);

        return Inertia::render('payment/Payment', [
            'data' => $data,
        ]);
    }

    public function paymentConfirmationPDF(Request $request)
    {
        // $pdf = Pdf::view('pdf.payment-confirmation',[
        //     'customer_name' => 'Guest',
        //     'invoice' => $request->detailPayment['invoice'],
        //     'payment_code' => $request->detailPayment['paymentCode'],
        //     'total_payment' => $request->detailPayment['totalPayment'],
        //     'payBy' => strtoupper($request->detailPayment['payBy']),
        //     'timestamp' => now()->format('d F Y H:i:s'),
        //     'expired' => $request->detailPayment['expired']
        // ]);
        // return $pdf->download('payment-confirmation.pdf');
        $pdf = Pdf::loadView('pdf.payment-confirmation',[
            'customer_name' => 'Guest',
            'invoice' => $request->detailPayment['invoice'],
            'payment_code' => $request->detailPayment['paymentCode'],
            'total_payment' => $request->detailPayment['totalPayment'],
            'payBy' => strtoupper($request->detailPayment['payBy']),
            'timestamp' => now()->format('d F Y H:i:s'),
            'expired' => $request->detailPayment['expired']
        ]);
        return $pdf->download('payment-confirmation.pdf');
    }
}
