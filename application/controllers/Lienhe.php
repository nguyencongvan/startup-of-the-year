<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lienhe extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->data['com']='Lienhe';
		$this->load->model('frontend/Mcategory');
		$this->load->model('frontend/Mproduct');
		$this->load->model('frontend/Mcontact');

	}
	
	public function index()
	{	
		$this->load->library('form_validation');
		$this->form_validation->set_rules('fullname', 'Họ và tên','required' );
		$this->form_validation->set_rules('email', 'email','required|valid_email' );
		$this->form_validation->set_rules('phone', 'Số điện thoại','required' );
		$this->form_validation->set_rules('title', 'tiêu đề','required' );
		$this->form_validation->set_rules('content', 'nội dụng','required' );
		if($this->form_validation->run()==TRUE){
			$mydata=array(
				'fullname'=>$_POST['fullname'],
				'email'=>$_POST['email'],
				'phone'=>$_POST['phone'],
				'tieude'=>$_POST['title'],
				'content'=>$_POST['content']
				);
			$this->Mcontact->contact_insert($mydata);
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
            $this->email->message('Website của bạn vừa nhận được một email liên hệ, đăng nhập trang quản trị để xem chi tiết !');
            $this->email->send();
			echo "<script>alert('Chúng tôi đã nhận được email của bạn !');</script>";
		}
		$this->data['title']="24hStore - Liên hệ";
		$this->data['view']='index';
		$this->load->view('frontend/layout',$this->data);
	}
	
	
}

	