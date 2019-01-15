<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Categories extends CI_Controller
{
	public function __construct()
    {
        parent::__construct();
        /*
        $check_auth_client = $this->auth_model->check_auth_client();
		if($check_auth_client != true){
			die($this->output->get_output());
		}
		*/
    }

	public function list()
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if($method != 'GET'){
			json_output(array('status' => 400,'message' => 'Bad request.'));
		} else {
			$check_auth_client = $this->auth_model->check_auth_client();
			if($check_auth_client == true){
		        $response = $this->auth_model->auth();
		        if($response['status'] == 200){
		        	$data['status'] = 200;
		        	$data['error'] = False;
		        	$data['message'] = 'List of all products categories';
		        	$data['response'] = $this->categories_model->categories_all_data();
	    			json_output($response['status'], $data);
		        }
			}
		}
	}

	public function detail($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if($method != 'GET'){
			json_output(400, array('status' => 400,'message' => 'Bad request.'));
		} else {
			$check_auth_client = $this->auth_model->check_auth_client();
			if($check_auth_client == true){
		        $response = $this->auth_model->auth();
		        if($response['status'] == 200){
		        	$data['status'] = 200;
		        	$data['error'] = False;
		        	$data['message'] = 'List of all products categories';
		        	$data['response'] = $this->categories_model->categories_detail_data($id);
					json_output($response['status'], $data);
		        }
			}
		}
	}

	public function create()
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if($method != 'POST'){
			json_output(400,array('status' => 400,'message' => 'Bad request.'));
		} else {
			$check_auth_client = $this->auth_model->check_auth_client();
			if($check_auth_client == true){
		        $response = $this->auth_model->auth();
		        $respStatus = $response['status'];
		        if($response['status'] == 200){
					$request = $_POST;
					if ($request['category_name'] == "") {
						$respStatus = 400;
						$resp = array('status' => 400,'message' =>  'Category name can\'t empty', 'response' => $request);
					} else {
		        		$resp = $this->categories_model->categories_create_data($request);
					}
					json_output($respStatus,$resp);
		        }
			}
		}
	}

	public function update($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if($method != 'POST'){
			json_output(400, array('status' => 400,'message' => 'Bad request.'));
		} else {
			$check_auth_client = $this->auth_model->check_auth_client();
			if($check_auth_client == true){
		        $response = $this->auth_model->auth();
		        $respStatus = $response['status'];
		        if($response['status'] == 200){
					$request = $_POST;
					$request['updated_at'] = date('Y-m-d H:i:s');
					$request['created_at'] = date('Y-m-d H:i:s');
					$request['updated_by'] = 'Uzzal Roy';
					if ($request['category_name'] == "") {
						$respStatus = 400;
						$resp = array('status' => 400,'message' =>  'Category name can\'t empty');
					} else {
		        		$resp = $this->categories_model->categories_update_data($id, $request);
					}
					json_output($respStatus,$resp);
		        }
			}
		}
	}

	public function delete($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if($method != 'DELETE'){
			json_output(400, array('status' => 400,'message' => 'Bad request.'));
		} else {
			$check_auth_client = $this->auth_model->check_auth_client();
			if($check_auth_client == true){
		        $response = $this->auth_model->auth();
		        if($response['status'] == 200){
		        	$resp = $this->categories_model->categories_delete_data($id);
					json_output($response['status'],$resp);
		        }
			}
		}
	}
}
