<?php
class serialtv extends CI_Controller {
	function __construct() {
		parent::__construct();
		if ($this->session->userdata('masuk') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('m_identitas');
		$this->load->model('m_serialtv');
		$this->load->model('m_pengguna');
		$this->load->library('upload');
	}

	function index() {
		$x['iden'] = $this->m_identitas->get_all_identitas();
		$x['data'] = $this->m_serialtv->tampil_serialtv();
		$this->load->view('admin/v_serialtv', $x);
	}
	function add_serialtv() {
		$x['iden'] = $this->m_identitas->get_all_identitas();
		$this->load->view('admin/v_add_serialtv', $x);
	}
	function get_edit() {
		$kode = $this->uri->segment(4);
		$x['iden'] = $this->m_identitas->get_all_identitas();
		$x['data'] = $this->m_serialtv->get_serialtv_by_kode($kode);
		$this->load->view('admin/v_edit_serialtv', $x);
	}
	public function slugify($string) {
		//remove prepositions
		$preps = array('in', 'at', 'on', 'by', 'into', 'off', 'onto', 'from', 'to', 'with', 'a', 'an', 'the');
		$pattern = '/\b(?:' . join('|', $preps) . ')\b/i';
		$string = preg_replace($pattern, '', $string);

		// replace non letter or digits by -
		$string = preg_replace('~[^\\pL\d]+~u', '-', $string);

		// trim
		$string = trim($string, '-');

		// transliterate
		//$string = iconv('utf-8', 'us-ascii//TRANSLIT', $string);

		// lowercase
		$string = strtolower($string);

		// remove unwanted characters
		$string = preg_replace('~[^-\w]+~', '', $string);

		if (empty($string)) {
			return 'n-a';
		}

		return $string;
	}

	function simpan_serialtv() {
		$config['upload_path'] = './assets/images/serialtv/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya

		$this->upload->initialize($config);
		if (!empty($_FILES['filefoto']['name'])) {
			if ($this->upload->do_upload('filefoto')) {
				$gbr = $this->upload->data();
				//Compress Image
				$config['image_library'] = 'gd2';
				$config['source_image'] = './assets/images/serialtv/' . $gbr['file_name'];
				$config['create_thumb'] = FALSE;
				$config['maintain_ratio'] = FALSE;
				$config['quality'] = '60%';
				$config['width'] = 710;
				$config['height'] = 460;
				$config['new_image'] = './assets/images/serialtv/' . $gbr['file_name'];
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();

				$gambar = $gbr['file_name'];
				$judul = strip_tags($this->input->post('xjudul'));
				$isi = $this->input->post('xisi');
				$slug = $this->slugify($judul);
				$kode = $this->session->userdata('idadmin');
				$user = $this->m_pengguna->get_pengguna_login($kode);
				$p = $user->row_array();
				$userid = $p['id'];
				$this->m_serialtv->simpan_serialtv($judul, $isi, $userid, $gambar, $slug);
				echo $this->session->set_flashdata('msg', 'success');
				redirect('admin/serialtv');
			} else {
				echo $this->session->set_flashdata('msg', 'warning');
				redirect('admin/serialtv');
			}

		} else {
			redirect('admin/serialtv');
		}

	}

	function update_serialtv() {

		$config['upload_path'] = './assets/images/serialtv/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya

		$this->upload->initialize($config);
		if (!empty($_FILES['filefoto']['name'])) {
			if ($this->upload->do_upload('filefoto')) {
				$gbr = $this->upload->data();
				//Compress Image
				$config['image_library'] = 'gd2';
				$config['source_image'] = './assets/images/serialtv/' . $gbr['file_name'];
				$config['create_thumb'] = FALSE;
				$config['maintain_ratio'] = FALSE;
				$config['quality'] = '60%';
				$config['width'] = 710;
				$config['height'] = 460;
				$config['new_image'] = './assets/images/serialtv/' . $gbr['file_name'];
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();

				$gambar = $gbr['file_name'];
				$id = $this->input->post('kode');
				$judul = strip_tags($this->input->post('xjudul'));
				$isi = $this->input->post('xisi');
				$slug = $this->slugify($judul);
				$kode = $this->session->userdata('idadmin');
				$user = $this->m_pengguna->get_pengguna_login($kode);
				$p = $user->row_array();
				$userid = $p['id'];
				$images = $this->input->post('gambar');
				$path = './assets/images/serialtv/' . $images;
				if (file_exists($path)) {
					unlink($path);
				}

				$this->m_serialtv->update_serialtv($id, $judul, $isi, $userid, $gambar, $slug);
				echo $this->session->set_flashdata('msg', 'info');
				redirect('admin/serialtv');

			} else {
				echo $this->session->set_flashdata('msg', 'warning');
				redirect('admin/pengguna');
			}

		} else {
			$id = $this->input->post('kode');
			$judul = strip_tags($this->input->post('xjudul'));
			$isi = $this->input->post('xisi');
		$slug = $this->slugify($judul);
			$kode = $this->session->userdata('idadmin');
			$user = $this->m_pengguna->get_pengguna_login($kode);
			$p = $user->row_array();
			$userid = $p['id'];
			$this->m_serialtv->update_serialtv_tanpa_img($id, $judul, $isi, $userid, $slug);
			echo $this->session->set_flashdata('msg', 'info');
			redirect('admin/serialtv');
		}

	}

	function hapus_serialtv() {
		$kode = $this->input->post('kode');
		$gambar = $this->input->post('gambar');
		$path = './assets/images/serialtv/' . $gambar;
		unlink($path);
		$this->m_serialtv->hapus_serialtv($kode);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('admin/serialtv');
	}

}
