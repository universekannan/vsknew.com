@extends('common.app')
@section('content')
<style>
.tt-hint,
.product_id2 {
    border: 1px solid blue !important;
    font-size: 18px;
    height: 35px;
    line-height: 30px;
    outline: medium none;
    padding: 8px 12px;
    width: 255px !important;
}

.tt-dropdown-menu {
    width: 300px;
    margin-top: 1px;
    padding: 1px 1px;
    background-color: #fff;
    border: 1px solid #ccc;
    border: 1px solid rgba(0, 0, 0, 0.2);
    font-size: 18px;
    color: #111;
    background-color: #F1F1F1;
    text-align: left;
}

.tt-is-under-cursor {
    background-color: #2caab3;
    color: white !important;
}
</style>
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <div class="card card-info">
                    <div class="card-body">
                        <input maxlength="15" type="hidden" class="form-control" name="customer_id" id="customer_id"
                            placeholder="id">

                        <div class="form-group row">
                            <input autofocus="on" maxlength="15" type="text" class="form-control number" name="mobile"
                                id="cus_mobile" placeholder="Mobile">
                            <button style="position: absolute;right: 0;height: 33px;" data-toggle="modal"
                                data-target="#addCustomer" type="buttom" class="btn btn-danger ">+</button>

                        </div>

                        <div class="search-results"
                            style="position: absolute; z-index: 1000; background: #fff; width: 100%;"></div>


                        <div class="form-group row">
                            <input maxlength="30" type="text" class="form-control" name="cust_name" id="cust_name"
                                placeholder="Customer Name">
                        </div>

                        <div class="form-group row" id="product_div">

                            <input onkeypress="return runScript1(event)" placeholder="Enter Item Name"
                                autocomplete="off" maxlength="200" class="form-control product_id2" id="product_id2"
                                name="product_id2" />
                        </div>
                        <div class="form-group row">
                            <input required="required" type="text" class="form-control rate" name="product_code"
                                id="rate" disabled maxlength="50" placeholder="Price">
                            <input type="hidden" name="PID" id="PID" value="">
                            <input type="hidden" name="GST" id="GST" value="0">
                            <input type="hidden" name="discount_price" id="discount_price" value="0">
                            <input type="hidden" name="discount_price_min_weight" id="discount_price_min_weight"
                                value="0">
                            <input type="hidden" name="tax_name" id="tax_name" value="">
                            <input type="hidden" name="product_id3" id="product_id3" value="">
                        </div>
                        <div class="form-group row">
                            <input maxlength="5" onkeypress="return runScript2(event)" onkeyup="calculate_amount()"
                                required="required" type="text" class="form-control decimal" name="product_qty"
                                id="quantity" placeholder="Quantity">
                        </div>

                        <div class="form-group row">
                            <input required="required" disabled type="text" class="form-control" name="total" id="total"
                                placeholder="Total">
                            <input type="hidden" name="gst_amount" id="gst_amount" value="0">
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12 text-center">
                                <a onclick="return add_row()" required="required" class="btn btn-success" type="button"
                                    name="add">ADD</a>
                            </div>
                        </div>


                    </div>
                </div>
            </div>

            <div class="col-md-9">
                <div class="card card-info">
                    <div class="card-body">
                        <div class="login-panel panel panel-default">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="tab_logic">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">
                                                        #
                                                    </th>
                                                    <th class="text-center col-sm-7">
                                                        Product Name
                                                    </th>

                                                    <th class="text-center">
                                                        Quantity
                                                    </th>
                                                    <th class="text-center">
                                                        Rate
                                                    </th>
                                                    <th class="text-center">
                                                        Amount
                                                    </th>

                                                    <th class="text-center">
                                                        <a class="btn btn-danger btn-sm" href="#"><i
                                                                class="fa fa-times"></i></a>
                                                    </th>

                                                </tr>

                                            </thead>
                                            <tbody>
                                                <tr id='addr0'></tr>

                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-12 col-md-6"></div>
                                <label class="control-label col-md-3">Total</label>

                                <div class="col-md-3 pull-right form-inline">

                                    <input readonly type="text" name="total_amount" id="total_amount"
                                        class="form-control Number">

                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-12 col-md-6"></div>
                                <label class="control-label col-md-3">GST</label>

                                <div class="col-md-3 pull-right form-inline">

                                    <input readonly type="text" name="gat_amount5" id="gat_amount5"
                                        class="form-control Number">

                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-12 col-md-6"></div>
                                <label class="control-label col-md-3">Net Total</label>

                                <div class="col-md-3 pull-right form-inline">

                                    <input readonly type="text" name="net_amount" id="net_amount"
                                        class="form-control Number">

                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-12 col-md-4"></div>
                                <label class="control-label col-md-1"></label>

                                <div class="col-md-3 pull-right form-inline">

                                    <form class="form-inline" name="cust_form" role="form" method="post">
                                        {{ csrf_field() }}
                                        <div class="form-group">
                                            <div class="b">
                                                <div style="float:right">
                                                    <a onclick="submit_data()" required="required"
                                                        class="btn btn-success" type="button" name="save" />SAVE</a>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>




<div class="modal fade" id="addCustomer" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <form method="post" action="{{url('/add_customer')}}">
        {{ csrf_field() }}
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">Add Customer</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <label>First Name</label>
                        <input maxlength="30" type="text" class="form-control" name="firstname" id="firstname"
                            placeholder="First Name">
                    </div>
                    <div class="form-group row">
                        <label>Last Name</label>
                        <input maxlength="30" type="text" class="form-control" name="lastname" id="lastname"
                            placeholder="Last Name">
                    </div>
                    <div class="form-group row">
                        <label>Customer Phone</label>
                        <input maxlength="30" type="text" class="form-control" name="telephone" id="telephone"
                            placeholder="Customer Phone">
                    </div>
                    <div class="form-group row">
                        <label>Customer Email</label>
                        <input maxlength="30" type="text" class="form-control" name="email" id="email"
                            placeholder="Customer Email">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </form>
</div>



@endsection