<?php
class Mmenu extends CI_Model {
        public function __construct()
        {
                parent::__construct();
                $this->table = $this->db->dbprefix('menu');
        }
        //Load menu động cấp 1
        public function menu_list($parentid,$pos)
        {
                $this->db->where('parentid', $parentid);
                $this->db->where('status', 1);
                $this->db->where('trash', 1);
                $this->db->like('position',$pos);
                $this->db->order_by('orders', 'asc');
                $query = $this->db->get($this->table);
                return $query->result_array();
        }

        public function menu_list_limit($parentid,$pos)
        {
                $this->db->where('parentid', $parentid);
                $this->db->where('status', 1);
                $this->db->where('trash', 1);
                $this->db->like('position',$pos);
                $this->db->order_by('orders', 'asc');
                $this->db->limit(6);
                $query = $this->db->get($this->table);
                return $query->result_array();
        }
}