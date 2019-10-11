<?php

    class ModelAddress extends CI_Model{

        public function insertDataAddress($street,$rt,$rw,$village,$districts,$city,$zip_code,$username)
        {
            $sql = "INSERT INTO tb_address VALUES(?,?,?,?,?,?,?,?,?)";
            return $this->db->query($sql,array("",$street,$rt,$rw,$village,$districts,$city,$zip_code,$username));
        }
    }