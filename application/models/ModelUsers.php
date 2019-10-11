<?php

    Class ModelUsers extends CI_Model{

        public function getDataUsers($username,$password)
        {
            $sql = "SELECT tb_users.username,fname,lname,email,password,type,id_address,street,rt,rw,village,districts,city,zip_code
                        FROM tb_users,tb_address
                        WHERE 
                            tb_users.username = tb_address.username AND
                            tb_users.username = ? AND
                            tb_users.password = ?";
            return $this->db->query($sql,array($username,md5($password)))->row_array();
        }

        public function insertDataUsers($username,$fname,$lname,$email,$password,$type)
        {
            $sql = "INSERT INTO tb_users VALUES(?,?,?,?,?,?)";
            return $this->db->query($sql,array($username,$fname,$lname,$email,md5($password),$type));
        }
    }