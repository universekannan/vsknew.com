 @if(count($manageproduct) > 0)
 @foreach($manageproduct as $key=>$prod)
               <tr>
                  <td>{{ $key + 1 }}</td>
                  <td>{{ $prod->product_id }}</td>
                  <td>{{ $prod->name }}</td>
                  <td>{{ $prod->stock }}</td>
                  <td>{{ $prod->minimum }}</td>
                  <td>{{ round($prod->price,0) }}</td>
                  <td>{{ $prod->bar_code }}</td>
                 
				  <td>
				  <div class="btn-group dropdown">
					   <button type="button" class="btn btn-default btn-outline-danger btn-xs fa fa-eye" data-toggle="dropdown">
					   </button>
					   <button type="button" class="btn btn-default btn-outline-danger btn-xs">Action</button>
					   <div class="dropdown-content">
                  @if($prod->pending_purchase == 0)
						  <a href="" id="purchasetd_{{ $prod->product_id }}"><a onclick="show_purchase_modal('{{ $prod->product_id }}','{{ $prod->name }}','{{ $prod->minimum }}','{{ $prod->stock }}')">Purchase</a>
			         @else
						  <a href="#" style="color:red">Pending</a>
                  @endif
                   <a onclick="show_discountprice_modal('{{ $prod->product_id }}','{{ $prod->name }}','{{ $prod->price }}','{{ $prod->buying_price }}','{{ $prod->discount_price }}','{{ $prod->discount_price_min_weight }}','{{ $prod->mrp }}')">Price</a>
			  			  <a href="{{url('/products/banner/'.$prod->product_id)}}" > Banner</a>
                    <a @if($prod->bar_code != "") onclick="return confirm('Existing Barcode will be change.Do you want to create New Barcode?')" @endif href="{{url('/products/generatebarcode/'.$prod->product_id)}}" > Generate Barcode</a>
                    @if($prod->bar_code != "")
                     <a onclick="printbarcode('{{ $prod->product_id }}','{{ $prod->name }}')">Print Barcode</a>
                     @endif

				   </div>
				</div>
				 </td>
				 
               </tr>
               @endforeach 
               @else

               <tr>
               	<td colspan="8" class="text-center text-danger">No Data Found</td></tr>

               @endif

               <tr>
    <td colspan="8" >
     {!! $manageproduct->links('pagination::bootstrap-4') !!}
    </td>
   </tr>