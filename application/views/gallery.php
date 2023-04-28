<?php $this->load->view('template/header');
$this->load->view('template/menu')?>
<div id="wrap">

  <div class="marketing">
    <?php $this->load->view('template/pathway')?>
    <div class="featurette-divider"></div>
    <section class="gallery-block compact-gallery">
     <div id="main" class="container clear-top">
      <div class="row">
        
        <div class="col-sm-9">
         <h3 class="p-title">Gallery <span style="color:#DC3545;">Foto </span></h3>
         
        <br>


        <div id="result" class="row no-gutters">
        <div class="row row-cols-5 row-cols-md-5 g-4">
        <?php foreach ($galeri->result() as $row): ?>
  <div class="col">
    <div class="card" style="width: 250px; margin-bottom:5px;">
     
      <img src="<?php echo site_url('assets/images/') . $row->gambar ?>" alt="" class="card-img-top">
      <div class="card-body">
        <h5 class="card-title"><?=  $row->judul; ?></h5>
        <div class="post-meta">
                  <p><i class="fa fa-user"></i><?=  $row->author; ?> <br><i class="fa fa-calendar"></i> <?=  $row->tanggal; ?><br> <i class="fa fa-tags"></i>Foto</p>
                </div>
      </div>
    </div>
  </div>
  <?php endforeach;?>
        </div>
      </div>
    </div>
  </div>

</div>
</section>

</div>
</div>
<!-- end feature yo-->
<!-- FOOTER -->
<?php $this->load->view('template/footer')?>
