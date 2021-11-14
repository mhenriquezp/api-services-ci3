<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Emplyees_model extends CI_Model
{
    protected $user_table = 'Employees';
    private $db_srv = "";

    public function __construct()
    {
        $this->load->database();
    }

    public function getEmployeeId($id)
    {
        $this->db->select("*");
        $this->db->from("Employees");
        //$this->db->where("EmployeeID",$id);
        $consulta = $this->db->get();
        return $consulta;
    }
}