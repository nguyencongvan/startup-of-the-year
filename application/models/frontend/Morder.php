<?php
class Morder extends CI_Model {
        public function __construct()
        {
                parent::__construct();
                $this->table = $this->db->dbprefix('order');
        }

        public function order_detail_customerid($customerid)
        {
                $this->db->where('customerid', $customerid);
                $this->db->where('trash', 1);
                $this->db->order_by('orderdate', 'desc');
                $this->db->limit(1);
                $query = $this->db->get($this->table);
                return $query->row_array();
        }

        public function order_insert($mydata)
        {
                $this->db->insert($this->table,$mydata);
        }

        public function order_listorder_customerid($customerid)
        {
                $this->db->where('customerid', $customerid);
                $this->db->where('trash', 1);
                $this->db->order_by('orderdate', 'desc');
                $query = $this->db->get($this->table);
                return $query->result_array();
        } 

        public function order_orderid($id)
        {
                $this->db->where('id', $id);
                $this->db->where('trash', 1);
                $this->db->order_by('orderdate', 'desc');
                $this->db->limit(1);
                $query = $this->db->get($this->table);
                return $query->row_array(); 
        }  
}