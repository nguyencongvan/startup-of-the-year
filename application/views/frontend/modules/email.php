<html>
	<head><title>Welcome to!</title></head>
	<body>
		<div style="font-family:&quot;Arial&quot;,Helvetica Neue,Helvetica,sans-serif;line-height:18pt">
			<p>Xin chào <?php 
				if($customer){
					if($customer['fullname'] !=''){
						echo $customer['fullname'];
					}else{
						echo 'quý khách';
					}
				}
			?></p>
			<p>Cảm ơn Anh/chị đã đặt hàng tại <strong>24hStore</strong>!</p>
			<p>Đơn hàng của Anh/chị đã được tiếp nhận, chúng tôi sẽ nhanh chóng liên hệ với Anh/chị.</p>
			<div>
			<table style="width:100%;border-collapse:collapse">
				<thead>
					<tr>
						<th style="border-left:1px solid #d7d7d7;border-right:1px solid #d7d7d7;border-top:1px solid #d7d7d7;padding:5px 10px;text-align:left"><strong>Thông tin người mua</strong></th>
						<th style="border-left:1px solid #d7d7d7;border-right:1px solid #d7d7d7;border-top:1px solid #d7d7d7;padding:5px 10px;text-align:left"><strong>Thông tin người nhận</strong></th>
					</tr>
				</thead>
			<tbody>
				<tr>
					<td style="border-left:1px solid #d7d7d7;border-right:1px solid #d7d7d7;border-bottom:1px solid #d7d7d7;padding:5px 10px">
						<table style="width:100%">
							<tbody>
								<tr>
									<td>Họ tên:</td>
									<td><?php echo $order['fullname'] ?></td>
								</tr>
								
								<tr>
									<td>Điện thoại:</td>
									<td><?php echo $order['phone'] ?></td>
								</tr>
								
								<tr>
									<td>Email:</td>
									<td><?php echo $customer['email'] ?></td>
								</tr>
								
								<tr>
									<td>Địa chỉ:</td>
									<td><?php echo $order['address'] ?></td>
								</tr>
								
								<tr>
									<td>Quận huyện:</td>
									<td><?php if($province){
											echo $province;
										}else{
											echo '-';
										}?></td>
								</tr>
								
								<tr>
									<td>Tỉnh thành:</td>
									<td><?php if($district){
											echo $district;
										}else{
											echo '-';
										}?></td>
								</tr>
							</tbody>
						</table>
					</td>
					<td style="border-left:1px solid #d7d7d7;border-right:1px solid #d7d7d7;border-bottom:1px solid #d7d7d7;padding:5px 10px">
						<table style="width:100%">
							<tbody>
								<tr>
									<td>Họ tên:</td>
									<td><?php echo $order['fullname'] ?></td>
								</tr>
								
								<tr>
									<td>Điện thoại:</td>
									<td><?php echo $order['phone'] ?></td>
								</tr>
								
								<tr>
									<td>Email:</td>
									<td><?php echo $customer['email'] ?></td>
								</tr>
								
								<tr>
									<td>Địa chỉ:</td>
									<td><?php echo $order['address'] ?></td>
								</tr>
								<!-- <tr>
									<td>Xã phường:</td>
									<td><?php
										if($ward){
											echo $ward;
										}else{
											echo '-';
										}
									?></td>
								</tr> -->
								<tr>
									<td>Quận huyện:</td>
									<td><?php if($province){
											echo $province;
										}else{
											echo '-';
										}?></td>
								</tr>
								
								<tr>
									<td>Tỉnh thành:</td>
									<td><?php if($district){
											echo $district;
										}else{
											echo '-';
										}?></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="border-left:1px solid #d7d7d7;border-right:1px solid #d7d7d7;border-bottom:1px solid #d7d7d7;padding:5px 10px">
						<p><strong>Hình thức thanh toán: </strong>Thanh toán khi giao hàng (COD)</p>
						<p><strong>Phí vận chuyển: </strong> <?php echo number_format($priceShip) ?><br>
						</p>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div>
		<div style="font-size:18px;padding-top:10px"><strong>Thông tin đơn hàng</strong></div>
		<table>
			<tbody>
				<tr>
					<td>Mã đơn hàng: <strong>#<?php echo $order['orderCode'] ?></strong></td>
					<td style="padding-left:40px">Ngày tạo: <?php echo $order['orderdate'] ?></td>
				</tr>
			</tbody>
		</table>
		<table style="width:100%;border-collapse:collapse">
			<thead>
				<tr style="border:1px solid #d7d7d7;background-color:#f8f8f8">
					<th style="padding:5px 10px;text-align:left"><strong>Sản phẩm</strong></th>
					<th style="text-align:center;padding:5px 10px"><strong>Số lượng</strong></th>
					<th style="padding:5px 10px;text-align:right"><strong>Tổng</strong></th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($orderDetail as $value) :?>
					<tr style="border:1px solid #d7d7d7">
						<td style="padding:5px 10px"><?php echo $value['name']; ?></td>
						<td style="text-align:center;padding:5px 10px"><?php echo $value['count'] ?></td>
						<td style="padding:5px 10px;text-align:right"><?php echo number_format($value['price']) ?> VNĐ</td>
					</tr>
				<?php endforeach; ?>
				<tr style="border:1px solid #d7d7d7">
					<td colspan="2">&nbsp;</td>
					<td colspan="2">
					<table style="width:100%">
						<tbody>
							<tr>
								<td><strong>Phí vận chuyển:</strong></td>
								<td style="text-align:right"><?php echo  number_format($priceShip) ?> VNĐ</td>
							</tr>
							<tr>
								<td><strong>Tổng tiền</strong></td>
								<td style="text-align:right"><?php echo number_format($order['money']) ?> VNĐ</td>
							</tr>
						</tbody>
					</table>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<p>Để kiểm tra trạng thái đơn hàng, Anh/chị vui lòng:</p>
	<div style="font-size:18px">
		<a href="<?php echo base_url() ?>dang-nhap" style="padding:15px;background-color:#7fc142;color:#fff" target="_blank">Đăng nhập vào tài khoản</a>
	</div>
	&nbsp;
	<hr>
	<p style="text-align:right">Nếu Anh/chị có bất kỳ câu hỏi nào, xin liên hệ với chúng tôi tại <span style="color:#17a3dd"><a href="mailto:ngotrungphat@gmail.com" target="_blank">ngotrungphat@gmail.com</a></span></p>
	<p style="text-align:right"><i>Trân trọng,</i></p>
	<p style="text-align:right"><strong>Ban quản trị cửa hàng 24hStore</strong></p><div class="yj6qo"></div><div class="adL">
	</div>
	</div>
	</body>
</html>