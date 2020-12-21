<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mtinhthanhpho extends CI_Model {

	public function __construct()
    {
        parent::__construct();
        $this->table = $this->db->dbprefix('tinhthanhpho');
    }

    public function province_count()
    {;
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function province_all($limit, $first)
    {
        $this->db->order_by('matp', 'asc');
        $query = $this->db->get($this->table, $limit, $first);
        return $query->result_array();
    }

}

/* End of file muser.php */
/* Location: ./application/models/muser.php */