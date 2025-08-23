
<?php $__env->startSection('content'); ?>
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
               <a class="nav-link active" id="custom-tabs-four-home-tab" data-toggle="pill" href="#custom-tabs-four-home" usertype="tab" aria-controls="custom-tabs-four-home" aria-selected="true"><?php echo e($text); ?></a>
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
                        <?php if(Auth::user()->user_type_id == 1): ?>
                        <th>Shop Name</th>
                        <?php else: ?>
                        <th>User Type</th>
                        <?php endif; ?>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Phone</th>
                        <th>Status</th>
                        <th>Action</th>
                     </tr>
                  </thead>
                  <tbody>
                     <?php $__currentLoopData = $manageusers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$manageuserslist): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                     <tr>
                        <td><?php echo e($key + 1); ?></td>
                        <?php if(Auth::user()->user_type_id == 1): ?>
                        <td><?php echo e($manageuserslist->shop_name); ?></td>
                        <?php else: ?>
                        <td><?php echo e($manageuserslist->user_types_name); ?></td>
                        <?php endif; ?>	
                        <td><?php echo e($manageuserslist->full_name); ?></a></td>
                        <td><?php echo e($manageuserslist->email); ?></td>
                        <td><?php echo e($manageuserslist->cpassword); ?></td>
                        <td><?php echo e($manageuserslist->mobile_number); ?></td>
                        <?php if($manageuserslist->userstatus == 1): ?>
                        <td>Active</td>
                        <?php else: ?>
                        <td>Inactive</td>
                        <?php endif; ?>
                        <td>
                           <a href="" data-toggle="modal" class="fa fa-edit" data-target="#edit<?php echo e($manageuserslist->userID); ?>"> Editt</a>
                           <a href="" data-toggle="modal" class="fa fa-edit" data-target="#permissions<?php echo e($manageuserslist->userID); ?>"> Permission</a>
                           <div class="modal fade" id="edit<?php echo e($manageuserslist->userID); ?>">
                              <form action="<?php echo e(url('/edit_user')); ?>" method="post">
                                 <?php echo e(csrf_field()); ?>

                                 <div class="modal-dialog">
                                    <div class="modal-content">
                                       <div class="modal-header">
                                          <?php if(Auth::user()->user_type_id == 1): ?>
                                          <h4 class="modal-title">Edit Shop</h4>
                                          <?php endif; ?>
                                          <?php if(Auth::user()->user_type_id == 2): ?>
                                          <h4 class="modal-title">Edit User</h4>
                                          <?php endif; ?>
                                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                          <span aria-hidden="true">&times;</span>
                                          </button>
                                       </div>
                                       <div class="modal-body">
                                          <div class="row">
                                             <div class="col-md-12"> 
                                                <input <?php if(Auth::user()->user_type_id == 2): ?> readonly <?php endif; ?> value="<?php echo e($manageuserslist->shop_name); ?>" type="text" class="form-control mb-3" name="shop_name" maxlength="50" placeholder="Enter Shop Name"/>
                                             </div>
                                          </div>
                                          <div class="row">
                                             <div class="col-md-6">
                                                <input type="hidden" class="form-control" name="id" value="<?php echo e($manageuserslist->userID); ?>"/>
                                                <input value="<?php echo e($manageuserslist->first_name); ?>" type="text" class="form-control mb-3" name="first_name" placeholder="Enter First Name"/>
                                                <input readonly value="<?php echo e($manageuserslist->email); ?>"type="email" class="form-control mb-3" name="email" placeholder="Enter Email"/>
                                                <div class="form-group">
                                                   <select name="gender" class="form-control">
                                                      <option value="Mail" <?php if($manageuserslist->gender == 1){ echo "selected"; }?>>Mail</option>
                                                      <option value="Femail" <?php if($manageuserslist->gender == 0){ echo "selected"; }?>>Femail</option>
                                                   </select>
                                                </div>
                                                <div class="form-group">
                                                   <select name="user_type_id" class="form-control">
                                                      <?php $__currentLoopData = $userrole; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$userusertypes): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                      <option value="<?php echo e($userusertypes->id); ?>" <?php if($userusertypes->id == $manageuserslist->user_type_id){ echo "selected"; }?>><?php echo e($userusertypes->user_types_name); ?></option>
                                                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                   </select>
                                                </div>
                                             </div>
                                             <div class="col-md-6">
                                                <input value="<?php echo e($manageuserslist->last_name); ?>" type="text" class="form-control mb-3" name="last_name" placeholder="Enter Last Name"/>
                                                <input value="<?php echo e($manageuserslist->mobile_number); ?>" type="text" class="form-control mb-3" name="mobile_number" placeholder="Enter Mobile Number"/>
                                                <div class="form-group">
                                                   <select name="status" class="form-control">
                                                      <option value="1" <?php if($manageuserslist->userstatus == 1){ echo "selected"; }?>>Active</option>
                                                      <option value="0" <?php if($manageuserslist->userstatus == 0){ echo "selected"; }?>>Inactive</option>
                                                   </select>
                                                </div>
                                                <textarea name='address' class="form-control" rows="3" placeholder="Enter Address..." ><?php echo e($manageuserslist->address); ?></textarea>
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
                           <div class="modal fade" id="permissions<?php echo e($manageuserslist->userID); ?>">
                              <div class="modal-dialog">
                                 <div class="modal-content">
                                    <div class="modal-header">
                                       <?php if(Auth::user()->user_type_id == 1): ?>
                                       <h4 class="modal-title">Edit Shop</h4>
                                       <?php endif; ?>
                                       <?php if(Auth::user()->user_type_id == 2): ?>
                                       <h4 class="modal-title">Edit User</h4>
                                       <?php endif; ?>
                                       <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                       <span aria-hidden="true">&times;</span>
                                       </button>
                                    </div>
                                    <form action="<?php echo e(url('/edit_user_permissions')); ?>" method="post">
                                       <?php echo e(csrf_field()); ?>

                                          <input value="<?php echo e($manageuserslist->userID); ?>" type="hidden" name="user_id"/>
                                       <div class="modal-body">
                                           <label class="col-sm-2">1</label>
                                          <label class="col-sm-8">Dashboard</label>
                                          <?php if($manageuserslist->dashboard == 1): ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="dashboard" checked></label>
                                          <?php else: ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="dashboard"></label>
                                          <?php endif; ?>
                                          <label class="col-sm-2">2</label>
                                          <label class="col-sm-8">Roles</label>
                                          <?php if($manageuserslist->usertype == 1): ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="usertype"  checked></label>
                                          <?php else: ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="usertype"></label>
                                          <?php endif; ?>
                                          <label class="col-sm-2">3</label>
                                          <label class="col-sm-8">Add Role</label>
                                          <?php if($manageuserslist->addusertype == 1): ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="addusertype" checked></label>
                                          <?php else: ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="addusertype"></label>
                                          <?php endif; ?>
                                          <label class="col-sm-2">4</label>
                                          <label class="col-sm-8">Edit Role</label>
                                          <?php if($manageuserslist->editusertype == 1): ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="editusertype" checked></label>
                                          <?php else: ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="editusertype"></label>
                                          <?php endif; ?>
                                          <label class="col-sm-2">5</label>
                                          <label class="col-sm-8">Delete Role</label>
                                          <?php if($manageuserslist->deleteusertype == 1): ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteusertype" checked></label>
                                          <?php else: ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteusertype"></label>
                                          <?php endif; ?>
                                          <label class="col-sm-2">6</label>
                                          <label class="col-sm-8">Users</label>
                                          <?php if($manageuserslist->users == 1): ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="users" checked></label>
                                          <?php else: ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="users"></label>
                                          <?php endif; ?>
                                          <label class="col-sm-2">7</label>
                                          <label class="col-sm-8">Add User</label>
                                          <?php if($manageuserslist->adduser == 1): ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="adduser" checked></label>
                                          <?php else: ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="adduser"></label>
                                          <?php endif; ?>
                                          <label class="col-sm-2">8</label>
                                          <label class="col-sm-8">Edit User</label>
                                          <?php if($manageuserslist->edituser == 1): ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="edituser" checked></label>
                                          <?php else: ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="edituser"></label>
                                          <?php endif; ?>
                                          <label class="col-sm-2">9</label>
                                          <label class="col-sm-8">Delete User</label>
                                          <?php if($manageuserslist->deleteuser == 1): ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteuser"  checked></label>
                                          <?php else: ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="deleteuser"></label>
                                          <?php endif; ?>
                                          <label class="col-sm-2">21</label>
                                          <label class="col-sm-8">Billing</label>
                                          <?php if($manageuserslist->billing == 1): ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="billing" checked></label>
                                          <?php else: ?>
                                          <label class="col-sm-1"><input value="1" type="checkbox" name="billing"></label>
                                          <?php endif; ?>
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
                     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
      <div class="modal fade" id="adduser">
         <form action="<?php echo e(url('/add_user')); ?>" method="post">
            <?php echo e(csrf_field()); ?>

            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     <?php if(Auth::user()->user_type_id == 1): ?>
                     <h4 class="modal-title">Add Shop</h4>
                     <?php endif; ?>
                     <?php if(Auth::user()->user_type_id == 2): ?>
                     <h4 class="modal-title">Add User</h4>
                     <?php endif; ?>
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                     </button>
                  </div>
                  <div class="modal-body">
                     <div class="row">
                        <div class="col-md-12"> 
                           <input <?php if(Auth::user()->user_type_id == 2): ?> value="<?php echo e($shop_name); ?>" readonly <?php endif; ?> type="text" class="form-control mb-3" name="shop_name" maxlength="50" placeholder="Enter Shop Name"/>
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
                              <?php $__currentLoopData = $userrole; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$userusertype): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                              <option value="<?php echo e($userusertype->id); ?>"><?php echo e($userusertype->user_types_name); ?></option>
                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
<?php $__env->stopSection(); ?>
<?php echo $__env->make('common.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vsknew.com\resources\views/users/index.blade.php ENDPATH**/ ?>