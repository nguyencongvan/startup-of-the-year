<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Thongtin extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->data['com']='thongtin';
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mtinhthanhpho');
         $this->load->model('frontend/Mdistrict');
        if(!$this->session->userdata('session24hStore')){
            redirect('dang-nhap','refresh');
        }
        $this->data['info']=$this->Mcategory->customer_detail_id($this->session->userdata('id'));
    }
    
	public function index(){
        $this->data['title']='24hStore.vn - Thông tin tài khoản';
        $this->data['view']='index';
		$this->load->view('frontend/layout',$this->data);
	}

    public function order(){
        $aurl= explode('/',uri_string());
        $id = $aurl[2];
        $this->data['orderid'] = $id;
        $this->data['row'] = $this->Mcategory->orderdetail_order_join_product($id);
        $this->data['info']=$this->Mcategory->order_orderid($id);
        $this->data['title']='24hStore - Chi tiết đơn hàng';  
        $this->data['view']='detail';
        $this->load->view('frontend/layout',$this->data);
    }
}
