<?php echo form_open('info-order'); ?>
<?php  
    if(!$this->session->userdata('cart'))
    {
        redirect('gio-hang');
    }else{
      $user=$this->session->userdata('info-customer');
      if($this->session->userdata('session24hStore')){
        $user=$this->session->userdata('session24hStore');
        $check=true;
      }else{
        $check=false;
      }
    }
?>
<section id="checkout-cart">
    <div class="container">
        <div class="col-md-12">
            <div class="wrapper overflow-hidden">
                <div class="checkout-header _block bg-pri hidden-xs">
                    <div class="checkout-header _container">
                        <a href="#" class="checkout-header _logo">
                            <!-- <h1 class="color-fff">24hStore</h1> -->
                        </a>
                        <div class="checkout-header _progress-bar">
                            <ol class="step-breadcrumb _list">
                                <li class="step-breadcrumb _item">
                                    <span class="step-breadcrumb _text">1.Cửa hàng</span>
                                </li>
                                <li class="step-breadcrumb _item -current">
                                    <span class="step-breadcrumb _text">2.Địa chỉ</span>
                                </li>
                                <li class="step-breadcrumb _item">
                                    <span class="step-breadcrumb _text">3.Kết quả</span>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <form action="" enctype="multipart/form-data" method="post" accept-charset="utf-8" name='info-order' novalidate>
                    <div class="checkout-content">
                        <div class="col-xs-12 col-sm-12 col-md-8 col-login-checkout" style="margin-bottom: 20px">
                            <p class="text-center">Địa chỉ giao hàng của quý khách</p>
                            <div class="wrap-info" style="width: 100%; min-height: 1px; overflow: hidden; padding: 10px;">
                                <table class="table tinfo" style="width: 80%;">
                                    <tbody>
                                        <tr>
                                            <td class="width30 text-right td-right-order">Email:</td>
                                            <td>
                                                <input type="text" class="form-control" id="" value="<?php echo $user['email'] ?>" placeholder="Email" disabled>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="width30 text-right td-right-order">Tên:</td>
                                            <td>
                                                <input type="text" class="form-control" id="" placeholder="Họ và tên" name="name" value="<?php echo $user['fullname'] ?>">
                                                <div class="error"><?php echo form_error('name')?></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="width30 text-right td-right-order">Tỉnh/Thành phố:</td>
                                            <td>
                                                <select name="city" id="province" onchange="renderDistrict()" class="form-control next-select" >
                                                    <option value="">-- Chọn tỉnh thành ---</option>
                                                    <?php $list = $this->Mtinhthanhpho->province_all();
                                                    foreach($list as $row):?>
                                                        <option value="<?php echo $row['matp']; ?>"><?php echo $row['name']; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                                <div class="error"><?php echo form_error('city')?></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="width30 text-right td-right-order">Quận/Huyện:</td>
                                            <td>
                                                <select name="DistrictId" id="district"  class="form-control next-select">
                                                    <option value="">--- Chọn quận huyện ---</option>
                                                </select>
                                                <div class="error"><?php echo form_error('DistrictId')?></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="width30 text-right td-right-order">Vui lòng điền CHÍNH XÁC "tầng, số nhà, đường" để tránh trường hợp đơn hàng bị hủy ngoài ý muốn:</td>
                                            <td>
                                                <textarea name="address"  id="input" placeholder="Vui lòng điền CHÍNH XÁC 'tầng, số nhà, đường' để tránh trường hợp đơn hàng bị hủy ngoài ý muốn" class="form-control" rows="5" ="" style="height: auto !important;" value="<?php echo $user['address'] ?>"></textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="width30 text-right td-right-order">Số điện thoại:</td>
                                            <td>
                                                <input type="text"  class="form-control" id="" placeholder="Số điện thoại" name="phone" value="<?php echo $user['phone'] ?>">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="infor-ship">
                                    <label>Thông tin giao hàng</label>
                                    <p>Giao hàng tiêu chuẩn: <?php echo number_format($this->Mconfig->config_price_ship()).' VNĐ'; ?></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4 products-detail">
                            <div class="no-margin-table" style="width: 95%; float: right;">
                                <table class="table" style="color: #333;">
                                    <thead>
                                        <tr>
                                            <th colspan="3" style="font-weight: 600;">Thông tin đơn hàng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr style="background: #fafafa; color: #333;" class="text-transform font-weight-600">
                                            <td>Sản phẩm</td>
                                            <td class="text-center">Số lượng</td>
                                            <td class="text-center">Giá</td>
                                        </tr>
                                        <?php if($this->session->userdata('cart')):
                                            $data=$this->session->userdata('cart');
                                            $money=0;
                                            foreach ($data as $key => $value) :
                                                $row = $this->Mproduct->product_detail_id($key);?>
                                                <tr>
                                                    <td><?php echo $row['name']; ?></td>
                                                    <td class="text-center"><?php echo $value ?></td>
                                                    <td class="text-center">    
                                                        <?php 
                                                            $total=0;
                                                            if($row['price_sale'] > 0){
                                                                $total=$row['price_sale']*$value;
                                                            }else{
                                                                $total=$row['price'] * $value;
                                                            }
                                                            $money+=$total;
                                                            echo number_format($total).' VNĐ';
                                                        ?>
                                                    </td>
                                                </tr>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                        <tr style="background: #fafafa">
                                            <td colspan="2">Tạm tính</td>
                                            <td class="text-center"><?php echo number_format($money).' VNĐ'; ?></td>
                                        </tr>
                                        <tr style="background: #fafafa">
                                            <td colspan="2" class="font-weight-600">Thành tiền<br/><span style="font-weight: 100; font-style: italic;">(Tổng số tiền thanh toán)</span></td>
                                            <td class="text-center"><?php echo number_format($money).' VNĐ'; ?></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="btn-checkout frame-100-1 overflow-hidden border-pri">
                        <button type="submit" style="width: 400px" class="pull-left bg-pri border-pri col-fff" name="dathang">Tiếp tục</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<script>
    function renderDistrict(){
        var provinceid=$("#province").val();
        var strurl="<?php echo base_url();?>"+'giohang/district';
        jQuery.ajax({
            url: strurl,
            type: 'POST',
            dataType: 'json',
            data: {'provinceid': provinceid},
            success: function(data) {
                $('#district').html(data);
            }
        });
    };
</script>