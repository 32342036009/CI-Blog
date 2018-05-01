<?php
class User extends CI_Controller{
    function __construct()
{
    parent :: __construct();
    $this->load->model('Post_model');
    $this->load->library('session');

}
    public function index($slug=NULL){        
    }

    public function posts(){
        $this->load->database();
         $data['posts'] = $this->Post_model->get_posts();
        // echo '<pre>';
        // print_r($data['post']);
        $this->load->view('index',$data);
    }
     
    public function view(){            
        $data['posts'] = $this->Post_model->get_posts();
       //echo '<pre>'; print_r($data['post']);
           //$data['title'] = $data['posts']['title'];
             $this->load->view('views', $data);
        }
        

        public function create(){
           $this->load->view('create_post');
           if(isset($_POST['submit'])){
            $slug = url_title($this->input->post('title'));
            $tite =  $this->input->post('title');
           $body =  $this->input->post('body');
           $Result = $this->Post_model->post_create($tite,$body,$slug);
            if($Result){
                $this->session->set_flashdata('post_created', 'Your post has been created!.');
                redirect('User/posts');
            }


           }

        }


        public function delete($id){
          echo $Res = $this->Post_model->delete_post($id); 
          if($Res){
          //$this->session->set_flashdata('post_delete', 'are you sure you want to delete this Post!.'); 
          redirect('User/posts');
          }
         }


         public function edit(){
            $this->load->view('edit');
             $data['posts'] = $this->Post_model->get_posts();
             $this->load->view('edit',$data);


         }




}



?>