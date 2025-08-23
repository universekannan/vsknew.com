@extends('common.app')
@section('content')
<?php
   $text="";
   if(Auth::user()->user_type_id == 1)
   $text="Shop List";
   elseif(Auth::user()->user_type_id == 2)
   $text="All Users";
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
                        <th>#ID</th>
                        @if(Auth::user()->user_type_id == 1)
                        <th>Shop Name</th>
                        @else
                        <th>User Type</th>
                        @endif
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Phone</th>
                        <th>Status</th>
                        <th>Action</th>
                     </tr>
                  </thead>
                  <tbody>
                     @foreach($manageusers as $key=>$manageuserslist)
                     <tr>
                        <td>{{ $key + 1 }}</td>
                        @if(Auth::user()->user_type_id == 1)
                        <td>{{ $manageuserslist->shop_name }}</td>
                        @else
                        <td>{{ $manageuserslist->user_types_name }}</td>
                        @endif	
                        <td>{{ $manageuserslist->full_name }}</a></td>
                        <td>{{ $manageuserslist->email }}</td>
                        <td>{{ $manageuserslist->cpassword }}</td>
                        <td>{{ $manageuserslist->mobile_number }}</td>
                        @if($manageuserslist->userstatus == 1)
                        <td>Active</td>
                        @else
                        <td>Inactive</td>
                        @endif
                        <td>
                           <a href="" data-toggle="modal" class="fa fa-edit" data-target="#edit{{ $manageuserslist->userID }}"> Editt</a>
                           <a href="" data-toggle="modal" class="fa fa-edit" data-target="#permissions{{ $manageuserslist->userID }}"> Permission</a>
                           <div class="modal fade" id="edit{{ $manageuserslist->userID }}">
                              <form action="{{url('/edit_user')}}" method="post">
                                 {{ csrf_field() }}
                                 <div class="modal-dialog">
                                    <div class="modal-content">
                                       <div class="modal-header">
                                          @if(Auth::user()->user_type_id == 1)
                                          <h4 class="modal-title">Edit Shop</h4>
                                          @endif
                                          @if(Auth::user()->user_type_id == 2)
                                          <h4 class="modal-title">Edit User</h4>
                                          @endif
                                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                          <span aria-hidden="true">&times;</span>
                                          </button>
                                       </div>
                                       <div class="modal-body">
                                          <div class="row">
                                             <div class="col-md-12"> 
                                                <input @if(Auth::user()->user_type_id == 2) readonly @endif value="{{ $manageuserslist->shop_name }}" type="text" class="form-control mb-3" name="shop_name" maxlength="50" placeholder="Enter Shop Name"/>
                                             </div>
                                          </div>
                                          <div class="row">
                                             <div class="col-md-6">
                                                <input type="hidden" class="form-control" name="id" value="{{ $manageuserslist->userID }}"/>
                                                <input value="{{ $manageuserslist->first_name }}" type="text" class="form-control mb-3" name="first_name" placeholder="Enter First Name"/>
                                                <input readonly value="{{ $manageuserslist->email }}"type="email" class="form-control mb-3" name="email" placeholder="Enter Email"/>
                                                <div class="form-group">
                                                   <select name="gender" class="form-control">
                                                      <option value="Mail" <?php if($manageuserslist->gender == 1){ echo "selected"; }?>>Mail</option>
                                                      <option value="Femail" <?php if($manageuserslist->gender == 0){ echo "selected"; }?>>Femail</option>
                                                   </select>
                                                </div>
                                                <div class="form-group">
                                                   <select name="user_type_id" class="form-control">
                                                      @foreach($userrole as $key=>$userusertypes)
                                                      <option value="{{ $userusertypes->id }}" <?php if($userusertypes->id == $manageuserslist->user_type_id){ echo "selected"; }?>>{{ $userusertypes->user_types_name }}</option>
                                                      @endforeach
                                                   </select>
                                                </div>
                                             </div>
                                             <div class="col-md-6">
                                                <input value="{{ $manageuserslist->last_name }}" type="text" class="form-control mb-3" name="last_name" placeholder="Enter Last Name"/>
                                                <input value="{{ $manageuserslist->mobile_number }}" type="text" class="form-control mb-3" name="mobile_number" placeholder="Enter Mobile Number"/>
                                                <div class="form-group">
                                                   <select name="status" class="form-control">
                                                      <option value="1" <?php if($manageuserslist->userstatus == 1){ echo "selected"; }?>>Active</option>
                                                      <option value="0" <?php if($manageuserslist->userstatus == 0){ echo "selected"; }?>>Inactive</option>
                                                   </select>
                                                </div>
                                                <textarea name='address' class="form-control" rows="3" placeholder="Enter Address..." >{{ $manageuserslist->address }}</textarea>
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
                           <div class="modal fade" id="permissions{{ $manageuserslist->userID }}">
                              <div class="modal-dialog">
                                 <div class="modal-content">
                                    <div class="modal-header">
                                       @if(Auth::user()->user_type_id == 1)
                                       <h4 class="modal-title">Edit Shop</h4>
                                       @endif
                                       @if(Auth::user()->user_type_id == 2)
                                       <h4 class="modal-title">Edit User</h4>
                                       @endif
                                       <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                       <span aria-hidden="true">&times;</span>
                                       </button>
                                    </div>
                                    <form action="{{url('/edit_user_permissions')}}" method="post">
                                       {{ csrf_field() }}
                                          <input value="{{ $manageuserslist->userID }}" type="hidden" name="user_id"/>
                                       <div class="modal-body">
                                           <label class="col-sm-2">1</label>
                                          <label class="col-sm-8">Dashboard</label>
                                          @if($manageuserslist->dashboard == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="dashboard" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="dashboard"></label>
                                          @endif
                                          <label class="col-sm-2">2</label>
                                          <label class="col-sm-8">Roles</label>
                                          @if($manageuserslist->usertype == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="usertype"  checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="usertype"></label>
                                          @endif
                                          <label class="col-sm-2">3</label>
                                          <label class="col-sm-8">Add Role</label>
                                          @if($manageuserslist->addusertype == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="addusertype" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="addusertype"></label>
                                          @endif
                                          <label class="col-sm-2">4</label>
                                          <label class="col-sm-8">Edit Role</label>
                                          @if($manageuserslist->editusertype == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="editusertype" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="editusertype"></label>
                                          @endif
                                          <label class="col-sm-2">5</label>
                                          <label class="col-sm-8">Delete Role</label>
                                          @if($manageuserslist->deleteusertype == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteusertype" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteusertype"></label>
                                          @endif
                                          <label class="col-sm-2">6</label>
                                          <label class="col-sm-8">Users</label>
                                          @if($manageuserslist->users == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="users" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="users"></label>
                                          @endif
                                          <label class="col-sm-2">7</label>
                                          <label class="col-sm-8">Add User</label>
                                          @if($manageuserslist->adduser == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="adduser" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="adduser"></label>
                                          @endif
                                          <label class="col-sm-2">8</label>
                                          <label class="col-sm-8">Edit User</label>
                                          @if($manageuserslist->edituser == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="edituser" checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="edituser"></label>
                                          @endif
                                          <label class="col-sm-2">9</label>
                                          <label class="col-sm-8">Delete User</label>
                                          @if($manageuserslist->deleteuser == 1)
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteuser"  checked></label>
                                          @else
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteuser"></label>
                                          @endif
                                          <label class="col-sm-2">21</label>
                                          <label class="col-sm-8">Billing</label>
                                          @if($manageuserslist->billing == 1)
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
                  </tbody>
               </table>
            </div>
         </div>
      </div>
      <div class="modal fade" id="adduser">
         <form action="{{url('/add_user')}}" method="post">
            {{ csrf_field() }}
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     @if(Auth::user()->user_type_id == 1)
                     <h4 class="modal-title">Add Shop</h4>
                     @endif
                     @if(Auth::user()->user_type_id == 2)
                     <h4 class="modal-title">Add User</h4>
                     @endif
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                     </button>
                  </div>
                  <div class="modal-body">
                     <div class="row">
                        <div class="col-md-12"> 
                           <input @if(Auth::user()->user_type_id == 2) value="{{ $shop_name }}" readonly @endif type="text" class="form-control mb-3" name="shop_name" maxlength="50" placeholder="Enter Shop Name"/>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-6">
                           <input type="text" class="form-control mb-3" name="first_name" placeholder="Enter First Name"/>
                           <input id="userEmail" type="email" class="form-control mb-3" name="email" placeholder="Enter Email"/>
                           <span id="emailMessage"></span>
                           <input type="password" class="form-control mb-3" name="password" placeholder="Enter Password"/>
                           <select  class="form-control mb-3" name="user_type_id">
                              <option>Select User Type</option>
                              @foreach($userrole as $key=>$userusertype)
                              <option value="{{ $userusertype->id }}">{{ $userusertype->user_types_name }}</option>
                              @endforeach
                           </select>
                           <select class="form-control mb-3" name="gender">
                              <option>Select Gender</option>
                              <option value="Mail">Male</option>
                              <option value="Fmail">Female</option>
                           </select>
                        </div>
                        <div class="col-md-6">   
                           <input type="text" class="form-control mb-3" name="last_name" placeholder="Enter Last Name"/>
                           <input type="text" class="form-control mb-3" name="mobile_number" placeholder="Enter Mobile Number"/>
                           <input type="text" class="form-control mb-3" name="check_password" placeholder="Enter Conform Password"/>
                           <textarea name='address' class="form-control" rows="3" placeholder="Enter Address..." ></textarea>
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
</section>
</div>
@endsection