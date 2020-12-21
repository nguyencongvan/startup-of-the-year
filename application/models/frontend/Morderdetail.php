<?php
class Morderdetail extends CI_Model {
    public function __construct()
    {
        parent::__construct();
        $this->table = $this->db->dbprefix('orderdetail');
    }

    public function orderdetail_insert($data)
    {
        $this->db->insert($this->table,$data);
    }   

    public function orderdetail_info()
    {
    	$this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function orderdetail_order($id)
    {
        $this->db->where('orderid', $id);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function orderdetail_order_join_product($id){
        $this->db->select('*');
        $this->db->from('db_orderdetail or');
        $this->db->where('or.orderid',$id);
        $this->db->join('db_product pr','pr.id = or.productid');
        $query = $this->db->get();
        return $query->result_array();
    }
}