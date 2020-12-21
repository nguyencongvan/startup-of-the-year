<?php
class Mconfig extends CI_Model {
        public function __construct(){
                parent::__construct();
                $this->table = $this->db->dbprefix('config');
        }

        public function config_price_ship(){
                $query = $this->db->get($this->table);
                $row=$query->row_array();
                return $row['priceShip'];
        }
         
}