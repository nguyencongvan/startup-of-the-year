<?php
class Mdistrict extends CI_Model {
        public function __construct()
        {
                parent::__construct();
                $this->table = $this->db->dbprefix('quanhuyen');
        }

        public function district_provinceid($provinceid)
        {
                $this->db->where('matp', $provinceid);
                $this->db->order_by('name', 'asc');
                $query = $this->db->get($this->table);
                return $query->result_array();
        }

        public function district_name($districtid)
        {
                $this->db->where('maqh', $districtid);
                $this->db->order_by('name', 'asc');
                $this->db->limit(1);
                $query = $this->db->get($this->table);
                $row=$query->row_array();
                return $row['name'];
        }
         
}