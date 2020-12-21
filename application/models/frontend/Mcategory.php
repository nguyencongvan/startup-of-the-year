<?php
class Mcategory extends CI_Model {
    public function __construct()
    {
            parent::__construct();
            $this->table = $this->db->dbprefix('category');
    }
  
    public function category_id($link)
    {
        $this->db->where('link', $link);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['id'];
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

    public function category_link($id)
    {
        $this->db->where('id', $id);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['link'];
    }

    public function category_listcat($parentid)
    {
        $this->db->where('parentid', $parentid);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        $a[]=$parentid;
        if(count( $query->result_array()))
        {
            $list=$query->result_array();
            foreach ($list as $row) {
                $a[]=$row['id'];
            }
        }
        return $a;
    }

    public function category_banner($listcat)
    {
        foreach ($listcat as $value) {
            $this->db->or_where('banner', $value);
        }
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function category_list($parentid, $limit)
    {
        $this->db->where('parentid', $parentid);
        $this->db->limit($limit);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function category_menu($parentid)
    {
        $this->db->where('parentid', $parentid);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->order_by('orders asc, updated_at desc');
        //$this->db->order_by('updated_at', 'desc');
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function category_admin_list()
    {
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->order_by('created_at', 'desc');
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function customer_detail_id($id){
        $this->db->where('id', $id);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $query = $this->db->get('db_customer');
        return $query->row_array();
    }
    public function order_listorder_customerid($customerid){
        $this->db->where('customerid', $customerid);
        $this->db->where('trash', 1);
        $this->db->order_by('orderdate', 'desc');
        $query = $this->db->get('db_order');
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
    public function order_orderid($id) {
        $this->db->where('id', $id);
        $this->db->where('trash', 1);
        $this->db->order_by('orderdate', 'desc');
        $this->db->limit(1);
        $query = $this->db->get('db_order');
        return $query->row_array(); 
    }  
}