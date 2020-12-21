<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Trangchu extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->load->model('frontend/Mproduct');
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mslider');
        $this->load->model('frontend/Mcontent');
        $this->data['com']='trangchu';
    }
    
	public function index()
	{
        $this->data['title']='24hStore.vn - Vua bán lẻ điện thoại di động, máy tính bảng chính hãng';
        $this->data['view']='index';
		$this->load->view('frontend/layout',$this->data);
	}
}
