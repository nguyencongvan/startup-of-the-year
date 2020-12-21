<div class="content-wrapper">
	<section class="content-header">
		<h1><i class="glyphicon glyphicon-text-background"></i> Danh sách bài viết</h1>
		<div class="breadcrumb">
			
			<a class="btn btn-primary btn-sm" href="<?php echo base_url()?>admin/contact/recyclebin" role="button">
				<span class="glyphicon glyphicon-trash"></span> Thùng rác(<?php $total=$this->Mcontact->contact_trash_count(); echo $total; ?>)
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
						<!-- <section class="content-search">
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
						</section> -->
						<!-- ./Search Limit
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
						</div> -->
					</div>
					<!-- /.box-header -->
					<?php  if($this->session->userdata('message')):?>
						<div class="alert alert-success">
							<?php echo $this->session->userdata('message'); ?>
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
						</div>
					<?php endif; ?>
					<div class="box-body">
						<?php  if($this->session->flashdata('success')):?>
	                        <div class="row">
	                            <div class="alert alert-success">
	                                <?php echo $this->session->flashdata('success'); ?>
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
											<!-- <th class='text	-center' style='width:10px;'><input name='checkAll' id='checkAll' type='checkbox'/></th> -->
											<th class="text-center" style="width:20px">ID</th>
											<th>Tên</th>
											<th>SDT</th>
											<th>Địa chỉ mail</th>
											<th>Tiêu đề</th>											
											<th class="text-center" style="width:90px">Trạng thái</th>
											
											<th class="text-center" style="width:50px">Xóa</th>
										</tr>
									</thead>
									<tbody>
									<?php foreach ($list as $val):?>
										<tr style="background:<?php $val['view']==0?'red':'blue'; ?>">
											<!-- <td class="text-center" style="width:20px"><input name="checkboxid[]" type="checkbox" value="$id"></td> -->
											<td class="text-center"><?php echo $val['id'] ?></td>
											<td><a>
													<?php echo $val['fullname'] ?>
												</a></td>
											<td><a href="<?php echo base_url() ?>admin/contact/status/<?php echo $val['id'] ?>"><a >
													<?php echo $val['phone'] ?>
												</a></a></td>
											<td><a href="<?php echo base_url() ?>admin/contact/update/<?php echo $val['id'] ?>"><a >
													<?php echo $val['email'] ?>
												</a></a></td>

											
											<td class="text-center">
												<a href="<?php echo base_url() ?>admin/contact/detail/<?php echo $val['id'] ?>">
													<?php if($val['status']==0):?>
														<span class="<?php echo base_url() ?>admin/contact/status/<?php echo $val['id'] ?> "><?php echo $val['title'] ?></span>
													<?php else: ?>
			 											<span class=" "><?php echo $val['title'] ?></span>		
													<?php endif; ?>
												</a>
											</td>
												

										

											<td class="text-center">
												<a href="<?php echo base_url() ?>admin/contact/status/<?php echo $val['id'] ?>">
													<?php if($val['status']==0):?>
														<span class="fa fa-eye-slash maudo"  data-toggle="tooltip" data-placement="top" title="Chưa xem"></span>
														
													<?php else: ?>
			 											<span class="fa fa-eye mauxanh18"  data-toggle="tooltip" data-placement="top" title="Đã xem"></span>		
													<?php endif; ?>
												</a>
											</td>
											
											<td class="text-center">
												<a class="btn btn-danger btn-xs" href="<?php echo base_url() ?>admin/contact/trash/<?php echo $val['id'] ?>" role = "button">
													<span class="glyphicon glyphicon-trash"></span>Xóa
												</a>
											</td>
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