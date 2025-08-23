
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Receipt example</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
       @media print
        {
            .button {
                display: none;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class='print'
                    style="border: 1px solid #a1a1a1; width: 200px; background: white; padding: 1px; margin: 0px auto; text-align: left;">
                    <div style=" position: relative;margin-left: 1px;">
                    <div class="invoice-title" align="center">
                        <h3><strong>
  <img src="{{ URL::to('/') }}/logo.png" width="22px">VSK Brothers</strong></h3>
                    </div>
                    <div class="invoice-title" align="center">
                        <p>Peyankuzhi, Kanyakumari Dist</p>
                    </div>
                    <div class="invoice-title" align="center">
                        <p>88705 59164</p>
                    </div>
                    <div>
                        <div style="font-size:12px">
                            <table class="table table-borderless">
                                <thead>
                                    <tr>
                                        <td style="font-size:13px" class="text-left"><strong>#</strong></td>
                                        <td style="font-size:13px" class="text-left"><strong>Item</strong></td>
                                        <td class="text-center"><strong>Qty</strong></td>
                                        <td class="text-center"><strong>Amount</strong></td>
                                    </tr>
                                </thead>
                                <tbody>

	                          @foreach($bill as $key=> $b)
                                    <tr>
                                        <td style="padding:0px;"  class="text-left">{{ $key +1 }}</td>
                                        <td style="padding:0px;" class="text-left">{{ $b->product_name }}</td>
                                        <td class="text-center">{{ $b->quantity }}</td>
                                        <td class="text-center">{{ $b->total }}</td>
                                    </tr>
                              @endforeach 
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <hr>
                    <div align="center">
                        <strong>Total ₹ {{ $gtotal->total }}</strong>
                    </div>
                    <div align="center">
                        Order ID {{ $id }}
                    </div>
                    <div align="center">
                        Thank You
                    </div>
                    <hr>
                    <div align="center">
                    <input style="padding:5px;" value="Print Document" type="button" onclick="myprinter()"
                        class="button btn btn-success"></input>
                    </div>  
                    </div>  
                </div>
            </div>
        </div>
        <script>
            function myprinter() {
                window.print();
            }
        </script>
</body>
</html>
