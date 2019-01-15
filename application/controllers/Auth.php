<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller
{
	public function login()
	{
		$method = $_SERVER['REQUEST_METHOD'];

		if($method != 'POST'){
			json_output(400,array('status' => 400,'message' => 'Bad request.'));
		} else {

			$check_auth_client = $this->auth_model->check_auth_client();
			
			if($check_auth_client == true){
				$request = $_POST;
		        
		        $username = $request['username'];
		        $password = $request['password'];

		        $response = $this->auth_model->login($username,$password);
				json_output($response['status'], $response);
			}
		}
	}

	public function logout()
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if($method != 'POST'){
			json_output(400,array('status' => 400,'message' => 'Bad request.'));
		} else {
			$check_auth_client = $this->auth_model->check_auth_client();
			if($check_auth_client == true){
		        $response = $this->auth_model->logout();
				json_output($response['status'],$response);
			}
		}
	}

}
