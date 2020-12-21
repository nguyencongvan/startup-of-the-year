<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mcategory extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->table = $this->db->dbprefix('category');
	}

	public function category_count_parentid($parentid)
	{
		$this->db->where('parentid', $parentid);
		$this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        return count($query->result_array());

	}

	public function category_all($limit,$first)
	{
		$this->db->where('trash',1);
		$this->db->order_by('created_at', 'desc');
		$query = $this->db->get($this->table,$limit,$first);
        return $query->result_array();
	}

	public function category_listofType($type)
	{
		$this->db->where('trash',1);
		$this->db->where('type',$type);
		//$this->db->order_by('orders', 'asc');
		$this->db->order_by('parentid', 'asc');
		$query = $this->db->get($this->table);
        return $query->result_array();
	}

	public function category_parentid($id)
	{
		$this->db->where('trash',1);
		$this->db->where('status',1);
		$this->db->where('id',$id);
		$this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['parentid'];
	}

	public function category_name_parent($id)
	{
		$this->db->where('trash',1);
		$this->db->where('status',1);
		$this->db->where('id',$id);
		$this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['name'];
	}

	public function category_count()
	{
		$this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        return count($query->result_array());
	}

	public function category_list()
	{
		$this->db->where('trash',1);
		$this->db->order_by('orders', 'asc');
		$this->db->order_by('updated_at', 'desc');
		$query = $this->db->get($this->table);
        return $query->result_array();
	}

	public function category_detail($id)
	{
		$this->db->where('trash',1);
		$this->db->where('id',$id);
		$this->db->order_by('orders', 'asc');
		$query = $this->db->get($this->table);
        return $query->row_array();
	}

	//Thêm
	public function category_insert($mydata)
	{
		$this->db->insert($this->table, $mydata);
	}

	//Cập nhật
	public function category_update($mydata, $id)
	{
		$this->db->where('id',$id);
		$this->db->update($this->table, $mydata);
	}

	public function category_delete($id)
	{
		$this->db->where('id',$id);
		$this->db->delete($this->table);
	}

	public function category_trash($limit, $first)
	{
		$this->db->where('trash',0);
		$query = $this->db->get($this->table, $limit, $first);
        return $query->result_array();
	}

	public function category_trash_count()
	{
        $this->db->where('trash', 0);
        $query = $this->db->get($this->table);
        return count($query->result_array());
	}

	public function category_restore($id)
	{
		$data=array('trash'=>1);
		$this->db->where('id',$id);
		$this->db->update($this->table, $data);
	}

	public function category_name($id)
    {
        $this->db->where('id', $id);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['name'];
    }

    public function category_type($id)
    {
        $this->db->where('id', $id);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['type'];
    }
}

/* End of file mcategory.php */
/* Location: ./application/models/mcategory.php */