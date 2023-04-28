<?php $this->load->view('template/header');
$this->load->view('template/menu')?>
<div class="marketing">
  <?php $this->load->view('template/pathway')?>
  <div class="featurette-divider"></div>
  <div class="container">
    <div class="row">
      <?php $row = $jp->row_array()?>
      <!-- Blog Entries Column -->
      <div class="col-md-8">

      
       <!-- Post Content -->
       <div class="">
        <?php
$x = 0;
foreach ($jp->result_array() as $i):
	$x++;
	?>
				         <button class="" onclick="openCity(event, '<?php echo $i["id"] ?>')" id="<?php if ($x == 1) {
		echo 'defaultOpen';}?>"><?php echo $i['judul'] ?></button>
				        <?php endforeach;?>
      </div>
      <?php
foreach ($jp->result_array() as $x):
?>
        <div id="<?php echo $x['id'] ?>" class="tabcontent">
          <h3><?php echo $x['judul'] ?></h3>
          <p><center> <?php echo  $x['isi'] ?></p></center>
        </div>
      <?php endforeach;?>
      <hr>
    </div>

    <!-- Sidebar Widgets Column -->
    <div class="col-md-4">
     <?php $this->load->view('template/widget')?>

   </div>

 </div>
</div>

</div>
<!-- end feature yo-->
<!-- FOOTER -->
<?php $this->load->view('template/footer')?>
