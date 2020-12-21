<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tinhthanhpho extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Mdistrict');
		$this->load->model('backend/Mtinhthanhpho');
		if(!$this->session->userdata('sessionGreen'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionGreen');
		$this->data['com']='province';
	}

	public function index()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mtinhthanhpho->province_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/province');
		$this->data['list']=$this->Mtinhthanhpho->province_all($limit, $first);
		$this->data['view']='index';
		$this->data['title']='Danh sách tỉnh thành';
		$this->load->view('backend/layout', $this->data);
	}

	public function district()
	{
		$aurl= explode('/',uri_string());
		$id=$aurl[2];
		$total=$this->Mdistrict->district_count($id);
		$this->data['list']=$this->Mdistrict->district_all($id);
		$this->data['view']='district';
		$this->data['title']='Danh sách quận huyện';
		$this->load->view('backend/layout', $this->data);
	}
	public function ward()
	{
		$aurl= explode('/',uri_string());
		$id=$aurl[2];
		$total=$this->Mward->ward_count($id);
		$this->data['list']=$this->Mward->ward_all($id);
		$this->data['view']='ward';
		$this->data['title']='Danh sách xã phường';
		$this->load->view('backend/layout', $this->data);
	}
}