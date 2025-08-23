@extends('common.app')
@section('content')
<section class="content">
    <div class="card card-primary card-outline card-outline-tabs">
        <div class="card-body">

            <div class="row">
                <div style="padding-top: 3px">
                    <p>Per Page</p>
                </div>
                <div class="col-md-1">
                    <select class="form-control" id="pageper">
                        <option value="1">1</option>
                        <option value="5">5</option>
                        <option value="10" selected>10</option>
                        <option value="25">25</option>
                        <option value="50">50</option>
                        <option value="100">100</option>
                    </select>
                </div>
                <div class="col-md-1"></div>
                <div style="padding-top: 3px">
                    <p>Sort By</p>
                </div>
                <div class="col-md-2">
                    <select class="form-control" id="sortby">
                        <option value="product_id-ASC">Date (Oldest First)</option>
                        <option value="product_id-DESC">Date (Latest First)</option>
                    </select>
                </div>
                <div class="col-md-1"></div>
                <div style="padding-top: 3px">
                    <p>Search</p>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <input type="text" id="serach" class="form-control" placeholder="Search products..." />
                    </div>
                </div>
                <button type="button" class="col-sm-1 btn btn-block" data-toggle="modal" data-target="#addProductModal">
                    <i class="fa fa-plus"></i> Add
                </button>
            </div>
        </div>
    </div>

    <div class="table-responsive" style="min-height: 520px">
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Code</th>
                    <th>Product Name</th>
                    <th>Minimum</th>
                    <th>Price</th>
                    <th>Barcode</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($manageproduct as $key => $prod)
                <tr>
                    <td>{{ $key + 1 }}</td>
                    <td>{{ $prod->product_id }}</td>
                    <td>{{ $prod->name }}</td>
                    <td>{{ $prod->minimum }}</td>
                    <td>{{ round($prod->price,0) }}</td>
                    <td>{{ $prod->bar_code }}</td>
                    <td>
                        <div class="btn-group dropdown">
                            <button type="button" class="btn btn-default btn-outline-danger btn-xs fa fa-eye"
                                data-toggle="dropdown"></button>
                            <button type="button" class="btn btn-default btn-outline-danger btn-xs">Action</button>
                            <div class="dropdown-content">
                                <a onclick="show_discountprice_modal(
                                    '{{ $prod->product_id }}',
                                    '{{ $prod->name }}',
                                    '{{ $prod->price }}',
                                    '{{ $prod->buying_price }}',
                                    '{{ $prod->discount_price }}',
                                    '{{ $prod->discount_price_min_weight }}',
                                    '{{ $prod->mrp }}'
                                )">Edit</a>

                                <a href="{{ url('/products/banner/'.$prod->product_id) }}">Banner</a>

                                <a @if($prod->bar_code != "") onclick="return confirm('Existing Barcode will be changed.
                                    Do you want to create a New Barcode?')" @endif
                                    href="{{ url('/products/generatebarcode/'.$prod->product_id) }}">
                                    Generate Barcode
                                </a>

                                @if($prod->bar_code != "")
                                <a onclick="printbarcode('{{ $prod->product_id }}','{{ $prod->name }}')">Print
                                    Barcode</a>
                                @endif
                            </div>
                        </div>
                    </td>
                </tr>
                @endforeach

                <tr>
                    <td colspan="7">
                        {!! $manageproduct->links('pagination::bootstrap-4') !!}
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <input type="hidden" id="hidden_page" value="1" />
</section>
<div class="modal fade" id="addProductModal">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h4 class="modal-title">Add Product</h4>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <form method="POST" action="{{ url('storeProduct') }}">
                @csrf

                <div class="modal-body">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">
                            <span class="text-danger">*</span>Category
                        </label>
                        <div class="col-sm-5">
                            <select name="cat_id" id="cat_id" required class="form-control select2bs6">
                                <option value="">Select Category</option>
                                @foreach ($category as $cat)
                                    <option value="{{ $cat->id }}" {{ old('cat_id') == $cat->id ? 'selected' : '' }}>
                                        {{ $cat->category_name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-sm-5">
                            <select name="sub_cat_id" id="sub_cat_id" class="form-control select2bs6">
                                <option value="">Select Sub Category</option>
                                @foreach ($sub_category as $sub)
                                    <option value="{{ $sub->id }}" {{ old('sub_cat_id') == $sub->id ? 'selected' : '' }}>
                                        {{ $sub->category_name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label"><span class="text-danger">*</span>Product Name</label>
                        <div class="col-sm-5">
                            <input required type="text" name="product_name" class="form-control" maxlength="200"
                                value="{{ old('product_name') }}" placeholder="Product Name">
                        </div>

                        <label class="col-sm col-form-label">Selling Price</label>
                        <div class="col-sm-3">
                            <input required type="text" name="price" class="form-control decimal" maxlength="200"
                                value="{{ old('price') }}" placeholder="Price">
                        </div>

                        
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label"><span class="text-danger">*</span>Short Description</label>
                        <div class="col-sm-10">
                            <textarea rows="2" required class="form-control" name="short_description" maxlength="50"
                                placeholder="Short Description">{{ old('short_description') }}</textarea>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label"><span class="text-danger">*</span>Description</label>
                        <div class="col-sm-10">
                            <textarea id="editor1" rows="5" required class="form-control" name="description"
                                maxlength="5000" placeholder="Description">{{ old('description') }}</textarea>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Buying Price</label>
                        <div class="col-sm-4">
                            <input name="buying_price" class="form-control decimal" type="text"
                                value="{{ old('buying_price') }}" placeholder="Buying Price">
                        </div>

                        <label class="col-sm-2 col-form-label">Discount Price</label>
                        <div class="col-sm-4">
                            <input name="discount_price" class="form-control decimal" type="text"
                                value="{{ old('discount_price') }}" placeholder="Discount Price">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Discount Minimum</label>
                        <div class="col-sm-4">
                            <input name="weight" class="form-control decimal" type="text"
                                value="{{ old('weight') }}" placeholder="Discount Minimum">
                        </div>

                        <label class="col-sm-2 col-form-label">MRP</label>
                        <div class="col-sm-4">
                            <input name="mrp" class="form-control decimal" type="text"
                                value="{{ old('mrp') }}" placeholder="MRP">
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Add Product</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="purchasediscountmodal">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h4 class="modal-title" id="product_name2">{{ $product->product_name ?? 'Product Info' }}</h4>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="POST" action="{{ url('/update_product') }}">
                @csrf
                <input type="hidden" id="productid" name="product_id" value="{{ $product->product_id }}" />
                <div class="modal-body">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">
                            <span class="text-danger">*</span>Category
                        </label>
                        <div class="col-sm-5">
                            <select name="cat_id" id="cat_id" required class="form-control select2bs6">
                                <option value="">Select Category</option>
                                @foreach ($category as $cat)
                                <option value="{{ $cat->id }}" {{ $cat_id == $cat->id ? 'selected' : '' }}>
                                    {{ $cat->category_name }}
                                </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-sm-5">
                            <select name="sub_cat_id" id="sub_cat_id" class="form-control select2bs6">
                                <option value="">Select Sub Category</option>
                                @foreach ($sub_category as $sub)
                                <option value="{{ $sub->id }}" {{ $sub_cat_id == $sub->id ? 'selected' : '' }}>
                                    {{ $sub->category_name }}
                                </option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label"><span class="text-danger">*</span>Product Name</label>
                        <div class="col-sm-5">
                            <input required type="text" name="product_name" class="form-control" maxlength="200"
                                value="{{ $product->product_name }}" placeholder="Product Name">
                        </div>

                        <label class="col-sm col-form-label">Selling Price</label>
                        <div class="col-sm-2">
                            <input required type="text" name="price" class="form-control decimal" maxlength="200"
                                value="{{ $product->price }}" placeholder="Price">
                        </div>

                        <div class="col-sm-2">
                            <select class="form-control select2bs6" name="status" required>
                                <option value="Active" {{ $product->status == 'Active' ? 'selected' : '' }}>Active
                                </option>
                                <option value="Inactive" {{ $product->status == 'Inactive' ? 'selected' : '' }}>Inactive
                                </option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label"><span class="text-danger">*</span>Short
                            Description</label>
                        <div class="col-sm-10">
                            <textarea rows="2" required class="form-control" name="short_description" maxlength="50"
                                placeholder="Short Description">{{ $product->short_description }}</textarea>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label"><span class="text-danger">*</span>Description</label>
                        <div class="col-sm-10">
                            <textarea id="editor1" rows="5" required class="form-control" name="description"
                                maxlength="5000" placeholder="Description">{{ $product->description }}</textarea>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Buying Price</label>
                        <div class="col-sm-4">
                            <input name="buying_price" class="form-control decimal" type="text"
                                value="{{ $product->buying_price }}">
                        </div>

                        <label class="col-sm-2 col-form-label">Discount Price</label>
                        <div class="col-sm-4">
                            <input name="discount_price" class="form-control decimal" type="text"
                                value="{{ $product->discount_price }}">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Discount Minimum</label>
                        <div class="col-sm-4">
                            <input name="weight" class="form-control decimal" type="text"
                                value="{{ $product->weight }}">
                        </div>

                        <label class="col-sm-2 col-form-label">MRP</label>
                        <div class="col-sm-4">
                            <input name="mrp" class="form-control decimal" type="text" value="{{ $product->mrp }}">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>



<!-- 🔽 Barcode Print Modal -->
<div class="modal fade" id="barcodeprint">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="prod_name"></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <input type="hidden" id="printid" name="product_id" />
                <div class="row mt-2">
                    <div class="col-md-3">Barcode Count</div>
                    <div class="col-md-8">
                        <input class="form-control number" type="text" id="count" maxlength="2">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button onclick="confirmprint();" class="btn btn-primary">Confirm</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
@endsection

@push('page_scripts')
<script>
function show_discountprice_modal(product_id, name, price, buying_price, discount_price, weight, mrp) {
    $("#productid").val(product_id);
    $("#product_name2").html(name);
    $("#selling_price").val(price);
    $("#buying_price").val(buying_price);
    $("#discount_price").val(discount_price);
    $("#discount_weight").val(weight);
    $("#mrp").val(mrp);
    $('#purchasediscountmodal').modal('show');
}

function printbarcode(product_id, name) {
    $("#printid").val(product_id);
    $("#prod_name").html(name);
    $('#barcodeprint').modal('show');
}

function confirmprint() {
    var printurl = "{{ url('products/printbarcode') }}";
    var count = $("#count").val();
    if (count == "") {
        alert("Please enter count");
        $("#count").focus();
        return false;
    }
    var id = $("#printid").val();
    var url = printurl + "/" + id + "/" + count;
    window.open(url, '_blank');
    $('#barcodeprint').modal('hide');
}

$(document).ready(function() {
    function fetch_data(page, query, limit, sortby, sortorder) {
        var cururl = "{{ url('/') }}";
        $.ajax({
            url: cururl + "/productpagination/fetch_data?page=" + page + "&query=" + query +
                "&perpage=" + limit + "&sortby=" + sortby + "&sortorder=" + sortorder,
            success: function(data) {
                $('tbody').html(data);
            }
        })
    }

    $(document).on('change', '#pageper, #gotopage, #sortby', function() {
        var query = $('#serach').val();
        var page = $('#hidden_page').val();
        var limit = $("#pageper").val();
        var sortby = $("#sortby").val().split("-")[0];
        var sortorder = $("#sortby").val().split("-")[1];
        fetch_data(page, query, limit, sortby, sortorder);
    });

    $(document).on('keyup', '#serach', function() {
        var query = $('#serach').val();
        var page = $('#hidden_page').val();
        var limit = $("#pageper").val();
        var sortby = $("#sortby").val().split("-")[0];
        var sortorder = $("#sortby").val().split("-")[1];
        fetch_data(page, query, limit, sortby, sortorder);
    });

    $(document).on('click', '.pagination a', function(event) {
        event.preventDefault();
        var page = $(this).attr('href').split('page=')[1];
        $('#hidden_page').val(page);
        var query = $('#serach').val();
        var limit = $("#pageper").val();
        var sortby = $("#sortby").val().split("-")[0];
        var sortorder = $("#sortby").val().split("-")[1];
        fetch_data(page, query, limit, sortby, sortorder);
    });
});
</script>
<script>
$(document).ready(function() {
    $('#cat_id').on('change', function() {
        var catId = $(this).val();
        $('#sub_cat_id').empty().append('<option value="">Loading...</option>');

        if (catId) {
            $.ajax({
                url: '/get-subcategories/' + catId,
                type: 'GET',
                success: function(data) {
                    $('#sub_cat_id').empty().append(
                        '<option value="">Select Sub Category</option>');
                    $.each(data, function(key, value) {
                        $('#sub_cat_id').append('<option value="' + value.id +
                            '">' + value.category_name + '</option>');
                    });
                }
            });
        } else {
            $('#sub_cat_id').empty().append('<option value="">Select Sub Category</option>');
        }
    });
});
</script>

<script>
$('#cat_id').on('change', function() {
    let catId = $(this).val();
    let subCatSelect = $('#sub_cat_id');
    subCatSelect.html('<option value="">Loading...</option>');

    if (catId) {
        $.ajax({
            url: "{{ url('get-subcategories') }}/" + catId,
            type: "GET",
            success: function(res) {
                subCatSelect.html('<option value="">Select Sub Category</option>');
                $.each(res, function(key, sub) {
                    subCatSelect.append('<option value="' + sub.id + '">' + sub
                        .category_name + '</option>');
                });
            }
        });
    } else {
        subCatSelect.html('<option value="">Select Sub Category</option>');
    }
});
</script>

@endpush