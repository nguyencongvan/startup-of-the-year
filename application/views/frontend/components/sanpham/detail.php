<section id="product-detail">
	<div class="container">
		<div class="products-wrap">
			<form action="" method="post" id="ProductDetailsForm">
				<?php if($row):?>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 listimg-desc-product">
						<?php $this->load->view('frontend/modules/jcarousel');?>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<div class="product-view-content">
							<div class="product-view-name">
								<h1><?php echo $row['name'] ?></h1>
							</div>
							<div class="product-view-price">
								<div class="pull-left">
									<span class="price-label">Giá bán:</span>
									<span class="price"><?php echo number_format($row['price'])?>₫</span>
								</div>
								<?php if($row['price_sale']>0&&$row['sale']>0): ?>
									<div class="product-view-price-old">
										<span class="price"><?php echo $row['price_sale'] ?>₫</span>
										<span class="sale-flag">-<?php echo $row['sale'] ?>%</span>
									</div>
								<?php endif; ?>
							</div>
							<div class="product-status">
								<p style=" float: left;margin-right: 10px;">Thương hiệu: <?php $name=$this->Mcategory->category_name($row['catid']); echo $name; ?></p>
								<p>| Tình trạng: <?php if($row['number']==0) echo 'Hết hàng'; else echo 'Còn hàng' ?></p>
							</div>
							<div class="product-view-desc">
								<h4>Mô tả:</h4>
								<p><?php echo $row['sortDesc'] ?></p>
							</div>
							<div class="actions-qty">
								<label for="qty">Số lượng</label>
								<input type="number" class="input-text qtyDetail" title="Qty" value="1" min="1" maxlength="12" id="qtyDetail" name="quantity">
								<div class="actions-qty__button">
									<button class="button btn-cart add_to_cart_detail detail-button" title="Mua ngay" aria-label="Mua ngay"><span><i class="fa fa-shopping-cart" aria-hidden="true"></i> Mua ngay</span></button>
									<buttion class="hotline detail-hotline" aria-label="Hotline" title="Holine: 08.62632424" onclick="window.location.href='tel:08.62632424'"><i class="fa fa-volume-control-phone" aria-hidden="true"></i>  08.62632424</buttion>
								</div>
							</div>
							<div class="product-view-payments">
								<label>Chấp nhận thanh toán</label>
								<img src="public/images/baokim.png">
								<img src="public/images/vietcombank.png">
								<!-- <iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2FMini-Maket-682007328642205%2F&width=450&layout=standard&action=like&show_faces=false&share=true&height=35&appId" width="450" height="35" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
								<div class="g-plusone" data-annotation="inline" data-width="300"></div> -->
							</div>
						</div>
					</div>
					<div class="product-v-desc">
						<h3>Đặc điểm nổi bật</h3>
						<?php echo $row['detail']?>
					</div>
					<div class="product-comment product-v-desc">
						<h3>Bình luận</h3>
						<div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
							<!-- <?php if(!$this->session->userdata('session24hStore')):?>
								<p>Bạn chưa đăng nhập, nhấn vào <a href="dang-nhap"> đây </a> để đăng nhập !</p>
							<?php  else :?>
								<div class="user-comments">
									<form action="#">
										<input type="text" name="content" placeholder="Nhập bình luận">
									</form>
								</div>
							<?php endif;?> -->
							<div class="fb-comments" data-href="<?php echo base_url() ?><?php echo $row['alias'] ?>" data-numposts="5"></div>
						</div>
					</div>
					<div class="product-comment product-v-desc product-">
						<h3>Sản phẩm cùng loại</h3>
						<?php 
						$sm_products = $this->Mproduct->product_similar($row['catid'], $row['id'], 12);?>
						<?php 
						if(count($sm_products)>=6):?>
							<div class="col-sm-12 col-xs-12 col-md-12 col-lg-12 product-similar-wrap">
							<?php foreach ($sm_products as $row) :?>
                                <div class="item col-md-2 col-sm-2 col-xs-6 product-one">
                                    <div class="image-product">
                                        <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>"><img src="public/images/products/<?php echo $row['avatar'] ?>"></a>
                                        <h4>
                                            <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>" class="ws-nw overflow ellipsis"><?php echo $row['name'] ?></a>
                                        </h4>
                                    </div>
                                    <div class="price-product-item">
                                        <?php if($row['sale'] > 0) :?>
                                            <span class=""><?php echo(number_format($row['price_sale'])); ?>₫</span>
                                            <span><?php echo(number_format($row['price'])); ?>₫</span>
                                        <?php else: ?>
                                            <span class=""><?php echo(number_format($row['price'])); ?>₫</span>
                                            <span style="color: #fff"><?php echo(number_format($row['price'])); ?>₫</span>
                                        <?php endif; ?>
                                    </div>
                                    <?php if($row['sale'] > 0) :?>
                                        <div class="sale-flash">
                                            -<?php echo $row['sale'] ?>%
                                        </div>
                                    <?php endif; ?>
                                    <div class="btn-action">
                                        <button type="button" class="fa fa-shopping-cart" onclick="onAddCart(<?php echo $row['id']  ?>)"></button>
                                        <button type="button" class="fa fa-eye""></button>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                            </div>
                        <?php else: ?>
                        	<p>Chưa có sản phẩm cùng loại hoặc nhỏ hơn 6 !</p>
                        <?php endif; ?>
					</div>
				<?php endif; ?>	
			</form>
		</div>
	</div>
</section>
<script>
    function onAddCart(id){
        var strurl="<?php echo base_url();?>"+'/sanpham/addcart';
        jQuery.ajax({
            url: strurl,
            type: 'POST',
            dataType: 'json',
            data: {id: id},
            success: function(data) {
                document.location.reload(true);
                alert('Thêm sản phẩm vào giỏ hàng thành công !');
            }
        });
    }
</script>
