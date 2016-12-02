<?php
 
class Membership_model extends Model{
    
    function validate()
    {
        $this->db->where('me_ic',  $this->input->post('ic'));
        $this->db->where(password, md5($this->input->post('password')));
        $query = $this->db->get('member');
        
        if($query->num_rows == 1)
        {
            return true;
        }
    }
}