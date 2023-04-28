<!DOCTYPE html>
<html>
<head>
 <?php $this->load->view('admin/v_meta')?>

  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/bootstrap/css/bootstrap.min.css' ?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/font-awesome/css/font-awesome.min.css' ?>">
  <!-- Ionicons -->
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css' ?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url() . 'assets/dist/css/AdminLTE.min.css' ?>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
   folder instead of downloading all of them to reduce the load. -->
   <link rel="stylesheet" href="<?php echo base_url() . 'assets/dist/css/skins/_all-skins.min.css' ?>">
<?php
/* Mengambil query report*/
if (!empty($visitor)) {
	foreach ($visitor as $result) {
		$bulan[] = $result->tgl; //ambil bulan
		$value[] = (float) $result->jumlah; //ambil nilai
	}
}

/* end mengambil query*/

?>

</head>
<body class="hold-transition skin-red sidebar-mini fixed skin-red-light">
  <div class="wrapper">

    <!--Header-->
    <?php
$this->load->view('admin/v_header');
$this->load->view('admin/v_menu');
?>

    <!-- Left side column. contains the logo and sidebar -->


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Dashboard
          <br>
        </h1>
 <?php $this->load->view('admin/v_bread')?>

      </section>

      <!-- Main content -->
      <section class="content">
       

        <div class="row">
          <div class="col-md-12">
            <div class="box">
              <div class="box-header with-border">
                <h3 class="box-title">Pengunjung Bulan Ini</h3>

              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <div class="row">
                  <div class="col-md-12">

                    <div class="col-md-12">
                      <canvas id="canvas" width="1000" height="280"></canvas>
                    </div>
                    <!-- /.chart-responsive -->
                  </div>
                  <!-- /.col -->

                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- ./box-body -->

              <!-- /.box-footer -->
            </div>
            <!-- /.box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->

        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <div class="col-md-8">
            <!-- MAP & BOX PANE -->
            <div class="box box-success">
              <div class="box-header with-border">
                <h3 class="box-title">Posting Populer</h3>

                <table class="table">
                  <?php
$query = $this->db->query("SELECT * FROM tb_berita ORDER BY tayang DESC");
foreach ($query->result_array() as $i):
	$id = $i['id'];
	$judul = $i['judul'];
	$tayang = $i['tayang'];
	?>
																																					                   <tr>
																																					                    <td><?php echo $judul; ?></td>
																																					                    <td><?php echo $tayang . ' Views'; ?></td>
																																					                  </tr>
																																					                <?php endforeach;?>
              </table>
            </div>

            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- /.box -->
        </div>
        <!-- /.col -->

        
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php $this->load->view('admin/v_footer');?>



</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="<?php echo base_url() . 'assets/plugins/jQuery/jquery-2.2.3.min.js' ?>"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo base_url() . 'assets/bootstrap/js/bootstrap.min.js' ?>"></script>
<!-- FastClick -->
<script src="<?php echo base_url() . 'assets/plugins/fastclick/fastclick.js' ?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url() . 'assets/dist/js/app.min.js' ?>"></script>
<!-- Sparkline -->
<script src="<?php echo base_url() . 'assets/plugins/sparkline/jquery.sparkline.min.js' ?>"></script>
<!-- jvectormap -->
<script src="<?php echo base_url() . 'assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js' ?>"></script>
<script src="<?php echo base_url() . 'assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js' ?>"></script>
<!-- SlimScroll 1.3.0 -->
<script src="<?php echo base_url() . 'assets/plugins/slimScroll/jquery.slimscroll.min.js' ?>"></script>
<!-- ChartJS 1.0.1 -->
<script src="<?php echo base_url() . 'assets/plugins/chartjs/Chart.min.js' ?>"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?php echo base_url() . 'assets/dist/js/pages/dashboard2.js' ?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url() . 'assets/dist/js/demo.js' ?>"></script>

<script>

  var lineChartData = {
    labels : <?php echo json_encode($bulan); ?>,
    datasets : [

    {
      fillColor: "rgba(60,141,188,0.9)",
      strokeColor: "rgba(60,141,188,0.8)",
      pointColor: "#3b8bba",
      pointStrokeColor: "#fff",
      pointHighlightFill: "#fff",
      pointHighlightStroke: "rgba(152,235,239,1)",
      data : <?php echo json_encode($value); ?>
    }

    ]

  }

  var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Line(lineChartData);

  var canvas = new Chart(myLine).Line(lineChartData, {
    scaleShowGridLines : true,
    scaleGridLineColor : "rgba(0,0,0,.005)",
    scaleGridLineWidth : 0,
    scaleShowHorizontalLines: true,
    scaleShowVerticalLines: true,
    bezierCurve : true,
    bezierCurveTension : 0.4,
    pointDot : true,
    pointDotRadius : 4,
    pointDotStrokeWidth : 1,
    pointHitDetectionRadius : 2,
    datasetStroke : true,
    tooltipCornerRadius: 2,
    datasetStrokeWidth : 2,
    datasetFill : true,
    legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
    responsive: true
  });

</script>

</body>
</html>
