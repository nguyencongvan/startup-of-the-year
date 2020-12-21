<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Orders extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Muser');
		$this->load->model('backend/Mproduct');
		$this->load->model('backend/Mcustomer');
		$this->load->model('backend/Morders');
		$this->load->model('backend/Morderdetail');
		if(!$this->session->userdata('sessionGreen'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionGreen');
		$this->data['com']='orders';
	}

	public function index()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Morders->orders_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/orders');
		$this->data['list'] = $this->Morders->orders_listorders($limit, $first);
		$this->data['view']='index';
		$this->data['title']='Danh sách đơn hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function detail($id)
	{
		$this->data['id'] = $id;
		$this->data['view']='detail';
		$this->data['title']='Chi tiết đơn hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function status($id)
	{
		$row=$this->Morders->orders_detail($id);
		$status = $row['status'];
		if($status == 0)
		{
			$status = 1;
			$mydata= array('status' => $status);
			$this->Morders->orders_update($mydata, $id);
			$this->session->set_flashdata('success', 'Cập nhật đơn hàng thành công');
			redirect('admin/orders','refresh');
		}
		else
		{
			$this->session->set_flashdata('error', 'Đơn hàng đã thanh toán, không thể chỉnh sửa !');
			redirect('admin/orders','refresh');
		}
		
	}

	public function recyclebin()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Morders->orders_trash_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/orders/recyclebin');
		$this->data['list']=$this->Morders->orders_trash($limit, $first);
		$this->data['view']='recyclebin';
		$this->data['title']='Thùng rác đơn hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function trash($id)
	{
		$mydata= array('trash' => 0);
		$this->Morders->orders_update($mydata, $id);
		$this->session->set_flashdata('success', 'Xóa đơn hàng vào thùng rác thành công');
		redirect('admin/orders','refresh');
	}

	public function restore($id)
	{
		$this->Morders->orders_restore($id);
		$this->session->set_flashdata('success', 'Khôi phục đơn hàng thành công');
		redirect('admin/orders/recyclebin','refresh');
	}
	public function delete($id)
	{
		$this->Morders->orders_delete($id);
		$this->Morderdetail->orderdetail_delete($id);
		$this->session->set_flashdata('success', 'Xóa đơn hàng thành công');
		redirect('admin/orders/recyclebin','refresh');
	}

}

/* End of file Daspuhboard.php */
/* Location: ./application/controllers/Dashboard.php */