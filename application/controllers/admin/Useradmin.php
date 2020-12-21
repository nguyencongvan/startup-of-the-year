<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Useradmin extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('backend/Muser');
		$this->load->model('backend/Mgroupadmin');
		if(!$this->session->userdata('sessionGreen'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionGreen');
		$this->data['com']='useradmin';
	}

	public function index(){
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Muser->users_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/useradmin');
		$this->data['list']=$this->Muser->users_all($limit, $first);
		$this->data['view']='index';
		$this->data['title']='Danh sách tài khoản';
		$this->load->view('backend/layout', $this->data);
	}

	public function insert(){
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->load->library('alias');
		$this->form_validation->set_rules('fullname', 'Họ và tên', 'required');
		$this->form_validation->set_rules('phone', 'Số điện thoại', 'required|is_unique[db_user.phone]');
		$this->form_validation->set_rules('email', 'Địa chỉ email', 'required|is_unique[db_user.email]');
		$this->form_validation->set_rules('username', 'Tên đăng nhập', 'required|is_unique[db_user.username]');
		$this->form_validation->set_rules('password', 'Mật khẩu', 'required');
		if ($this->form_validation->run() == TRUE){
			$mydata= array(
				'fullname' =>$_POST['fullname'], 
				'phone' =>$_POST['phone'], 
				'email' =>$_POST['email'], 
				'username' =>$_POST['username'], 
				'password' =>sha1($_POST['password']), 
				'role' =>$_POST['role'], 
				'status' =>$_POST['status'],
				'created' =>$today,
				'trash'=>1,'access'=>1
			);
			$config['upload_path']          = './public/images/admin/';
			$config['encrypt_name'] = TRUE;
            $config['allowed_types']        = 'gif|jpg|png';
            $config['max_size']             = 2000;
            $this->load->library('upload', $config);
            if ( $this->upload->do_upload('img')){
                $data = $this->upload->data();
                $mydata['img']=$data['file_name'];
            }else{
                $mydata['img']='26ce8716.png';
            }
			$this->Muser->user_insert($mydata);
			$this->session->set_flashdata('success', 'Thêm thành viên thành công');
			redirect('admin/useradmin','refresh');
		} 
		else{
			$this->data['view']='insert';
			$this->data['title']='Thêm chủ đề bài viết';
			$this->load->view('backend/layout', $this->data);
		}
	}

	public function update($id){
		$row=$this->Muser->user_detail_id($id);
		$this->data['row']=$row;
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->load->library('alias');
		$this->form_validation->set_rules('fullname', 'Họ và tên', 'required');
		$this->form_validation->set_rules('password', 'Mật khẩu', 'required|callback_check_password');	
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'fullname' =>$_POST['fullname'],
				'status'=>$_POST['status'],
				'gender'=>$_POST['gender']
			);
         	$config = array();
	         $config['upload_path']   = './public/images/admin/';
	         $config['allowed_types'] = 'jpg|png';
	         $config['encrypt_name'] = TRUE;
	         $config['max_size']      = '500';
	         $config['max_width']     = '1028';
	         $config['max_height']    = '1028';
	         $this->load->library('upload', $config);
	         if($this->upload->do_upload('image')){
	             $data = $this->upload->data();
	             $mydata['img']=$data['file_name'];
	         }
			$this->Muser->user_update($mydata, $id);
			$this->session->set_flashdata('success', 'Cập nhật thành viên thành công');
			redirect('admin/useradmin/','refresh');
		} 
		$this->data['view']='update';
		$this->data['title']='Cập nhật thành viên';
		$this->load->view('backend/layout', $this->data);
	}

	public function recyclebin()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Muser->user_trash_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/useradmin/recyclebin');
		$this->data['list']=$this->Muser->user_trash($limit, $first);
		$this->data['view']='recyclebin';
		$this->data['title']='Thùng rác thành viên';
		$this->load->view('backend/layout', $this->data);
	}

	public function trash($id)
	{
		$row=$this->data['user'];
		if($row['role']==2){
			$this->session->set_flashdata('error', 'Không có quyền thao tác');
			redirect('admin/useradmin','refresh');
		}else{
			$mydata= array('trash' => 0);
			$this->Muser->user_update($mydata, $id);
			$this->session->set_flashdata('success', 'Xóa thành viên vào thùng rác thành công');
			redirect('admin/useradmin','refresh');
		}
	}

	public function status($id)
	{
		$row=$this->Muser->user_detail_id($id);
		$user=$this->data['user'];
		if($user['role']==2){
			$this->session->set_flashdata('error', 'Không có quyền thao tác');
			redirect('admin/useradmin','refresh');
		}else{
			if($id!=$user['id']){
				$status=($row['status']==1)?0:1;
				$mydata= array('status' => $status);
				$this->Muser->user_update($mydata, $id);
				$this->session->set_flashdata('success', 'Cập nhật thành viên thành công');
				redirect('admin/useradmin','refresh');
			}else{
				$this->session->set_flashdata('error', 'Không thể thao tác với chính mình');
				redirect('admin/useradmin','refresh');
			}
		}
	}

	public function restore($id){
		$row=$this->data['user'];
		if($row['role']==2){
			$this->session->set_flashdata('error', 'Không có quyền thao tác');
			redirect('admin/useradmin','refresh');
		}else{
			$this->Muser->user_restore($id);
			$this->session->set_flashdata('success', 'Khôi phục thành viên thành công');
			redirect('admin/useradmin/recyclebin','refresh');
		}
	}

	public function delete($id){
		$row=$this->data['user'];
		if($row['role']==2){
			$this->session->set_flashdata('error', 'Không có quyền thao tác');
			redirect('admin/useradmin','refresh');
		}else{
			$this->Muser->user_delete($id);
			$this->session->set_flashdata('success', 'Xóa thành viên thành công');
			redirect('admin/useradmin/recyclebin','refresh');
		}
	}

	function check_password(){
        $password = $this->input->post('password');
        $row=$this->data['row'];
        if(sha1($password)!=$row['password']){
            $this->form_validation->set_message(__FUNCTION__, 'Mật khẩu không chính xác');
            return FALSE;
        }
        return TRUE;
    }

}