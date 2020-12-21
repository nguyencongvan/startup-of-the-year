<?php echo form_open_multipart('admin/useradmin/insert'); ?>
<div class="content-wrapper">
    <form action="<?php echo base_url() ?>admin/useradmin/insert.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
        <section class="content-header">
            <h1><i class="fa fa-user-plus"></i> Thêm thành viên</h1>
            <div class="breadcrumb">
                <button type = "submit" class="btn btn-primary btn-sm">
                    <span class="glyphicon glyphicon-floppy-save"></span>
                    Lưu[Thêm]
                </button>
                <a class="btn btn-primary btn-sm" href="admin/useradmin" role="button">
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
                            <div class="col-md-9" style="padding-left: 0px">
                            <?php //echo validation_errors(); ?>
                                <div class="form-group">
                                    <label>Họ và tên <span class = "maudo">(*)</span></label>
                                    <input type="text" class="form-control" name="fullname" style="width:100%">
                                    <div class="error" id="password_error"><?php echo form_error('fullname')?></div>
                                </div>
                                <div class="form-group">
                                    <label>Điện thoại <span class = "maudo">(*)</span></label>
                                    <input type="text" class="form-control" name="phone" style="width:100%">
                                    <div class="error" id="password_error"><?php echo form_error('phone')?></div>
                                </div>
                                <div class="form-group">
                                    <label>Email <span class = "maudo">(*)</span></label>
                                    <input type="email" class="form-control" name="email" style="width:100%">
                                    <div class="error" id="password_error"><?php echo form_error('email')?></div>
                                </div>
                                <div class="form-group">
                                    <label>Tên đăng nhập <span class = "maudo">(*)</span></label>
                                    <input type="text" class="form-control" name="username" style="width:100%">
                                    <div class="error" id="password_error"><?php echo form_error('username')?></div>
                                </div>
                                <div class="form-group">
                                    <label>Mật khẩu <span class = "maudo">(*)</span></label>
                                    <input type="password" class="form-control" name="password" style="width:100%">
                                    <div class="error" id="password_error"><?php echo form_error('password')?></div>
                                </div>
                            </div>
                            <div class="col-md-3" style="padding: 0px">
                                <div class="form-group">
                                    <label>Quyền<span class = "maudo">(*)</span></label>
                                    <select name="role" class="form-control">
                                        <option value = "">[--Chọn danh mục--]</option>
                                            <?php  
                                                $list=$this->Mgroupadmin->groupadmin_list();
                                                $option_parentid="";
                                                foreach ($list as $r) {
                                                    $option_parentid.="<option value='".$r['id']."'>".$r['name']."</option>";
                                                }
                                                echo $option_parentid;
                                            ?>
                                    </select>
                                    <div class="error" id="password_error"><?php echo form_error('catid')?></div>
                                </div>
                                <div class="form-group">
                                    <label>Ảnh đại diện</label>
                                    <input type="file"  id="image_list" name="img" required style="width: 100%">
                                </div>
                                <div class="form-group">
                                    <label>Trạng thái</label>
                                    <select name="status" class="form-control">
                                        <option value = "1">Kích hoạt</option>
                                        <option value = "0">Chưa kích hoạt</option>
                                    </select>
                                    <div class="error" id="password_error"><?php echo form_error('catid')?></div>
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