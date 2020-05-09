<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Config_model extends CI_Model
{
    public function getConfig($config_name)
    {
        return $this->db->get_where('config', ['key' => $config_name])->row()->value;
    }
}
