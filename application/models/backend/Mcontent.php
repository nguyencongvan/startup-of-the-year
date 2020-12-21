<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mcontent extends CI_Model {

	public function __construct()
    {
            parent::__construct();
            $this->table = $this->db->dbprefix('content');
    }

    public function content_count_parentid($catid)
    {
        $this->db->where('catid', $catid);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function product_category_count($catid)
    {
        $this->db->where('catid', $catid);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function content_trash_count()
	{
        $this->db->where('trash', 0);
        $query = $this->db->get($this->table);
        return count($query->result_array());
	}

	public function content_parentid($id)
	{
		$this->db->where('trash',1);
		$this->db->where('status',1);
		$this->db->where('id',$id);
		$this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['catid'];
	}

    public function content_name($id)
    {
        $this->db->where('trash',1);
        $this->db->where('status',1);
        $this->db->where('id',$id);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['title'];
    }

	public function content_all($limit, $first)
    {
        $this->db->where('trash', 1);
        $this->db->order_by('created', 'desc');
        $query = $this->db->get($this->table, $limit, $first);
        return $query->result_array();
    }

    public function content_count()
    {
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function content_detail($id)
    {
        $this->db->where('trash', 1);
        $this->db->where('id', $id);
        $query = $this->db->get($this->table);
        return $query->row_array();   
    }

    public function content_trash($limit, $first)
    {
        $this->db->where('trash',0);
        $query = $this->db->get($this->table, $limit, $first);
        return $query->result_array();
    }

    public function content_restore($id)
    {
        $data=array('trash'=>1);
        $this->db->where('id',$id);
        $this->db->update($this->table, $data);
    }

    //Thêm
    public function content_insert($mydata)
	{
		$this->db->insert($this->table,$mydata);
	}

    //Cập nhật
    public function content_update($mydata,$id)
    {
        $this->db->where('id',$id);
        $this->db->update($this->table, $mydata);
    }

    //Xóa
    public function content_delete($id)
    {
        $this->db->where('id',$id);
        $this->db->delete($this->table);
    }
}

/* End of file mcontent.php */
/* Location: ./application/models/mcontent.php */