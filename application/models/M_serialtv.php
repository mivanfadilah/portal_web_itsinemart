<?php
class M_serialtv extends CI_Model {
	function get_all_serialtv() {
		$hsl = $this->db->query("SELECT tb_serialtv.*,DATE_FORMAT(tanggal,'%d/%m/%Y') AS tanggal1 FROM tb_serialtv ORDER BY tanggal DESC");
		return $hsl;
	}
	function tampil_serialtv() {
		$hsl = $this->db->query("SELECT tb_serialtv.id, tb_serialtv.judul, tb_serialtv.tanggal, tb_serialtv.isi, tb_serialtv.slug,tb_serialtv.gambar,tb_user.nama AS author, DATE_FORMAT(tanggal,'%d/%m/%Y') AS tanggal1 FROM tb_serialtv INNER join tb_user on tb_serialtv.userid = tb_user.id ORDER BY tb_serialtv.tanggal DESC");
		return $hsl;
	}

	function simpan_serialtv($judul, $isi, $userid, $gambar, $slug) {
		$hsl = $this->db->query("insert into tb_serialtv(judul,isi,userid,gambar,slug) values ('$judul','$isi','$userid','$gambar','$slug')");
		return $hsl;
	}
	function get_serialtv_by_kode($kode) {
		$hsl = $this->db->query("SELECT tb_serialtv.*,DATE_FORMAT(tanggal,'%d/%m/%Y') AS tanggal FROM tb_serialtv where id='$kode'");
		return $hsl;
	}
	function update_serialtv($id, $judul, $isi, $userid, $gambar, $slug) {
		$hsl = $this->db->query("update tb_serialtv set judul='$judul',isi='$isi',userid='$userid',gambar='$gambar',slug='$slug' where id='$id'");
		return $hsl;
	}
	function update_serialtv_tanpa_img($id, $judul, $isi, $userid, $slug) {
		$hsl = $this->db->query("update tb_serialtv set judul='$judul',isi='$isi',userid='$userid',slug='$slug' where id='$id'");
		return $hsl;
	}
	function hapus_serialtv($kode) {
		$hsl = $this->db->query("delete from tb_serialtv where id='$kode'");
		return $hsl;
	}

	//Front-End
	function get_serialtv() {
		// $hsl = $this->db->query("SELECT tb_serialtv.*,DATE_FORMAT(tanggal,'%d/%m/%Y') AS tanggal FROM tb_serialtv ORDER BY id DESC limit 4");
		// return $hsl;
		$this->db->select('*,DATE_FORMAT(tanggal,"%d %M %Y %h:%i ") AS tanggal1');
		$this->db->from('tb_serialtv');
		$this->db->order_by('tanggal', 'DESC');
		$this->db->limit(6);
		$hsl = $this->db->get();
		return $hsl;
	}
	function get_serialtv1() {
		// $hsl = $this->db->query("SELECT tb_serialtv.*,DATE_FORMAT(tanggal,'%d/%m/%Y') AS tanggal FROM tb_serialtv ORDER BY id DESC limit 4");
		// return $hsl;
		$this->db->select('*,DATE_FORMAT(tanggal,"%d %M %Y") AS tanggal1');
		$this->db->from('tb_serialtv');
		$this->db->order_by('tanggal', 'DESC');
		$this->db->limit(6);
		$hsl = $this->db->get();
		return $hsl;
	}

	function serialtv_perpage($offset, $limit) {
		$hsl = $this->db->query("SELECT tb_serialtv.*,DATE_FORMAT(tanggal,'%d %M %Y %h:%i') AS tanggal1 FROM tb_serialtv ORDER BY tanggal DESC limit $offset,$limit");
		return $hsl;
	}

	function serialtv() {
		$hsl = $this->db->query("SELECT tb_serialtv.*,DATE_FORMAT(tanggal,'%d/%m/%Y') AS tanggal1 FROM tb_serialtv ORDER BY tanggal DESC");
		return $hsl;
	}
	function get_serialtvd_by_kode($kode) {
		$hsl = $this->db->query("SELECT tb_serialtv.id, tb_serialtv.judul, tb_serialtv.tanggal, tb_serialtv.isi, tb_serialtv.slug,tb_serialtv.gambar,tb_user.nama AS author, DATE_FORMAT(tanggal,'%d %M %Y %h:%i') AS tanggal1 FROM tb_serialtv INNER join tb_user on tb_serialtv.userid = tb_user.id where tb_serialtv.id='$kode'");
		return $hsl;
	}

	function cari_serialtv($keyword) {
		$hsl = $this->db->query("SELECT tb_serialtv.*,DATE_FORMAT(tanggal,'%d/%m/%Y') AS tanggal1 FROM tb_serialtv WHERE judul LIKE '%$keyword%' LIMIT 5");
		return $hsl;
	}

}
