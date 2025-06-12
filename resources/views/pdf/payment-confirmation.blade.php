<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Payment Confirmation</title>
  <style>
    body {
      font-family: sans-serif;
      font-size: 14px;
      color: #333;
      margin: 0;
      padding: 30px;
    }
    h2 {
      color: #1a1a1a;
    }
    table {
      width: 100%;
      margin-top: 20px;
    }
    td {
      padding: 5px 0;
    }
    .footer {
      margin-top: 50px;
      font-size: 12px;
      color: #777;
      text-align: center;
    }
  </style>
</head>
<body>
  <h2>Payment Confirmation</h2>

  <p>Hello {{ $customer_name }},</p>
  <p>Thank you for your payment. Here are the details:</p>

  <table class="payment-info">
      <tr>
        <td><strong>Invoice Number:</strong></td>
        <td>{{ $invoice }}</td>
      </tr>
      <tr>
        <td><strong>Payment Code:</strong></td>
        <td>{{ $payment_code }} (show code to cashier)</td>
      </tr>
      <tr>
        <td><strong>Amount Paid:</strong></td>
        <td>Rp{{ $total_payment }}</td>
      </tr>
      <tr>
        <td><strong>Date:</strong></td>
        <td>{{ $timestamp }}</td>
      </tr>
      <tr>
        <td><strong>Payment Method:</strong></td>
        <td>{{ $payBy }}</td>
      </tr>
    </table>

  <p>If you have any questions, feel free to contact our support team.</p>

  <p>Regards,<br>Store</p>

  <div class="footer">
    &copy; {{ date('Y') }} Store. All rights reserved.
  </div>
</body>
</html>
