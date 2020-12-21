<?php echo form_open_multipart('admin/product/import/'.$row['id']); ?>
<?php  
	$list=$this->Mcategory->category_list();
	$option_parentid="";
	foreach ($list as $r) {
		if($r['id']==$row['catid']){
			$option_parentid.="<option selected value='".$r['id']."'>".$r['name']."</option>";
		}else{
			$option_parentid.="<option value='".$r['id']."'>".$r['name']."</option>";
		}
	}
?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/product/import.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-text-background"></i> Nhập hàng</h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu[Cập nhật]
				</button>
				<a class="btn btn-primary btn-sm" href="admin/product" role="button">
					<span class="glyphicon glyphicon-remove do_nos"></span> Thoát
				</a>
			</div>
		</section>
		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="box" id="view">
						<div class="box-body">
							<?php //echo validation_errors(); ?>
							<div class="col-md-9">
								<div class="form-group">
									<div class="form-group">
									<label>Tên sản phẩm </label>
									<input type="text" class="form-control" disabled name="name" style="width:100%" placeholder="Tên sản phẩm" value="<?php echo $row['name'] ?>" >
									<div class="error" id="password_error"><?php echo form_error('name')?></div>
								</div>
								<div class="form-group">
									<label>Loại sản phẩm</label>
									<select name="catid" class="form-control" style="width:300px" disabled>
										<option value = "">[--Chọn loại sản phẩm--]</option>
										<option value = "0">No Parent</option>
											<?php  
												echo $option_parentid;
											?>
									</select>
									<div class="error" id="password_error"><?php echo form_error('catid')?></div>
								</div>
								<div class="form-group">
									<div class="form-group">
									<label>Số lượng <span class = "maudo">(*)</span></label>
									<input type="number" class="form-control" name="number" style="width:100%" placeholder="Số lượng" min="0" max="10000">
									<div class="error" id="password_error"><?php echo form_error('number')?></div>
								</div>
							</div>
						</div>
					</div><!-- /.box -->
				</div>
			<!-- /.col -->
		  </div>
		  <!-- /.row -->
		</section>
	</form>
<!-- /.content -->
</div><!-- /.content-wrapper -->