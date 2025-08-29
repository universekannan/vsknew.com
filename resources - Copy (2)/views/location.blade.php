@extends('common.app')
@section('content')
<?php
   $text="Location List";
   ?>
<section class="content">
   <div class="card card-primary card-outline card-outline-tabs">
      <div class="card-header p-0 border-bottom-0">
         <ul class="nav nav-tabs" id="custom-tabs-four-tab" usertype="tablist">
            <li class="nav-item">
               <a class="nav-link active" id="custom-tabs-four-home-tab" data-toggle="pill" href="#custom-tabs-four-home" usertype="tab" aria-controls="custom-tabs-four-home" aria-selected="true">{{$text }}</a>
            </li>
            <div class="col-sm-6">
            </div>
            <div class="col-sm-4" style="padding-top: calc(.5rem + 0px);">
            </div>
            <div class="col-sm-1" style="padding-top: calc(.5rem + 0px);">
               <td>
                  <button type="button" class="btn btn-block btn-outline-danger btn-xs" data-toggle="modal" data-target="#adduser"><i class="fa fa-plus"> </i> Add</button>
               </td>
            </div>
         </ul>
      </div>
      <div class="card-body">
         <div class="tab-content" id="custom-tabs-four-tabContent">
            <div class="tab-pane fade show active" id="custom-tabs-four-home" usertype="tabpanel" aria-labelledby="custom-tabs-four-home-tab">
               <table id="example2" class="table table-bordered table-hover">
                  <thead>
                      <tr>
                          <th>id</th>
                          <th>PostOffice Name</th>
                          <th>Pincode</th>
                          <th>City</th>
                          <th>District</th>
                          <th>State</th>
                          <th>Action</th>
                      </tr>
                  </thead>
                  <tbody>
                     @foreach ($location as $key => $manageLocation)
                            <tr id="arrayorder_<?php echo $manageLocation->id; ?>">
                                <td>{{ $key + 1 }}</td>
                                <td>{{ $manageLocation->PostOfficeName }}</td>
                                <td>{{ $manageLocation->Pincode }}</td>
                                <td>{{ $manageLocation->City }}</td>
                                <td>{{ $manageLocation->District }}</td>
                                <td>{{ $manageLocation->State }}</td>
                                <td>
                                  <button type="button" 
                                    class="btn btn-sm btn-info editBtn" 
                                    data-id="{{ $manageLocation->id }}"
                                    data-postoffice="{{ $manageLocation->PostOfficeName }}"
                                    data-pincode="{{ $manageLocation->Pincode }}"
                                    data-city="{{ $manageLocation->City }}"
                                    data-district="{{ $manageLocation->District }}"
                                    data-state="{{ $manageLocation->State }}"
                                    >
                                    <i class="fa fa-edit"></i> Edit
                                  </button>
                              </td>
                            </tr>
                        @endforeach
                  </tbody>
               </table>
            </div>
         </div>
      </div>


      <div class="modal fade" id="adduser">
         <form action="{{url('/add_location')}}" method="post">
            {{ csrf_field() }}
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     <h4 class="modal-title">Add Location</h4>
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                     </button>
                  </div>
                  <div class="modal-body">
                     <div class="row">
                        <div class="col-md-6"> 
                           <input type="text" class="form-control mb-3" name="postoffice_name" maxlength="50" placeholder="Enter Post Office Name"/>
                        </div>
                        <div class="col-md-6"> 
                           <input type="text" class="form-control mb-3" name="pincode" maxlength="50" placeholder="Enter Pincode"/>
                        </div>
                        <div class="col-md-6"> 
                           <input type="text" class="form-control mb-3" name="city" maxlength="50" placeholder="Enter City"/>
                        </div>
                        <div class="col-md-6"> 
                           <input type="text" class="form-control mb-3" name="district" maxlength="50" placeholder="Enter District"/>
                        </div>
                        <div class="col-md-6"> 
                           <input type="text" class="form-control mb-3" name="state" maxlength="50" placeholder="Enter State"/>
                        </div>
                     </div>
                  </div>
                  <div class="modal-footer justify-content-between">
                     <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                     <button id="addUser" type="submit" class="btn btn-primary">Submit</button>
                  </div>
               </div>
            </div>
         </form>
      </div>

      <div class="modal fade" id="editLocation">
   <form action="{{ url('/update_location') }}" method="post">
      {{ csrf_field() }}
      <input type="hidden" name="id" id="edit_id">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h4 class="modal-title">Edit Location</h4>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
               <div class="row">
                  <div class="col-md-6">
                     <input type="text" class="form-control mb-3" name="postoffice_name" id="edit_postoffice" placeholder="Enter Post Office Name"/>
                  </div>
                  <div class="col-md-6">
                     <input type="text" class="form-control mb-3" name="pincode" id="edit_pincode" placeholder="Enter Pincode"/>
                  </div>
                  <div class="col-md-6">
                     <input type="text" class="form-control mb-3" name="city" id="edit_city" placeholder="Enter City"/>
                  </div>
                  <div class="col-md-6">
                     <input type="text" class="form-control mb-3" name="district" id="edit_district" placeholder="Enter District"/>
                  </div>
                  <div class="col-md-6">
                     <input type="text" class="form-control mb-3" name="state" id="edit_state" placeholder="Enter State"/>
                  </div>
               </div>
            </div>
            <div class="modal-footer justify-content-between">
               <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               <button type="submit" class="btn btn-primary">Update</button>
            </div>
         </div>
      </div>
   </form>
</div>


</section>
</div>

<script src="{!! asset('plugins/jquery/jquery.min.js') !!}"></script>

<script>
$(document).on("click", ".editBtn", function () {
    $("#edit_id").val($(this).data("id"));
    $("#edit_postoffice").val($(this).data("postoffice"));
    $("#edit_pincode").val($(this).data("pincode"));
    $("#edit_city").val($(this).data("city"));
    $("#edit_district").val($(this).data("district"));
    $("#edit_state").val($(this).data("state"));

    $("#editLocation").modal('show');
});
</script>


@endsection
