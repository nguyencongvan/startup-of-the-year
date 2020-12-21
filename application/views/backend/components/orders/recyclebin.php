<div class="content-wrapper">
	<section class="content-header">
		<h1><i class="glyphicon glyphicon-list-alt"></i> Thùng rác đơn hàng</h1>
		<div class="breadcrumb">
			<a class="btn btn-primary btn-sm" href="admin/orders" role="button">
				<span class="glyphicon glyphicon-remove do_nos"></span> Thoát
			</a>
		</div>
	</section>
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
								<table class="table table-hover table-bordered" style="font-size: 0.9em;">
									<thead>
										<tr>
											<!-- <th class='text-center' style='width:10px;'><input name='checkAll' id='checkAll' type='checkbox'/></th> -->
											<!-- <th class="text-center" style="width:20px">ID</th> -->
											<th class="text-center" style="width:20px">Code</th>
											<th>Khách hàng</th>
											<th>Điện thoại</th>
											<th>Tổng tiền</th>
											<th>Ngày tạo hóa đơn</th>
											<!-- <th>Chi tiết</th> -->
											<th class="text-center" style="width:90px">Khôi phục</th>
											<th class="text-center" style="width:50px">Xóa</th>
										</tr>
									</thead>
									<tbody>
									<?php foreach ($list as $val):
										$name = $this->Mcustomer->customer_detail($val['customerid']);?>
										<tr>
											<td class="text-center"><?php echo $val['orderCode'] ?></td>
											<td><?php echo $name['fullname']; ?></td>
											<td><?php echo $name['phone']; ?></td>
											<td><?php echo number_format($val['money']); ?>₫</td>
											<td><?php echo $val['orderdate']; ?></td>
											<!-- <td class="text-center">
												<a href="<?php echo base_url() ?>admin/orders/status/<?php echo $val['id'] ?>">
													<?php if($val['status']==1):?>
														<a class="btn btn-success btn-xs" href="<?php echo base_url() ?>admin/orders/trash/<?php echo $val['id'] ?>" role = "button">
															<span class="glyphicon glyphicon-ok"></span>Đã thanh toán
														</a>
													<?php else: ?>
														<a class="btn btn-danger btn-xs" href="<?php echo base_url() ?>admin/orders/trash/<?php echo $val['id'] ?>" role = "button">
															<span class="glyphicon glyphicon-remove"></span>Chưa thanh toán
														</a>
													<?php endif; ?>
												</a>
											</td>	 -->
											<!-- <td class="text-center">
												<a class="btn btn-info btn-xs" href="<?php echo base_url() ?>admin/orders/view/<?php echo $val['id'] ?>" role = "button">
													<span class="glyphicon glyphicon-eye-open"></span>Xem
												</a>
											</td> -->
											<td class="text-center">
												<a class="btn btn-success btn-xs" href="admin/orders/restore/<?php echo $val['id'] ?>" role = "button">
													<span class="glyphicon glyphicon-edit"></span>Khôi phục
												</a>
											</td>
											<?php  
												$cpnDel='';
												if($user['role']==1){
													$cpnDel.='
														<td class="text-center">
															<a class="btn btn-danger btn-xs" href="admin/orders/delete/'.$val['id'].'" role = "button">
																<span class="glyphicon glyphicon-trash"></span>Xóa VV
															</a>
														</td>
													';

												}else{
													$cpnDel.='
														<td class="text-center">
															<p class="fa fa-lock" style="color:red"> Không đủ quyền</p>
														</td>';
												}
												echo $cpnDel;
											?>
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
</div>