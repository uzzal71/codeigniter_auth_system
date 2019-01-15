<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class categories_model extends CI_Model
{
	/**
	**
	**/
	public function categories_all_data()
    {
        return $this->db->select('*')->from('tbl_categories')->order_by('id','desc')->get()->result();
    }

    /**
    **
    **/
    public function categories_detail_data($id)
    {
        return $this->db->select('*')->from('tbl_categories')->where('id',$id)->order_by('id','desc')->get()->row();
    }

    /**
    **
    **/
    public function categories_create_data($data)
    {
        $this->db->insert('tbl_categories',$data);
        return array('status' => 201,'message' => 'Data has been created.');
    }

    /**
    **
    **/
    public function categories_update_data($id, $data)
    {
        $this->db->where('id',$id)->update('tbl_categories',$data);
        return array('status' => 200,'message' => 'Data has been updated.', 'data' => $data);
    }

    /**
    **
    **/
    public function categories_delete_data($id)
    {
        $this->db->where('id',$id)->delete('tbl_categories');
        return array('status' => 200,'message' => 'Data has been deleted.');
    }
}
