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
<button type="button" class="btn btn-block btn-secondary" data-toggle="modal" data-target="#userrole"><i class="fa fa-plus"></i> Add</button>
</td>
					</div>
                </ul>
              </div>
              <div class="card-body">
                <div class="tab-content" id="custom-tabs-four-tabContent">
                  <div class="tab-pane fade show active" id="custom-tabs-four-home" role="tabpanel" aria-labelledby="custom-tabs-four-home-tab">
                     <table id="example1" class="table table-bordered table-hover">
<thead>
<tr>
					<th>UserId</th>
					<th>User Type</th>
					<th>Status</th>
					<th>Actions</th>
</tr>
</thead>
<tbody>
 @foreach($usertype as $key=>$manageuserslist)
                      <tr id="arrayorder_<?php echo $manageuserslist->id?>">
                        <td>{{ $key + 1 }}</td>
                        <td>{{ $manageuserslist->user_types_name }}</td>
                       
                        @if($manageuserslist->status == 1)
                            <td>Active</td>
                        @else
                            <td>Inactive</td>
                        @endif     
						 <td>
                           <div class="btn-group dropdown">
                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#permissions{{ $manageuserslist->user_id }}">Edit</button>
                               
                        </div>
                        </td>
<div class="modal fade" id="permissions{{ $manageuserslist->user_id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
   <form action="{{url('/addroles')}}" method="post">
      {{ csrf_field() }}
	  
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">Edit Permission</h5>
		
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">&times;</span></button>
            </div>
			   <div class="modal-body">
   <input type="hidden" class="form-control" name="user_id" value="{{ $manageuserslist->user_id }}"/>

         <div class="card card-success ">
            <div class="card-body ">	
			   <label class="col-sm-2">1</label>
			   <label class="col-sm-8">Dashboard</label>
			@if($manageuserslist->dashboard == 1)
			   <label class="col-sm-1"><input value="1" type="checkbox" name="dashboard" id="dashboard" checked></label>
            @else
			   <label class="col-sm-1"><input value="1" type="checkbox" name="dashboard" id="dashboard"></label>
            @endif
						
			   <label class="col-sm-2">2</label>
			   <label class="col-sm-8">Roles</label>
			@if($manageuserslist->roles == 1)
			   <label class="col-sm-1"><input value="1" type="checkbox" name="roles" id="roles" checked></label>
            @else
			   <label class="col-sm-1"><input value="1" type="checkbox" name="roles" id="roles"></label>
            @endif
			
			   <label class="col-sm-2">3</label>
			   <label class="col-sm-8">Add Role</label>
			@if($manageuserslist->addrole == 1)
			   <label class="col-sm-1"><input value="1" type="checkbox" name="addrole" id="addrole" checked></label>
            @else
			   <label class="col-sm-1"><input value="1" type="checkbox" name="addrole" id="addrole"></label>
            @endif

			   <label class="col-sm-2">4</label>
			   <label class="col-sm-8">Edit Role</label>
			@if($manageuserslist->editrole == 1)
			   <label class="col-sm-1"><input value="1" type="checkbox" name="editrole" id="editrole" checked></label>
            @else
			   <label class="col-sm-1"><input value="1" type="checkbox" name="editrole" id="editrole"></label>
            @endif

			   <label class="col-sm-2">5</label>
			   <label class="col-sm-8">Delete Role</label>
			@if($manageuserslist->deleterole == 1)
			   <label class="col-sm-1"><input value="1" type="checkbox" name="deleterole" id="deleterole" checked></label>
            @else
			   <label class="col-sm-1"><input value="1" type="checkbox" name="deleterole" id="deleterole"></label>
            @endif

			   <label class="col-sm-2">6</label>
			   <label class="col-sm-8">Users</label>
			@if($manageuserslist->users == 1)
			   <label class="col-sm-1"><input value="1" type="checkbox" name="users" id="users" checked></label>
            @else
			   <label class="col-sm-1"><input value="1" type="checkbox" name="users" id="users"></label>
            @endif

			   <label class="col-sm-2">7</label>
			   <label class="col-sm-8">Add User</label>
			@if($manageuserslist->adduser == 1)
			   <label class="col-sm-1"><input value="1" type="checkbox" name="adduser" id="adduser" checked></label>
            @else
			   <label class="col-sm-1"><input value="1" type="checkbox" name="adduser" id="adduser"></label>
            @endif

			   <label class="col-sm-2">8</label>
			   <label class="col-sm-8">Edit User</label>
			@if($manageuserslist->edituser == 1)
			   <label class="col-sm-1"><input value="1" type="checkbox" name="edituser" id="edituser" checked></label>
            @else
			   <label class="col-sm-1"><input value="1" type="checkbox" name="edituser" id="edituser"></label>
            @endif
			
			   <label class="col-sm-2">9</label>
			   <label class="col-sm-8">Delete User</label>
			@if($manageuserslist->deleteuser == 1)
			   <label class="col-sm-1"><input value="1" type="checkbox" name="deleteuser" id="deleteuser" checked></label>
            @else
			   <label class="col-sm-1"><input value="1" type="checkbox" name="deleteuser" id="deleteuser"></label>
            @endif
			
			
            </div>
         </div>
      </div>
	<div class="modal-footer justify-content-between">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="submit" class="btn btn-primary">Submit</button>
	</div>
      </form>

</div>
						 </tr>
					  @endforeach
                       </tbody>
                   </table>
                  </div>
                </div>
              </div>
         </div>
     </section>
</div>
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
        	    <div class="row">
			    <div class="col-md-6">   
                  <input type="text" class="form-control mb-3" name="user_types_name" placeholder="User Role Name"/>
				</div>	
			</div>
		</div>
		<div class="modal-footer justify-content-between">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
</div>
</div>
</form>
</div>
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
