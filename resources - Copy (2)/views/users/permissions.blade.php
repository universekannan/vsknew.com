@extends('common.app')
@section('content')
   <section class="content">
    <div class="card card-primary card-outline card-outline-tabs">
              <div class="card-header p-0 border-bottom-0">
                <ul class="nav nav-tabs" id="custom-tabs-four-tab" role="tablist">
				
                  <li class="nav-item">
                    <a class="nav-link active" id="custom-tabs-four-home-tab" data-toggle="pill" href="#custom-tabs-four-home" role="tab" aria-controls="custom-tabs-four-home" aria-selected="true">All Users</a>
                  </li>
				  
					<div class="col-sm-6">
                   <center> <div class="nav-link">User Permission List</div></center>
					</div>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="myInput" onkeyup="myFunction()" placeholder="Customer Full Name">
					</div>
					<div class="col-sm-1">
						<td>
                     <button type="button" class="btn btn-block btn-outline-danger btn-xs" data-toggle="modal" data-target="#userrole"><i class="fa fa-plus"> </i> Add</button>
</td>
					</div>
                </ul>
              </div>
              <div class="card-body">
                <div class="tab-content" id="custom-tabs-four-tabContent">
                  <div class="tab-pane fade show active" id="custom-tabs-four-home" role="tabpanel" aria-labelledby="custom-tabs-four-home-tab">
                     <table id="example" class="table table-bordered table-hover">
<thead>
<tr>
					<th>S ID</th>
					<th>User Type</th>
					<th>Status</th>
					<th>Actions</th>
</tr>
</thead>
<tbody>
 @foreach($userrole as $key=>$userroles)
                      <tr id="arrayorder_<?php echo $userroles->id?>">
                        <td>{{ $key + 1 }}</td>
                        <td>{{ $userroles->user_types_name }}</td>
                        @if($userroles->status == 1)
                            <td>Active</td>
                        @else
                            <td>Inactive</td>
                        @endif     
						 <td>
                           <div class="btn-group dropdown">
                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#permissions{{ $userroles->id }}"> Edit Permission</button>
                        </div>
						 <div class="modal fade" id="permissions{{ $userroles->id }}">
                              <div class="modal-dialog">
                                 <div class="modal-content">
                                    <div class="modal-header">
                                       <h4 class="modal-title">Edit Permission</h4>
                                       <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                       <span aria-hidden="true">&times;</span>
                                       </button>
                                    </div>
                                    <form action="{{url('/edit_user_type')}}" method="post">
                                       {{ csrf_field() }}
                                       <div class="modal-body">
                                          <input value="{{ $userroles->id }}" type="hidden" name="row_id"/>
                                          <input value="{{ $userroles->user_types_name }}" type="text" class="form-control mb-3" name="user_types_name" placeholder=""/>

                                          <label class="col-sm-2">1</label>
                                          <label class="col-sm-8">Dashboard</label>
                                          @if($userroles->dashboard == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="dashboard" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="dashboard"></label>
                                          @endif
                                          <label class="col-sm-2">2</label>
                                          <label class="col-sm-8">Roles</label>
                                          @if($userroles->usertype == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="usertype"  checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="usertype"></label>
                                          @endif
                                          <label class="col-sm-2">3</label>
                                          <label class="col-sm-8">Add Role</label>
                                          @if($userroles->addusertype == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="addusertype" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="addusertype"></label>
                                          @endif
                                          <label class="col-sm-2">4</label>
                                          <label class="col-sm-8">Edit Role</label>
                                          @if($userroles->editusertype == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="editusertype" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="editusertype"></label>
                                          @endif
                                          <label class="col-sm-2">5</label>
                                          <label class="col-sm-8">Delete Role</label>
                                          @if($userroles->deleteusertype == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteusertype" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteusertype"></label>
                                          @endif
                                          <label class="col-sm-2">6</label>
                                          <label class="col-sm-8">Users</label>
                                          @if($userroles->users == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="users" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="users"></label>
                                          @endif
                                          <label class="col-sm-2">7</label>
                                          <label class="col-sm-8">Add User</label>
                                          @if($userroles->adduser == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="adduser" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="adduser"></label>
                                          @endif
                                          <label class="col-sm-2">8</label>
                                          <label class="col-sm-8">Edit User</label>
                                          @if($userroles->edituser == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="edituser" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="edituser"></label>
                                          @endif
                                          <label class="col-sm-2">9</label>
                                          <label class="col-sm-8">Delete User</label>
                                          @if($userroles->deleteuser == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteuser"  checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteuser"></label>
                                          @endif
                                          <label class="col-sm-2">21</label>
                                          <label class="col-sm-8">Billing</label>
                                          @if($userroles->billing == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="billing" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="billing"></label>
                                          @endif
                                       </div>
                                       <div class="modal-footer justify-content-between">
                                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                          <button type="submit" class="btn btn-primary">Submit</button>
                                       </div>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </td>
						</tr>
						@endforeach
              </div>
         </div>
</div>
</div>
</section>
@endsection
<div class="modal fade" id="userrole">
<form action="{{url('/roles')}}" method="post">
{{ csrf_field() }}
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<h4 class="modal-title">Add User Role</h4>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
            <div class="modal-body">
                  <input type="text" class="form-control mb-3" name="user_types_name" placeholder="User Role Name"/>
			
			 <label class="col-sm-2">1</label>
                                          <label class="col-sm-8">Dashboard</label>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="dashboard"></label>
                                        
                                          <label class="col-sm-2">2</label>
                                          <label class="col-sm-8">User Type</label>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="usertype"></label>

                                          <label class="col-sm-2">3</label>
                                          <label class="col-sm-8">Add User Type</label>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="addusertype"></label>

                                          <label class="col-sm-2">4</label>
                                          <label class="col-sm-8">Edit User Type</label>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="editusertype"></label>

                                          <label class="col-sm-2">5</label>
                                          <label class="col-sm-8">Delete User Type</label>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteusertype"></label>

                                          <label class="col-sm-2">6</label>
                                          <label class="col-sm-8">Users</label>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="users"></label>

                                          <label class="col-sm-2">7</label>
                                          <label class="col-sm-8">Add User</label>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="adduser"></label>

                                          <label class="col-sm-2">8</label>
                                          <label class="col-sm-8">Edit User</label>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="edituser"></label>

                                          <label class="col-sm-2">9</label>
                                          <label class="col-sm-8">Delete User</label>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteuser"></label>

                                          <label class="col-sm-2">21</label>
                                          <label class="col-sm-8">Billing</label>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="billing"></label>

										  
		</div>
		<div class="modal-footer justify-content-between">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
</div>
</div>
</form>
</div>
</section>

<script src="{!! asset('plugins/jquery/jquery.min.js') !!}"></script>
<script src="{!! asset('dist/js/pages/dashboard2.js') !!}"></script>
<script>
$(".scroll-modal-top").click(function() {
    $("#modalId").scrollTop(0);
});

$(".scroll-page-top").click(function() {
    $("html,body").scrollTop($("#modalId").offset().top);
});
</script>
<script>
function myFunction() {
  const input = document.getElementById("myInput");
  const inputStr = input.value.toUpperCase();
  document.querySelectorAll('#example2 tr:not(.header)').forEach((tr) => {
    const anyMatch = [...tr.children]
      .some(td => td.textContent.toUpperCase().includes(inputStr));
    if (anyMatch) tr.style.removeProperty('display');
    else tr.style.display = 'none';
  });
}
</script>
