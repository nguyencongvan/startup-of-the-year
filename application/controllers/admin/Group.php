<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Group extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Muser');
		$this->load->model('backend/Mgroupadmin');
		if(!$this->session->userdata('sessionGreen'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionGreen');
		$this->data['com']='group';
	}

	public function index()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mgroupadmin->usergroup_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/users');
		$this->data['list']=$this->Mgroupadmin->usergroup_all($limit, $first);
		$this->data['view']='index';
		$this->data['title']='Danh sách tài khoản';
		$this->load->view('backend/layout', $this->data);
	}

}