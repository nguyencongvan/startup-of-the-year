<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mdistrict extends CI_Model {

	public function __construct()
    {
        parent::__construct();
        $this->table = $this->db->dbprefix('quanhuyen');
    }

    public function district_count($id)
    {
        $this->db->where('matp', $id);
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function district_all($id)
    {
        $this->db->where('matp', $id);
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

}

/* End of file muser.php */
/* Location: ./application/models/muser.php */