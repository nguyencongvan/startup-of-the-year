<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dangnhap extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mcustomer');
        $this->load->model("frontend/Mproduct");
        $this->data['com']='dangnhap';
    }

    public function dangnhap(){
        $this->load->library('form_validation');
        $this->form_validation->set_rules('email', 'Địa chỉ email ', 'required|min_length[6]|max_length[32]');
        $this->form_validation->set_rules('password', 'Mật khẩu', 'required|min_length[6]|max_length[32]');
        if($this->form_validation->run() ==TRUE){
            $email = $_POST['email'];
            $password = md5($_POST['password']);
            if($this->Mcustomer->customer_login($email, $password)!=FALSE){
                $row = $this->Mcustomer->customer_login($email, $password);
                $this->session->set_userdata('session24hStore',$row);
                $this->session->set_userdata('id',$row['id']);
                redirect('/trang-chu','refresh');
            }else{
                $this->data['error']='Email hoặc mật khẩu không chính xác';
                $this->data['title']='Đăng nhập tài khoản';
                $this->data['view']='dangnhap';
                $this->load->view('frontend/layout',$this->data);
            }
        }else{
            $this->data['title']='24hStore - Đăng nhập tài khoản';
            $this->data['view']='dangnhap';
            $this->load->view('frontend/layout',$this->data);
        }     
    }

    public function dangxuat(){
        $array_items = array('user', 'fullname', 'id', 'access', 'cart','session24hStore');
        $this->session->unset_userdata($array_items);
        //$this->session->sess_destroy();
        redirect('trang-chu','refresh');
    }

    public function dangky(){
        $d=getdate();
        $today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
        $this->load->library('form_validation');
        $this->load->helper('form');
        $this->form_validation->set_rules('username', 'Tên đăng nhập', 'required|min_length[6]|max_length[32]|callback_check_username');
        $this->form_validation->set_rules('name', 'Họ và tên', 'required|min_length[8]');
        $this->form_validation->set_rules('password', 'Mật khẩu', 'required|min_length[6]|max_length[32]');
        $this->form_validation->set_rules('re_password', 'Nhập lại mật khẩu', 'required|matches[password]');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email|is_unique[db_customer.email]');
        $this->form_validation->set_rules('phone', 'Số điện thoại', 'required|min_length[6]|numeric|is_unique[db_user.phone]|max_length[11]');
        
        if($this->form_validation->run() ==TRUE){
            $data = array(
                'username'     => $this->input->post('username'),   
                'fullname'     => $this->input->post('name'),
                'email'    => $this->input->post('email'),
                'phone'    => $this->input->post('phone'),
                'created'=>$today,
                'password' => md5($this->input->post('password'))
            );
            $this->Mcustomer->customer_insert($data);//jgqunljqbtoiervp

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
            $list = array('ngotrungphat@gmail.com');
            $this->email->to($list);
            $this->email->subject('Hệ thống 24hStore');
            $this->email->message('Người dùng '.$this->input->post('username').' vừa trở thành thành viên trên website của bạn !');
            if ($this->email->send()) {
                $this->data['msg']='Đăng ký thành công !';
                redirect('dang-nhap','refresh');
            } 
        }  
        $this->data['title']='24hStore - Đăng ký tài khoản';   
        $this->data['view']='dangky';
        $this->load->view('frontend/layout',$this->data);  
    }

    function check_username(){
        $username = $this->input->post('username');
        if($this->Mcustomer->customer_check_username($username)){
            $this->form_validation->set_message(__FUNCTION__, 'Tên đăng nhập đã được sử dụng');
            return FALSE;
        }
        return TRUE;
    }

    function check_mail(){
        $mail = $this->input->post('mail');
        if($this->Mcustomer->customer_check_mail($mail))
        {
            $this->form_validation->set_message(__FUNCTION__, 'Email đã được sử dụng');
            return FALSE;
        }
        return TRUE;
    }
}