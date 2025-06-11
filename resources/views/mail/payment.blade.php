<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Payment Confirmation</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }
    .email-container {
      background-color: #ffffff;
      max-width: 600px;
      margin: 20px auto;
      padding: 30px;
      border: 1px solid #e0e0e0;
      border-radius: 8px;
    }
    h2 {
      color: #333333;
    }
    .payment-info {
      margin: 20px 0;
    }
    .payment-info td {
      padding: 5px 0;
    }
    .footer {
      font-size: 12px;
      color: #777777;
      text-align: center;
      margin-top: 30px;
    }
  </style>
</head>
<body>
  <div class="email-container">
    <h2>Payment Confirmation</h2>
    <p>Hello Customer,</p>
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
      &copy; 2025 Your Company Name. All rights reserved.
    </div>
  </div>
</body>
</html>