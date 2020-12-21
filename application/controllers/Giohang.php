<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Giohang extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->data['com']='giohang';
        $this->load->model('frontend/Morder');
        $this->load->model('frontend/Morderdetail');
        $this->load->model('frontend/Mproduct');
        $this->load->model('frontend/Mcustomer');
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mconfig');
        $this->load->model('frontend/Mdistrict');
        $this->load->model('frontend/Mtinhthanhpho');
    }
    
	public function index(){
        $this->data['title']='24hStore.vn - Giỏ hàng của bạn';
        $this->data['view']='index';
		$this->load->view('frontend/layout',$this->data);
	}

    public function checkout(){
        if($this->session->userdata('session24hStore')){
            redirect('info-order','refresh');
        }else{
            $d=getdate();
            $this->load->library('alias');
            $today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
            $this->load->library('form_validation');
            $this->form_validation->set_rules('email', 'Địa chỉ email', 'required|is_unique[db_customer.email]');
            if ($this->form_validation->run() == TRUE) {
                $mydata= array(
                    'email'=>$_POST['email'],
                    'created' =>$today,
                    'status'=>1,
                    'trash'=>1
                );
                $this->Mcustomer->customer_insert($mydata);
                $row=$this->Mcustomer->customer_detail_email($_POST['email']);
                $this->session->set_userdata('info-customer',$row);
                redirect('info-order','refresh');
            }else{
                $this->data['title']='24hStore.vn - Đặt hàng';
                $this->data['view']='checkout';
                $this->load->view('frontend/layout',$this->data);
            }
        }
    }

    public function info_order(){
        //Thu vien
        $this->load->library('session');
        $this->load->helper('string');
        $this->load->library('email');
        $this->load->library('form_validation');
        //Time current
        $d=getdate();
        $today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
        //Set Rule
        $this->form_validation->set_rules('name', 'Họ và tên', 'required|min_length[8]');
        $this->form_validation->set_rules('city', 'Tỉnh thành', 'required');
        $this->form_validation->set_rules('DistrictId', 'Quận huyện', 'required');
        //Price Ship
        $priceShip=$this->Mconfig->config_price_ship();
        //Validation;
        if($this->form_validation->run() == TRUE){
            //Tinh tien don hang
            $money=0;
            if($this->session->userdata('cart')){
                $data=$this->session->userdata('cart');
                foreach ($data as $key => $value) {
                    $row = $this->Mproduct->product_detail_id($key);
                    $total=0;
                    if($row['price_sale'] > 0){
                        $total=$row['price_sale']*$value;
                    }else{
                        $total=$row['price'] * $value;
                    }
                    $money+=$total;
                }
            }

            $idCustomer=null; $mailCustomer=null;
            //GET INFO CUSTOMER
            if($this->session->userdata('info-customer')){
                $info=$this->session->userdata('info-customer');
                if($info['id']){
                    $idCustomer=$info['id'];
                }
            }else{
                if($this->session->userdata('session24hStore')){
                    $info=$this->session->userdata('session24hStore');
                    $idCustomer=$info['id'];
                }
            }
            //Xu ly du lieu tu form
            //Province
            $provinceId = $_POST['city'];echo "<script>console.log( 'provinceId: " . $provinceId . "' );</script>";
            //$provinceName = $this->Mtinhthanhpho->province_name($provinceId);
            //District
            $districtId = $_POST['DistrictId'];echo "<script>console.log( 'districtId: " . $districtId . "' );</script>";
            //$districtName = $this->Mdistrict->district_name($districtId);
            //Ward
            //$wardName = $this->Mxaphuongthitran->district_name($wardId);
            $mydata=array(
                'orderCode' => random_string('alnum', 6),
                'customerid' => $idCustomer,
                'orderdate' => $today,
                'fullname' => $_POST['name'],
                'phone' => $_POST['phone'],
                'address' => $_POST['address'],
                'money' => $money + $priceShip,
                'province' => $provinceId,
                'district' => $districtId,
                'trash' => 1, 'status' => 0
            );
            //Insert to DB_order
            $this->Morder->order_insert($mydata);

            //Insert to order_detail
            $order_detail = $this->Morder->order_detail_customerid($idCustomer);
            //foreach ($order_detail as $row){
                $orderid = $order_detail['id'];
            //}
            $data=[];
            if($this->session->userdata('cart')){
                $val = $this->session->userdata('cart');
                foreach ($val as $key => $value){
                    $row = $this->Mproduct->product_detail_id($key);
                    //Lưu theo giá gốc || giá khuyến mãi
                    if($row['price_sale'] > 0){
                        $price = $row['price_sale'];
                    }else{
                        $price = $row['price'];
                    }
                    $data = array(
                        'orderid' => $orderid,
                        'productid' => $key,
                        'price' => $price,
                        'count' => $value,
                        'trash' => 1,
                        'status' => 1
                    );
                    $this->Morderdetail->orderdetail_insert($data);
                }
            }
            //GUI MAIL
            $this->load->library('email');
            $this->load->library('parser');
            $this->email->clear();
            $config['protocol']    = 'smtp';
            $config['smtp_host']    = 'ssl://smtp.gmail.com';
            $config['smtp_port']    = '465';
            $config['smtp_timeout'] = '7';
            $config['smtp_user']    = 'sale.24hstore@gmail.com';
            $config['smtp_pass']    = 'jgqunljqbtoiervp';
            $config['charset']    = 'utf-8';
            $config['newline']    = "\r\n";
            $config['wordwrap'] = TRUE;
            $config['mailtype'] = 'html'; // or html
            $config['validation'] = TRUE; // bool whether to validate email or not      
            $this->email->initialize($config);
            $this->email->set_newline("\r\n");
            $this->email->from('24hstore@gmail.com', '24hStore');
            $list = array('ngotrungphat@gmail.com');//Mặc định là email của admin
            $this->email->to($list);
            $this->email->subject('Hệ thống 24hStore');
            $this->email->message('Website của bạn vừa nhận được một đơn hàng mới, đăng nhập trang quản trị để xem chi tiết !');
            if ($this->email->send()) {
                $array_items = array('cart');
                $this->session->unset_userdata($array_items);
                redirect('/thankyou','refresh');
            }

        }else{
            $this->data['title']='24hStore.vn - Thông tin đơn hàng';
            $this->data['view']='info-order';
            $this->load->view('frontend/layout',$this->data);
        }
    }

    public function thankyou(){
        if($this->session->userdata('info-customer')||$this->session->userdata('session24hStore')){
            if($this->session->userdata('session24hStore')){
                $val = $this->session->userdata('session24hStore');
            }else{
                $val = $this->session->userdata('info-customer');
            }
            $list = $this->Morder->order_detail_customerid($val['id']);
            $data = array(
                'order' => $list,
                'customer' => $val,
                'orderDetail' => $this->Morderdetail->orderdetail_order_join_product($list['id']),
                'province' => $this->Mtinhthanhpho->province_name($list['province']),
                'district' => $this->Mdistrict->district_name($list['district']),
                'priceShip' => $this->Mconfig->config_price_ship()
            );
            $this->data['customer']=$val;
            $this->data['infoOrder']=$list;
            $this->load->library('email');
            $this->load->library('parser');
            $this->email->clear();
            $config['protocol']    = 'smtp';
            $config['smtp_host']    = 'ssl://smtp.gmail.com';
            $config['smtp_port']    = '465';
            $config['smtp_timeout'] = '7';
            $config['smtp_user']    = 'sale.24hstore@gmail.com';
            $config['smtp_pass']    = 'jgqunljqbtoiervp';
            $config['charset']    = 'utf-8';
            $config['newline']    = "\r\n";
            $config['wordwrap'] = TRUE;
            $config['mailtype'] = 'html'; // or html
            $config['validation'] = TRUE; // bool whether to validate email or not      
            $this->email->initialize($config);
            $this->email->set_newline("\r\n");
            $this->email->from('24hstore@gmail.com', '24hStore');
            $list = array($val['email']);//Mặc định là email của admin
            $this->email->to($list);
            $this->email->subject('Hệ thống 24hStore');
            $body = $this->load->view('frontend/modules/email',$data,TRUE);
            $this->email->message($body); 
            $this->email->send();
        }   
        $this->data['title']='24hStore.vn - Kết quả đơn hàng';
        $this->data['view']='thankyou';
        $this->load->view('frontend/layout',$this->data);
    }

    public function district(){
        $this->load->library('session');
        $id=$_POST['provinceid'];
        $list = $this->Mdistrict->district_provinceid($id);
        $html="<option value =''>--- Chọn quận huyện ---</option>";
        foreach ($list as $row) 
        {
            $html.='<option value = '.$row["maqh"].'>'.$row["name"].'</option>';
        }
        echo json_encode($html);
    }
}
