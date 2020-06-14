<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This controller can be accessed
 * for (all) non logged in users
 */
class Auth extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('auth_model', 'auth');
	}

	public function logged_in_check()
	{
		if ($this->session->userdata("masuk")) {
			redirect('cetak');
		}
	}

	public function index()
	{
		// var_dump(APPPATH . "session");
		// $this->logged_in_check();

		$this->load->library('form_validation');
		$this->form_validation->set_rules("username", "Username", "trim|required");
		$this->form_validation->set_rules("password", "Password", "trim|required");

		if ($this->form_validation->run() == true) {
			// check the username & password of user
			$status = $this->auth->validate();
			if ($status == 'pass salah') {
				$this->session->set_flashdata("error", "Username atau Password salah");
			} elseif ($status == 'name salah') {
				$this->session->set_flashdata("error", "Username atau Password salah");
			} else {
				$username = $this->input->post('username');
				// $this->load->model('Auth_model');
				// store the user data to session
				$user = $this->auth->get_data();
				$user['masuk'] = TRUE;
				$this->session->set_userdata('user', $user);
				// var_dump($this->session);
				// redirect to dashboard
				redirect("cetak");
			}
		}

		$this->load->view("newui/sign-in");
	}


	public function logout()
	{
		$this->session->unset_userdata("masuk");
		$this->session->sess_destroy();
		redirect("/");
	}
}
