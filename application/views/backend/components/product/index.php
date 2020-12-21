<div class="content-wrapper">
	<section class="content-header">
		<h1><i class="glyphicon glyphicon-cd"></i> Danh sách sản phẩm</h1>
		<div class="breadcrumb">
			<a class="btn btn-primary btn-sm" href="<?php echo base_url()?>admin/product/insert" role="button">
				<span class="glyphicon glyphicon-plus"></span> Thêm mới
			</a>
			<a class="btn btn-primary btn-sm" href="<?php echo base_url()?>admin/product/recyclebin" role="button">
				<span class="glyphicon glyphicon-trash"></span> Thùng rác(<?php $total=$this->Mproduct->product_trash_count(); echo $total; ?>)
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
											<th class='text	-center' style='width:10px;'><input name='checkAll' id='checkAll' type='checkbox'/></th>
											<th class="text-center" style="width:20px">ID</th>
											<th>Hình</th>
											<th>Tên sản phẩm</th>
											<th>Loại sản phẩm</th>
											<th class="text-center" style="width:90px">Trạng thái</th>
											<th class="text-center" style="width:90px">Nhập hàng</th>
											<!-- <th class="text-center" style="width:90px">Bình luận</th> -->
											<th class="text-center" style="width:50px">Sửa</th>
											<th class="text-center" style="width:50px">Xóa</th>
										</tr>
									</thead>
									<tbody>
									<?php foreach ($list as $val):?>
										<tr>
											<td class="text-center" style="width:20px"><input name="checkboxid[]" type="checkbox" value="$id"></td>
											<td class="text-center"><?php echo $val['id'] ?></td>
											<td style="width:50px">
												<img src="public/images/products/<?php echo $val['avatar'] ?>" alt="<?php echo $val['name'] ?>" class="img-responsive">
											</td>
											<td><a href="<?php echo base_url() ?>admin/product/update/<?php echo $val['id'] ?>"><?php echo $val['name'] ?>(<?php echo $val['number'] ?>)</a></td>
											<?php 
												$namecat = $this->Mcategory->category_name($val['catid']);
											?>
											<td><?php echo $namecat ?></td>
											<td class="text-center">
												<a href="<?php echo base_url() ?>admin/product/status/<?php echo $val['id'] ?>">
													<?php if($val['status']==1):?>
														<span class="glyphicon glyphicon-ok-circle mauxanh18"></span>
													<?php else: ?>
														<span class="glyphicon glyphicon-remove-circle maudo"></span>
													<?php endif; ?>
												</a>
											</td>
											<td class="text-center">
												<a class="btn btn-success btn-xs" href="<?php echo base_url() ?>admin/product/import/<?php echo $val['id']?>" role = "button">
													<span class="fa fa-cloud-upload"></span> Nhập hàng
												</a>
											</td>
											<!-- <td class="text-center">
												<a class="btn btn-success btn-xs" href="<?php echo base_url() ?>admin/product/comments/<?php echo $val['id']?>" role = "button">
													<span class="fa fa-comment"></span> Bình luận
												</a>
											</td> -->
											<td class="text-center">
												<a class="btn btn-success btn-xs" href="<?php echo base_url() ?>admin/product/update/<?php echo $val['id']?>" role = "button">
													<span class="glyphicon glyphicon-edit"></span> Sửa
												</a>
											</td>
											<td class="text-center">
												<a class="btn btn-danger btn-xs" href="<?php echo base_url() ?>admin/product/trash/<?php echo $val['id'] ?>" role = "button">
													<span class="glyphicon glyphicon-trash"></span> Xóa
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