<?php echo form_open_multipart('admin/configuration/update/'); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/configuration/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-text-background"></i> Hệ Thống</h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu
				</button
			</div>
		</section>
		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="box" id="view">
						<div class="box-body">
							<div class="col-md-9">
							<?php echo validation_errors(); ?>
								<div class="form-group">
									<label> Mail smtp <span class = "maudo">(*)</span></label>
									<input type="mail" class="form-control" name="mail_smtp" style="width:100%" placeholder=" Mail smtp" value="<?php echo $row['mail_smtp'] ?>">
								</div>
								<div class="form-group">
									<label>Mailport</label>
									<input type="text" class="form-control" name="mail_port" style="width:100%" placeholder=" Mailport" value="<?php echo $row['mail_port'] ?>">
								</div>
								<div class="form-group">
									<label>Mail info<span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="mail_info" style="width:100%" placeholder=" mail info" value="<?php echo $row['mail_info'] ?>">
      								
								</div>
								<div class="form-group">
									<label>Mailnoreply</label>
									<input type="text" class="form-control" name="mail_noreply" style="width:100%" placeholder=" mailnoreply" value="<?php echo $row['mail_noreply'] ?>">
								</div>

		                        <div class="form-group">
		                        	<label>Password</label>
		                           
		                           <input type="text" name="mail_password" class="form-control" placeholder="Mật khẩu" value="<?php echo $row['mail_password'] ?>">
		                        </div>
		                        <div class="form-group">
									<label> PriceShip <span class = "maudo">(*)</span></label>
									<input type="number" class="form-control" name="priceShip" style="width:100%" placeholder=" priceShip" value="<?php echo $row['priceShip'] ?>">
									
								</div>
								 <div class="form-group">
									<label> Title <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="title" style="width:100%" placeholder=" title" value="<?php echo $row['title'] ?>">
									
								</div>
								<div class="form-group">
									<label> Description <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="description" style="width:100%" placeholder=" description" value="<?php echo $row['description'] ?>">
									
								</div>
								<div class="form-group">
									<label> Keyword <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="keyword" style="width:100%" placeholder=" keyword" value="<?php echo $row['keyword'] ?>">
									
								</div>
		                       
                        <div class="error" id="password_error"><?php echo form_error('password')?></div>
                    </div>
							</div>
							<div class="col-md-3">
								
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