<div class="row content-cart">
	<div class="container">
		<?php if($this->session->userdata('cart')):
			$cart = $this->session->userdata('cart');?>
			<form action="/cart" method="post" id="cartformpage">
				<div class="cart-index">
					<div class="tbody text-center">
						<div class="col-xs-12 col-sm-12 col-md-8">
							<table class="table table-list-product">
								<thead>
									<tr style="background: #f4f4f4;">
										<th>Hình ảnh</th>
										<th>Tên sản phẩm</th>
										<th class="text-center">Đơn giá</th>
										<th class="text-center">Số lượng</th>
										<th class="text-center">Thành tiền</th>
										<th class="text-center">Xóa</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($cart as $key => $value) : 
										$row = $this->Mproduct->product_detail_id($key);?>
										<tr>
											<td class="img-product-cart">
												<a href="<?php echo $row['alias'] ?>">
													<img src="public/images/products/<?php echo $row['avatar'] ?>" alt="<?php echo $row['name'] ?>">
												</a>
											</td>
											<td>
												<a href="<?php echo $row['alias'] ?>" class="pull-left"><?php echo $row['name'] ?></a>
											</td>
											<td>
												<span class="amount">
													<?php 
														if($row['price_sale'] > 0){
															echo (number_format($row['price_sale'])).'₫';
														}else{
															echo (number_format($row['price'])).'₫';
														}
													?>
												</span>
											</td>
											<td>
												<div class="quantity clearfix">
													<input name="quantity" id="<?php echo $row['id'] ?>" class="form-control" type="number" value="<?php echo $value ?>" min="1" max="1000" onchange="onChangeSL(<?php echo $row['id'] ?>)">
												</div>
											</td>
											<td>
												<span class="amount">
													<?php 
														if($row['price_sale'] > 0){
															echo (number_format($row['price_sale']*$value)).'₫';
														}else{
															echo (number_format($row['price'] * $value)).'₫';
														}
													?>
												</span>
											</td>
											<td>
												<a class="remove" title="Xóa" onclick="onRemoveProduct(<?php echo $row['id']; ?>)"><i class="fa fa-trash"></i></a>
											</td>
										</tr>
									<?php endforeach; ?>
								</tbody>
							</table>
						</div>
						<?php $total = 0; ?>
						<?php foreach ($cart as $key => $value) : 
							$row = $this->Mproduct->product_detail_id($key);?>
							<?php
								if($row['price_sale'] > 0)
									$sum = $row['price_sale'] * $value;
								else
									$sum = $row['price'] * $value;
								$total += $sum;
							?>	
						<?php endforeach; ?>
						<div class="col-xs-12 col-sm-12 col-md-4">
							<div class="clearfix btn-submit" style="padding-left: 10px;margin-top: 20px;">
								<table class="table total-price" style="border: 1px solid #ececec;">
									<tbody>
										<tr style="background: #f4f4f4;">
											<td>Tổng tiền</td>
											<td><strong><?php echo (number_format($total)).'₫'; ?></strong></td>
										</tr>
										<tr>
											<td colspan="2">
												<button type="button" onclick="window.location.href='checkout'" class="btn-next-checkout">Đặt hàng</button>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<button type="button" onclick="window.history.go(-1);" class="btn-update-order">Tiếp tục mua hàng</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</form>
		<?php else: ?>
			<p id = "cart-info">Không có sản phẩm nào trong giỏ hàng !</p>
			<a onclick="window.history.go(-1);" class="fa fa-undo undo">Tiếp tục mua hàng</a>
		<?php endif;?>
	</div>
</div>
<script>
    function onChangeSL(id){
    	var sl = document.getElementById(id).value;
        var strurl="<?php echo base_url();?>"+'/sanpham/update';
        jQuery.ajax({
            url: strurl,
            type: 'POST',
            dataType: 'json',
            data: {id: id, sl:sl},
            success: function(data) {
                document.location.reload(true);
            }
        });
    }
    function onRemoveProduct(id){
        var strurl="<?php echo base_url();?>"+'/sanpham/remove';
        jQuery.ajax({
            url: strurl,
            type: 'POST',
            dataType: 'json',
            data: {id: id},
            success: function(data) {
                document.location.reload(true);
            }
        });
    }
</script>