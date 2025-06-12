<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Order;
use App\Models\Payment;
use Inertia\Inertia;
use Milon\Barcode\DNS1D;
use Milon\Barcode\DNS2D;

class OrderController extends Controller
{
    protected $taxes = 0.001; // 0.1% tax rate
    protected $pointEarned = 10; // Points earned per quantity
    public function save(Request $request)
    {
        $invoiceNumber = sprintf("%s%s","INV-", strtoupper(str()->random(8)));
        $branchId = $request->detail['branch']['id'];

        try {
            DB::beginTransaction();
            foreach($request->carts as $k){
                $carts = [
                    'branch_id' => $branchId,
                    'order_parent' => 0,
                    'order_invoice' => $invoiceNumber,
                    'stock_id'  => $k['id'],
                    'user_id'   => 2,
                    'order_type' => $request->detail['branch']['branch_type'],
                    'total_quantity' => $k['quantity'],
                    'total_price' => $k['price_qty'],
                    'total_taxes' => $k['price_qty'] * $this->taxes,
                    'point_earned' => $k['quantity'] * $this->pointEarned,
                    'status' => 1,
                    'order_note' => '',
                    'created_by' => 1,
                    'order_note_mart' => $request->detail['notes'] ?? null,
                ];
                $createOrder = Order::create($carts);
            }
            DB::commit();
        } catch (\Exception $e) {
            DB::rollBack();
            return Inertia::render('cart/Cart', [
                'error' => 'Failed to place order: ' . $e->getMessage(),
            ])->toResponse($request)
            ->setStatusCode(500);
        }

        $paymentCode = sprintf("%s%s","", strtoupper(str()->random(4)));
        $payment = Payment::create([
            'user_id' => 2,
            'payment_code' => $paymentCode,
            'order_invoice' => $invoiceNumber,
            'total_payment' => $request->detail['total'] + ($request->detail['total'] * $this->taxes), // Assuming tax is 0.1%
            'payment_method' => $request->detail['payBy'],
            'payment_status' => 'PENDING',
            'created_by' => 1,
        ]);

        $barcodeGenerator = new DNS2D();
        if ($request->detail['payBy'] == 'qris'){
            $barcode = $barcodeGenerator->getBarcodePNG($invoiceNumber, 'QRCODE');
        }else{
            $barcode = $barcodeGenerator->getBarcodePNG($paymentCode, 'QRCODE');
        }

        return Inertia::render('payment/Payment', [
            'data' => [
                'invoice' => $invoiceNumber,
                'payment_code' => $paymentCode,
                'total_payment' => $request->detail['total'] + ($request->detail['total'] * $this->taxes),
                'payBy' => $request->detail['payBy'],
                'expired' => now()->addMinutes(15)->format('d F Y H:i:s'),
                'barcode' => $barcode,
            ],
            'message' => 'Order placed successfully!',
        ]);

    }
}
