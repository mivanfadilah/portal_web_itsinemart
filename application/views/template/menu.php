<?php $iden = $iden->row_array()?>
<header>
  <!-- /navbar -->
  <nav class="navbar navbar-expand-xl navbar fixed-top bg-white">
    <div class="container">
      <a class="navbar-brand" href="<?php echo site_url() ?>">
        <img src="<?php echo base_url() . 'assetss/favicon/' . $iden['brand'] ?>" width="200" height="48" alt="">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li <?php echo (($this->uri->segment(1) == "beranda" || $this->uri->segment(1) == "") ? 'class="nav-item active"' : 'class="nav-item"') ?>>
            <a class="nav-link" href="<?php echo base_url() . 'beranda'; ?>"><i class="fa fa-home"></i> Beranda<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item dropdown <?php if ($this->uri->segment(1) == "sambutan" || $this->uri->segment(1) == "strukturorganisasi" || $this->uri->segment(1) == "visimisi" || $this->uri->segment(1) == "profilpegawai" || $this->uri->segment(1) == "tutorial") {
	echo 'active'
	;
}
?>">
        
      <li class="nav-item dropdown  <?php if ($this->uri->segment(1) == "berita" || $this->uri->segment(1) == "agenda" || $this->uri->segment(1) == "pengumuman") {
	echo 'active';}?>">
       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-newspaper-o"></i> 
        Berita
      </a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <a <?php echo (($this->uri->segment(1) == "berita") ? 'class="dropdown-item active"' : 'class="dropdown-item "') ?> href="<?php echo base_url() . 'berita'; ?>"><i class="fa fa-newspaper-o"></i> Berita</a>
        <a <?php echo (($this->uri->segment(1) == "pengumuman") ? 'class="dropdown-item active"' : 'class="dropdown-item "') ?> href="<?php echo base_url() . 'pengumuman'; ?>"><i class="fa fa-volume-up"></i> Pengumuman</a>
      </div>
    </li>
   
    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i>
          Profil
        </a>
        <div class="dropdown-menu " aria-labelledby="navbarDropdown">
          <a <?php echo (($this->uri->segment(1) == "sambutan") ? 'class="dropdown-item active"' : 'class="dropdown-item "') ?> href="<?php echo base_url() . 'sambutan'; ?>"><i class="fa fa-user"></i> Profil</a>
          <a <?php echo (($this->uri->segment(1) == "profilpegawai") ? 'class="dropdown-item active"' : 'class="dropdown-item "') ?> href="<?php echo base_url() . 'profilpegawai'; ?>"><i class="fa fa-users"></i> Profil Pegawai</a>
          <a <?php echo (($this->uri->segment(1) == "visimisi") ? 'class="dropdown-item active"' : 'class="dropdown-item "') ?> href="<?php echo base_url() . 'visimisi'; ?>"><i class="fa fa-thumb-tack"></i> Visi Misi</a>
          <a <?php echo (($this->uri->segment(1) == "strukturorganisasi") ? 'class="dropdown-item active"' : 'class="dropdown-item "') ?> href="<?php echo base_url() . 'strukturorganisasi'; ?>"><i class="fa fa-sitemap"></i> Struktur Organisasi</a>
        </div>
      </li>

    <li <?php echo (($this->uri->segment(1) == "serial" || $this->uri->segment(1) == "") ? 'class="nav-item active"' : 'class="nav-item"') ?>>
            <a class="nav-link" href="<?php echo base_url() . 'serialtv'; ?>"><i class="fa fa-film"></i> Serial TV<span class="sr-only">(current)</span></a>
          </li>

    <li class="nav-item dropdown  <?php if ($this->uri->segment(1) == "alurpelayanan" || $this->uri->segment(1) == "jenispelayanan") {
	echo 'active';}?>">
       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-volume-up"></i>
       Informasi
      </a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a <?php echo (($this->uri->segment(1) == "alurpelayanan") ? 'class="dropdown-item active"' : 'class="dropdown-item "') ?> href="<?php echo base_url() . 'alurpelayanan'; ?>"><i class="fa fa-hand-pointer-o"></i> Featured</a>
        <a <?php echo (($this->uri->segment(1) == "jenispelayanan") ? 'class="dropdown-item active"' : 'class="dropdown-item "') ?> href="<?php echo base_url() . 'jenispelayanan'; ?>"><i class="fa fa-info-circle"></i> Jenis Pelayanan</a>
        
      </div>
    </li>

    <li class="nav-item dropdown  <?php if ($this->uri->segment(1) == "gallery" || $this->uri->segment(1) == "instagram_gal") {
	echo 'active';}?>">
       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-picture-o"></i>
        Galeri
      </a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <a <?php echo (($this->uri->segment(1) == "gallery") ? 'class="dropdown-item active"' : 'class="dropdown-item "') ?> href="<?php echo base_url() . 'gallery'; ?>"><i class="fa fa-picture-o"></i> Galeri</a>
        <a <?php echo (($this->uri->segment(1) == "instagram_gal") ? 'class="dropdown-item active"' : 'class="dropdown-item "') ?> href="<?php echo base_url() . 'instagram_gal'; ?>"><i class="fa fa-file"></i> Files</a>
        <a <?php echo (($this->uri->segment(1) == "download") ? 'class="dropdown-item active"' : 'class="dropdown-item "') ?> href="<?php echo base_url() . 'download'; ?>"><i class="fa fa-download"></i> Download</a>


      </div>
    </li>

    <li <?php echo (($this->uri->segment(1) == "kontak" || $this->uri->segment(1) == "") ? 'class="nav-item active"' : 'class="nav-item"') ?>>
            <a class="nav-link" href="<?php echo base_url() . 'kontak'; ?>"><i class="fa fa-phone"></i> Kontak<span class="sr-only">(current)</span></a>
          </li>


</ul>
<a href="<?= site_url("auth"); ?>" class="btn btn-danger" style="box-shadow: 1px 1px 1px 1px #dc3545">Login</a>
</div>
</div>
</nav>
</header>