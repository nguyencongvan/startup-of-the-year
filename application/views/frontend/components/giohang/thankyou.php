<?php 
    defined('BASEPATH') OR exit('No direct script access allowed'); 
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
                                <li class="step-breadcrumb _item">
                                    <span class="step-breadcrumb _text">2.Địa chỉ</span>
                                </li>
                                <li class="step-breadcrumb _item -current">
                                    <span class="step-breadcrumb _text">3.Kết quả</span>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="checkout-content">
                    <div class="tks-header">
                        <h3 class="fa fa-check-circle">  Một email vừa được gửi đến địa chỉ 
                            <?php 
                                if($this->session->userdata('info-customer')){
                                    $data=$this->session->userdata('info-customer');
                                    echo $data['email'];
                                }else{
                                    if($this->session->userdata('session24hStore')){
                                    $data=$this->session->userdata('session24hStore');
                                    echo $data['email'];
                                }
                                }
                            ?>
                             . Hãy đăng nhập để kiểm tra thông tin đơn hàng.
                        </h3>
                    </div>
                    <div class="tks-content" style="min-height: 1px;
    overflow: hidden;">
                        <div class="col-xs-12 col-sm-12 col-md-7 col-login-checkout" style="margin-bottom: 20px">
                            <table class="table tks-tabele-info-cus">
                                <thead>
                                    <tr>
                                        <th>Thông tin thanh toán</th>
                                        <th>Thông tin nhận hàng</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><?php echo $infoOrder['fullname'] ?></td>
                                        <td><?php echo $infoOrder['fullname'] ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $infoOrder['phone'] ?></td>
                                        <td><?php echo $infoOrder['phone'] ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $infoOrder['address'] ?></td>
                                        <td><?php echo $infoOrder['address'] ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $this->Mtinhthanhpho->province_name($infoOrder['province'] )?></td>
                                        <td><?php echo $this->Mtinhthanhpho->province_name($infoOrder['province'] )?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $this->Mdistrict->district_name($infoOrder['district'] )?></td>
                                        <td><?php echo $this->Mdistrict->district_name($infoOrder['district'] )?></td>
                                    </tr>
                                
                                </tbody>
                            </table>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-5 products-detail">
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
                                        <?php
                                            $data=$this->Morderdetail->orderdetail_order($infoOrder['id']);
                                            $money=0;
                                            foreach ($data as $value) :
                                                $row = $this->Mproduct->product_detail_id($value['productid']);?>
                                                <tr>
                                                    <td><?php echo $row['name']; ?></td>
                                                    <td class="text-center"><?php echo $value['count']; ?></td>
                                                    <td class="text-center">    
                                                        <?php echo number_format($value['price']);?>
                                                    </td>
                                                </tr>
                                            <?php endforeach; ?>
                                        <?php ?>
                                        <tr style="background: #fafafa">
                                            <td colspan="2">Vận chuyển</td>
                                            <td class="text-center"><?php echo number_format($this->Mconfig->config_price_ship()).' VNĐ'; ?></td>
                                        </tr>
                                        <tr style="background: #fafafa">
                                            <td colspan="2" class="font-weight-600">Thành tiền<br/><span style="font-weight: 100; font-style: italic;">(Tổng số tiền thanh toán)</span></td>
                                            <td class="text-center"><?php echo number_format($infoOrder['money']).' VNĐ'; ?></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="btn-tks clearfix">
                        <button type="button" onclick="window.location.href='<?php echo base_url() ?>trang-chu'" class="btn-next-checkout pull-left">Tiếp tục mua hàng</button>
                        <button type="button" onclick="window.print()" class="btn-update-order pull-left">In</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>