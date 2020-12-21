<div class="content-wrapper">
	<section class="content-header">
		<h1><i class="glyphicon glyphicon-cd"></i> Danh sách tài khoản</h1>
		<div class="breadcrumb">
			<?php  
				$cpnAdd='';
				if($user['role']==1){
					$cpnAdd.="
						<a class='btn btn-primary btn-sm' href='".base_url()."admin/useradmin/insert' role='button'>
							<span class='fa fa-user-plus'></span> Thêm mới
						</a>";
				}
				echo $cpnAdd;
			?>
			<a class="btn btn-primary btn-sm" href="admin/useradmin/recyclebin" role="button">
				<span class="glyphicon glyphicon-trash"></span> Thùng rác (<?php $total=$this->Muser->user_trash_count(); echo $total; ?>)
			</a>
		</div>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box" id="view">
					<div class="box-header with-border">
						<!-- Search Limit -->
						<section class="content-search">
							<div class="form-inline">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1">Tìm kiếm</span>
									<input type="text" name="search" onkeypress="FEnter(event);" id="search" class="form-control">
									<span class="input-group-addon"><i onclick="FChange();" class="glyphicon glyphicon-search"></i></span>
								</div>
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1">Hiển thị</span>
									<select name="limit" id="limit" onchange="FChange();" class="form-control">
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
										<option value="100">100</option>
										<option value="all">Tất cả</option>
									</select>
								</div>
							</div>
						</section>
						<!--./Search Limit -->
						<!-- <div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
						</div> -->
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<?php  if($this->session->flashdata('success')):?>
	                        <div class="row">
	                            <div class="alert alert-success">
	                                <?php echo $this->session->flashdata('success'); ?>
	                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
	                            </div>
	                        </div>
	                    <?php  endif;?>
	                    <?php  if($this->session->flashdata('error')):?>
	                        <div class="row">
	                            <div class="alert alert-error">
	                                <?php echo $this->session->flashdata('error'); ?>
	                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
	                            </div>
	                        </div>
	                    <?php  endif;?>
						<div class="row" style='padding:0px; margin:0px;'>
							<!--ND-->
							<div class="table-responsive">
								<table class="table table-hover table-bordered">
									<thead>
										<tr>
											<th class='text-center' style='width:10px;'><input name='checkAll' id='checkAll' type='checkbox'/></th>
											<th class="text-center" style="width:20px">ID</th>
											<th>Họ và tên</th>
											<th>Email</th>
											<th>Phone</th>
											<th class="text-center" style="width:90px">Trạng thái</th>
											<th class="text-center" style="width:50px">Sửa</th>
											<th class="text-center" style="width:50px">Xóa</th>
										</tr>
									</thead>
									<tbody>
									<?php foreach ($list as $val):?>
										<tr>
											<td class="text-center" style="width:20px"><input name="checkboxid[]" type="checkbox" value="$id"></td>
											<td class="text-center"><?php echo $val['id'] ?></td>
											<td>
												<p><?php echo $val['fullname'] ?></p>	
											</td>
											<td><?php echo $val['email'] ?></td>
											<td><?php echo $val['phone'] ?></td>
											<td class="text-center">
												<a href="<?php echo base_url() ?>admin/useradmin/status/<?php echo $val['id'] ?>">
													<?php if($val['status']==1):?>
														<span class="glyphicon glyphicon-ok-circle mauxanh18"></span>
													<?php else: ?>
														<span class="glyphicon glyphicon-remove-circle maudo"></span>
													<?php endif; ?>
												</a>
											</td>
											<?php  
												$cpnAll='';
												if($user['role']==1){
													$cpnAll.='
														<td class="text-center">
															<a class="btn btn-success btn-xs" href='.base_url().'admin/useradmin/update/'.$val['id'].' role = "button">
																<span class="glyphicon glyphicon-edit"></span> Sửa
															</a>
														</td>
														<td class="text-center">
															<a class="btn btn-danger btn-xs" href="admin/useradmin/trash/'.$val['id'].'" role = "button">
																<span class="glyphicon glyphicon-trash"></span> Xóa
															</a>
														</td>
													';

												}else{
													$cpnAll.='
														<td class="text-center" colspan="2">
															<p class="fa fa-lock" style="color:red"> Không thể thao tác</p>
														</td>';
												}
												echo $cpnAll;
											?>
											<!-- <td class="text-center">
												<a class="btn btn-danger btn-xs" href="<?php echo base_url() ?>admin/useradmin/trash/<?php echo $val['id'] ?>" role = "button">
													<span class="glyphicon glyphicon-trash"></span>Xóa
												</a>
											</td> -->
										</tr>
									<?php endforeach; ?>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="col-md-12 text-center">
									<ul class="pagination">
										<?php echo $strphantrang ?>
									</ul>
								</div>
							</div>
							<!-- /.ND -->
						</div>
					</div><!-- ./box-body -->
				</div><!-- /.box -->
		</div>
		<!-- /.col -->
	  </div>
	  <!-- /.row -->
	</section>
<!-- /.content -->
</div><!-- /.content-wrapper -->