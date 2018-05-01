<?php 
    class Post_model extends CI_Model{
        
        public function get_posts($slug = FALSE){
            $this->load->database();
             if($slug === FALSE){
                $query = $this->db->get('posts');
                return $query->result_array();
                
            }

            $query = $this->db->get_where('posts', array('slug' => $slug));
            return $query->row_array();

        }

        public function post_create($title, $body , $slug){
            $data = array('title'=>$title,
                          'body'=>$body,
                          'slug'=>$slug );
            $res = $this->db->insert('posts' ,$data);     
           return $res;    
        }

            public function delete_post($id){
                $this->db->where('id', $id);
                $this->db->delete('posts');
                return true;
            }

            public function edit(){
                if($slug === FALSE){
                    $query = $this->db->get('posts');
                    return $query->result_array();
                    
                }
    
                $query = $this->db->get_where('posts', array('slug' => $slug));
                return $query->row_array();
    

            }



    }


?>