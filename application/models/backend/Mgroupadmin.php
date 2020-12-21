<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mgroupadmin extends CI_Model {

	public function __construct()
    {
        parent::__construct();
        $this->table = $this->db->dbprefix('usergroup');
    }


    function usergroup_detail()
    {
    	$this->db->where('status', 1);
    	$this->db->where('trash', 1);
    	$query = $this->db->get($this->table);
    	return $query->row_array();
    }

    public function usergroup_count()
    {
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function usergroup_all($limit, $first)
    {
        $this->db->where('trash', 1);
        $this->db->order_by('created', 'desc');
        $query = $this->db->get($this->table, $limit, $first);
        return $query->result_array();
    }

    public function usergroup_trash_count()
    {
        $this->db->where('trash', 0);
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function groupadmin_list()
    {
        $this->db->where('trash',1);
        $this->db->order_by('created', 'asc');
        $this->db->order_by('modified', 'desc');
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

}

/* End of file muser.php */
/* Location: ./application/models/muser.php */