<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Muser');
	}

	public function login()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('username', 'Tên đăng nhập', 'required|min_length[6]|max_length[32]');
		$this->form_validation->set_rules('password', 'Mật khẩu', 'required|min_length[6]|max_length[32]');
        if ($this->form_validation->run() ==TRUE)
        {
        	$username = $_POST['username'];
        	$password = sha1($_POST['password']);
        	if($this->Muser->user_login($username, $password)!=FALSE)
        	{
        		$row = $this->Muser->user_login($username, $password);
        		$this->session->set_userdata('sessionGreen',$row);
        		$this->session->set_userdata('id',$row['id']);
        		redirect('admin','refresh');
        	}
        	else
	        {
	        	$data['error']='Sai thông tin đăng nhập';
	        	$this->load->view('backend/components/user/login', $data);
	        }
        }
        else
        {
        	$this->load->view('backend/components/user/login');
        }
	}

	public function logout()
	{
		$array_items = array('sessionGreen', 'id');
        $this->session->unset_userdata($array_items);
		redirect('admin','refresh');
	}

}

/* End of file User.php */
/* Location: ./application/controllers/User.php */