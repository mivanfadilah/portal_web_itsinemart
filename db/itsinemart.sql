-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 09:06 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itsinemart`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_agenda`
--

CREATE TABLE `tb_agenda` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deskripsi` text NOT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `tempat` varchar(90) NOT NULL,
  `color` varchar(7) NOT NULL,
  `ket` varchar(200) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `slug` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_agenda`
--

INSERT INTO `tb_agenda` (`id`, `nama`, `tanggal`, `deskripsi`, `startdate`, `enddate`, `tempat`, `color`, `ket`, `userid`, `slug`) VALUES
(14, 'Pelatihan Web Site', '2023-04-14 04:17:40', 'Pelatihan website yang diselnggarakan Ruang Casting', '2023-04-15 08:00:00', '2023-04-15 10:00:00', 'Ruang Casting', '#121da6', 'Harap Hadir\r\n', 7, 'pelatihan-web-site'),
(15, 'Buka Bersama', '2023-04-17 03:11:04', 'Semua Karyawan wajib kumpul', '2023-04-17 17:30:00', '2023-04-17 18:50:00', 'Ruang Meeting', '#000000', 'WAJIB', 7, 'buka-bersama'),
(16, 'Meeting', '2023-04-18 07:48:01', 'Meeting', '2023-04-18 14:47:41', '2023-04-18 16:47:45', 'Meeting', '#f20000', 'Meeting', 7, 'meeting'),
(18, 'test', '2023-04-27 06:56:13', 'test', '2023-04-28 16:50:00', '2023-04-28 04:54:50', 'Ruang Meeting', '', 'test', 7, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tb_album`
--

CREATE TABLE `tb_album` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) NOT NULL,
  `count` int(11) DEFAULT 0,
  `cover` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_album`
--

INSERT INTO `tb_album` (`id`, `nama`, `tanggal`, `userid`, `count`, `cover`) VALUES
(1, 'Serial TV', '2023-04-19 04:26:33', 7, 2, '968a643085c7fd6ee741f7c9283aa5ca.png'),
(2, 'FTV', '2023-04-19 04:25:25', 7, 1, 'cbfe16ecb40ac9516f41703fad96da05.jpg'),
(3, 'IT', '2023-04-26 04:36:59', 7, 3, '776bcacbf987ade6ebf402e6823bda69.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `tanggal` datetime NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tayang` int(11) DEFAULT 0,
  `slug` varchar(200) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `kategoriid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `judul`, `tanggal`, `isi`, `gambar`, `tayang`, `slug`, `userid`, `kategoriid`) VALUES
(17, 'Cinta Yang Tak Sederhana', '2023-04-25 14:59:53', '<h4 style=\"text-align:justify\"><strong><span style=\"font-size:14px\">Sinopsis</span></strong></h4>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>PRABU BARATA&nbsp;</strong>adalah pengusaha tajir yang memiliki istri bernama&nbsp;<strong>ZARA</strong>&nbsp;dan mereka memiliki seorang anak bernama&nbsp;<strong>ABAS</strong>. Awalnya Abas dijodohkan dengan&nbsp;<strong>MAYA</strong>. Tapi Abas justru jatuh cinta pada office girl di kantornya bernama&nbsp;<strong>MEGA</strong>. Walau Prabu dan Zara tahu kalau Abas mencintai Mega, tapi kedua orangtua Abas itu tetap menikahkan Abas dengan Maya.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Maya tidak suka dengan pasangan Ria dan Joko karena kedua orang itu tahu soal perselingkuhannya dengan Boby. Boby&nbsp;membunuh Joko karena tahu perselingkuhannya. Karena sakit hati dengan sikap Maya dan Boby yang sudah membunuh suaminya, saat Ria melahirkan, Ria pun menukar bayinya itu dengan bayi yang baru dilahirkan Maya. Ria menukar bayinya itu dengan tujuan agar anak kandungnya itu bisa hidup bahagia sebagai pewaris tunggal seluruh harta keluarga Prabu Barata. Anak kandung Ria itu pun akhirnya diakui Prabu sebagai cucunya dan diberi nama&nbsp;<strong>RAJA</strong>, sementara anak Maya yang dirawat Ria akhirnya diberi nama&nbsp;<strong>ADI</strong>.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Waktu berlalu, Raja akhirnya tumbuh besar bersama Adi. Mereka berdua juga memiliki teman dekat bernama&nbsp;<strong>NASYA</strong>, anak kandung dari pengusaha sukses&nbsp;<strong>MAHDI&nbsp;</strong>dan&nbsp;<strong>LIZA</strong>&nbsp;yang merupakan mitra penting Prabu Barata di perusahaannya.&nbsp;Nasya sudah jatuh cinta pada Raja karena ketampanannya.&nbsp;Diam-diam Adi justru menyukai dan jatuh cinta pada Nasya sejak mereka masih kecil. Namun karena Nasya tahu bahwa Adi hanyalah anak pembantu Prabu, Nasya sama sekali tidak memperhatikan Adi, bahkan Nasya cenderung sinis terhadap Adi.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h4 style=\"text-align:justify\"><strong><span style=\"font-size:14px\">Cast &amp;&nbsp;Crew</span></strong></h4>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">DANNIA SALSABILLA&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">ERDIN WERDRAYANA &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">ISE IRISH&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">JEREMIE MOEREMANS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">DINA LORENZA&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">ADAM JORDAN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">WINDY WULANDARI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">MINATI ATMANEGARA&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">PIERRE GRUNO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">REYNOLD SURBAKTI&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">HIKMAL ABRAR&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">TRI A NINGTYAS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">ADITYA HERPAVI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">ENA PASARIBU&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></li>\r\n</ul>\r\n\r\n<h4 style=\"text-align:justify\"><strong><span style=\"font-size:14px\">Production Stils</span></strong></h4>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Sutradara&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ssharad Sharaan</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Produser&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lili Wong</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Produser Eksekutif&nbsp; &nbsp; &nbsp; &nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; David S. Suwarto</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Cerita &amp; Skenario&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gajra Kottary &amp; Serena Luna</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Produksi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sinemart</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Judul Lagu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MASIH BELUM LUPA</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Penyanyi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ade Govinda Feat. Anneth</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Pencipta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ade Govinda</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Produksi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mymusic Records &amp; Rans Music</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Publisher&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kreatif Indigo Musik</span></li>\r\n</ul>\r\n', 'a87ef2b739bc5b7e9ed9fd7eeca68325.jpg', 17, 'cinta-yang-tak-sederhana', 7, 4),
(18, 'Bidadari Surgamu', '2023-04-25 15:00:03', '<h4 style=\"text-align:justify\"><span style=\"font-size:14px\"><strong>Sinopsis</strong></span></h4>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Cerita berawal dari momen tiup lilin ulang tahun&nbsp;<strong>Sakinah (20),&nbsp;</strong>seorang perempuan yang sejak lahir dibuang oleh orang tuanya dan akhirnya dirawat oleh&nbsp;<strong>Pak Haidar (53)&nbsp;</strong>dan&nbsp;<strong>Ibu Hamidah (50)</strong>. Sejak itu Sakinah hidup bersama keluarga Pak Haidar yang terdiri dari:&nbsp;<strong>Salim (28)&nbsp;</strong>anak kandung pertama,&nbsp;<strong>Namira (20)&nbsp;</strong>anak&nbsp;&nbsp;&nbsp;&nbsp; kandung kedua,&nbsp;<strong>Sofia (26)&nbsp;</strong>istri Salim,&nbsp;<strong>dan Azam (4)&nbsp;</strong>anak dari Salim dan Sofia. Salim bekerja di sebuah perusahaan, sementara istrinya adalah perempuan yang sangat matre. Di rumah mereka juga tinggal keponakannya Pak Haidar bernama&nbsp;<strong>Fadil (25)&nbsp;</strong>yang sudah bekerja.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Sakinah tidak pernah tahu siapa orang tuanya, tapi setiap tahun ibu kandungnya selalu mengirim hadiah ulang tahun untuk Sakinah. Malam itu,&nbsp;<strong>Ibu Lauza (39)&nbsp;</strong>diam-diam menyimpan hadiah di depan pagar rumah Pak Haidar. Ternyata dia adalah ibu kandung Sakinah. Ibu Lauza sempat dilihat dan langsung dikejar oleh Sakinah. Aksi kejar-kejaran ini direkam oleh tetangga bernama Ibu Husna. Tapi pagi hari saat rekaman itu mau dilihat oleh Sakinah, HP Ibu Husna terlindas oleh mobil mewah Denis.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Denis satu mobil dengan Sakinah, mobil Denis mogok di jalanan sepi. Saat itu juga sedang ada razia pasangan mesum oleh polisi dan reporter berita. Denis mengaku kalau dia dan Sakinah adalah pasutri, tapi polisi segera tahu itu bohong. Alhasil mereka dibawa ke kantor polisi.&nbsp;Pak Haidar dan Ibu Hamidah mulai khawatir, mereka berencana menikahkan Sakinah dengan Denis.&nbsp;Sementara Ibu Lauza merasa prihatin pada Sakinah dan bercerita pada&nbsp;<strong>Andrew (25),&nbsp;</strong>kakak kandung Denis yang tinggal di London, untuk membujuk Denis agar mau menikahi Sakinah. Sedangkan&nbsp;<strong>Kania (17)</strong>, adik tiri Denis malah mengatai Sakinah itu cewek gak bener. Singkat cerita Denis setuju menikahi Sakinah dengan niatan untuk balas dendam karena gara- gara Sakinah, dia diputusin Flora.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Meski banyak yang tak setuju dengan pernikahan ini, tapi pernikahan Denis dan Sakinah tetap berjalan. Ibu Lauza sangat senang bisa dekat dengan anak kandungnya. Tapi sejak Sakinah tinggal di rumah Denis, tekanan datang bertubi-tubi dari Pak Mario dan Kania, serta Denis yang mengacuhkan Sakinah. Sementara Ibu Lauza tidak mau kalau sampai mereka tahu bahwa Sakinah adalah anaknya.</span></p>\r\n\r\n<h4 style=\"text-align:justify\"><strong><span style=\"font-size:14px\">Cast &amp;&nbsp;Crew</span></strong></h4>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">SALSHABILLA ADRIANI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">RIZKY NAZAR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">JOSEPHINE FIRMSTONE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">DOSMA HAZENBOSCH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">REZCA SYAM&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">YATTI OCTAVIA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">PANGKY SUWITO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">MIKE LUCOCK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">YUZAR NAZAROS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">KARLINA INAWATI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">VIRZA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">YABES YOSIA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n</ul>\r\n\r\n<h4 style=\"text-align:justify\"><strong><span style=\"font-size:14px\">Production Stils</span></strong></h4>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Sutradara&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Anurag Vaishnav</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Produser&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sridhar Jetty</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Produser Eksekutif&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; David S. Suwarto</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Cerita &amp; Skenario&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ashivery Kumar</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Produksi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Essjay Studios</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Judul Lagu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AKU BUKAN MALAIKAT</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Penyanyi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dato&rsquo; Sri Siti Nurhaliza</span></li>\r\n</ul>\r\n', 'cdd997adf7b34051f81004e3ab3e8403.jpg', 11, 'bidadari-surgamu', 7, 4),
(19, 'Belok Kanan Jalan Terus', '2023-04-25 15:00:15', '<h4 style=\"text-align:justify\"><strong><span style=\"font-size:14px\">Sinopsis</span></strong></h4>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Kalo ada yang nanya jalan menuju surga, jawab aja, &ldquo;Belok kanan terus lurus.&rdquo; Ini adalah kisah tentang orang-orang yang pernah berada di kiri jalan, lalu karena faktor hidayah memutuskan untuk berbelok ke kanan. Tapi langkah menuju shirothol mustaqim alias jalan yang lurus ternyata tidaklah mudah. Setan paling doyan menggoda hamba yang beriman.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Kejadiannya di sebuah kampung di pinggiran Jakarta. Tepatnya Kampung Cisomplak. Ada lurah yang mantan ketua preman, BANG JAY. Ada ustad yang dulunya artis spesialis antagonis, USTAD ROBERT. Ada pemilik warung makan yang ternyata bekas dukun professional, BANG URIP. Ada hijaber yang video asusilanya sempat viral, SEKAR. Ada juga cowok tukang galon yang kapok jadi tukang mabok, BARA. Terakhir, ada marbot masjid yang fasih ngoceh soal bisnis dan ekonomi karena dia pernah menjabat sebagai direktur, PAK WIN.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Mereka semua sekarang udah pada hijrah. Tapi untuk bisa tetap istiqomah bukanlah perkara mudah. Dosa masa lalu mereka seolah masih terus mengejar. Kira-kira begitulah pesan moral yang ingin disampaikan dalam serial ini.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Inilah drama kehidupan yang dibingkai dengan figura komedi. Terasa satir dan getir. Karena mewakili banyak perasaan para penonton. Mereka seperti sedang berkaca dan akan berkata, &ldquo;Ini gue banget! Gue pernah ngalamin kayak gini!&rdquo;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\">Karakter yang hidup, dialog yang kuat dan cerita yang unik akan membuat mereka betah berlama-lama di depan TV sambil ngemil atau nyetrika. Banyak tertawa dan sesekali mengusap</span></p>\r\n\r\n<h4 style=\"text-align:justify\"><strong><span style=\"font-size:14px\">Cast &amp;&nbsp;Crew</span></strong></h4>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">CUT MEYRISKA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">ROGER DANUARTA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">GIOVANNI L. TOBING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">ADIPURA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">EL MANIK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">EDDI OGLEK &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">BENNI RUSWANDI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">SASHA ALEXA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">JENNIFER EVE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">WINGKY HARUN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n</ul>\r\n\r\n<h4 style=\"text-align:justify\"><strong><span style=\"font-size:14px\">Production Stils</span></strong></h4>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Sutradara&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;Agus Elias</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Produser&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;&nbsp;Dani Sapawie, Lili Sunawati</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Produser Eksekutif&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp; Leo Sutanto, David S. Suwarto</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Cerita&nbsp;&amp; Skenario&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;Ahmad R. Madani, Andi Atthira</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Produksi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;SinemArt</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Judul Lagu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : BELOK KANAN JALAN TERUS</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Penyanyi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : CHARLY VH feat ANYA</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Ciptaan&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : CHARLY VH</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\">Publisher&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: MSI RECORD</span></li>\r\n</ul>\r\n', '99084256ea0cfcd360d19fe9a5c3504b.jpg', 7, 'belok-kanan-jalan-terus', 7, 4),
(23, 'AMD Rilis Chipset Ryzen Z1 Series untuk Konsol Game \"Handheld\", Ini Spesifikasinya  ', '2023-04-26 15:38:22', '<p style=\"text-align:justify\">AMD meluncurkan dua chipset terbarunya yang diberi nama AMD Ryzen Z1 dan Ryzen Z1 Extreme.&nbsp; Kedua chipset yang masuk ke dalam kategori Ryzen Z1 Series ini ditujukan untuk mentenagai berbagai konsol game potabel (handheld) anyar yang bakal dirilis ke pasar, salah satunya adalah ROG Ally dari Asus.&nbsp; Secara desain hardware, AMD Ryzen Z1 dan Z1 Extreme&nbsp;sebenarnya kompak mengandalkan prosesor (CPU) dengan arsitektur terbaru Zen 4 dan pengolah grafis (GPU) dengan arsitektur RDNA 3. Namun, secara spesifikasi, keduanya cukup berbeda. AMD Ryzen Z1 ditenagai dengan 6 inti CPU Zen 4 dengan 12 threads, yang dipadukan dengan 3 inti GPU RDNA 3 dan 22 MB cache. Kombinasi hardware seperti ini diklaim bisa memberikan kemampuan grafis sekitar 2,8 TeraFLOPS (TFLOPS).&nbsp; Di sisi lain, AMD Ryzen Z1 Extreme memiliki 8 inti CPU Zen 4 dengan 16 threads, yang dikombinasikan dengan 12 inti GPU RDNA 3 dan 24 MB cache. AMD mengeklaim hardware seperti ini mampu memberikan performa visual hingga 8,6 TFLOPS.&nbsp; Baca juga: AMD Rilis 3 Prosesor Gaming Seri CPU Ryzen 3D Untuk performa di dunia nyata, AMD mengeklaim kedua chipset untuk konsol game handheld ini mampu menjalankan beragam game kekinian, terutama game kompetitif, dengan lancar di kualitas 1080p. Game Counter-Strike: Global Offensive (CS:GO), misalnya, bisa dijalankan AMD Ryzen Z1 dengan frame rate rata-rata 137,6 FPS, sedangkan AMD Ryzen Z1 Extreme lebih tinggi dengan 162,1 FPS.&nbsp; Lihat Foto Ilustrasi performa AMD Ryzen Z1 Series untuk memainkan game kekinian.</p>\r\n\r\n<p style=\"text-align:justify\">(AMD) Sementara untuk game Dota 2, AMD Ryzen Z1 bisa menghasilkan frame rate mencapai 100 FPS, sedangkan AMD Ryzen Z1 Extreme sedikit lebih tinggi dengan 102 FPS.&nbsp; Terlepas dari perbedaan spesifikasi di atas, kedua chipset ini memiliki beberapa dukungan teknologi serupa macam dukungan RAM LPDDR5 dan LPDDR5X, hingga dukungan USB 4.&nbsp; Selain itu, baik AMD Ryzen Z1 dan Ryzen Z1 Extreme sama-sama dibekali dengan sejumlah teknologi pengolah grafis khas AMD. Baca juga: Radeon RX 7900 XTX Resmi, GPU Chiplet Pertama AMD Beberapa di antaranya seperti AMD Radeon Super Resolusion (RSR), Radeon Chill, Radeon Image Sharpening, hingga AMD Link, sebagaimana dirangkum KompasTekno dari GSMArena, Rabu (26/4/2023).&nbsp; Seperti disebutkan di atas, AMD Ryzen Z1 dan Z1 Extreme saat ini tersedia secara eksklusif untuk konsol game handheld ROG Ally saja. Namun, tak menutup kemungkinan merek-merek konsol handheld lain akan bermitra dengan AMD untuk menghadirkan perangkat anyar yang ditenagai dengan kedua chipset tersebut. Kita nantikan saja. Dapatkan update berita pilihan dan breaking news setiap hari dari Kompas.com. Mari bergabung di Grup Telegram &quot;Kompas.com News Update&quot;, caranya klik link https://t.me/kompascomupdate, kemudian join. Anda harus install aplikasi Telegram terlebih dulu di ponsel.</p>\r\n', 'e1fecacfeddf43059000d65c89d808ef.jpg', 5, 'amd-rilis-chipset-ryzen-z1-series-untuk-konsol-game-handheld-ini-spesifikasinya', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_buka`
--

CREATE TABLE `tb_buka` (
  `id` int(11) NOT NULL,
  `hari` varchar(40) DEFAULT NULL,
  `jam` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_buka`
--

INSERT INTO `tb_buka` (`id`, `hari`, `jam`) VALUES
(4, ' Senin - Jumat', ' 09:00 - 18:00 WIB'),
(5, 'Sabtu & Minggu', 'LIBUR');

-- --------------------------------------------------------

--
-- Table structure for table `tb_files`
--

CREATE TABLE `tb_files` (
  `id` int(11) NOT NULL,
  `judul` varchar(120) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `oleh` varchar(40) DEFAULT NULL,
  `download` int(11) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_files`
--

INSERT INTO `tb_files` (`id`, `judul`, `deskripsi`, `tanggal`, `oleh`, `download`, `data`) VALUES
(19, 'tes', 'tes', '2023-04-17 10:46:37', 'ivan', NULL, 'a6e46d82489e3dc5a8b89b75acf8e921.xlsx');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gallery`
--

CREATE TABLE `tb_gallery` (
  `id` int(11) NOT NULL,
  `judul` varchar(80) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `gambar` varchar(255) DEFAULT NULL,
  `albumid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gallery`
--

INSERT INTO `tb_gallery` (`id`, `judul`, `tanggal`, `gambar`, `albumid`, `userid`) VALUES
(15, 'IT Support', '2023-04-26 03:59:05', '9407466a92c7103a809afa1e4b142248.jpg', 2, 7),
(16, 'IT Support', '2023-04-26 03:58:59', '4023a424895d7fc805b18d273a55a5c4.jpg', 1, 7),
(17, 'IT Support', '2023-04-26 03:58:53', '5c39f2aeafb50b5027b2e532e93d45b4.jpg', 1, 7),
(18, 'IT', '2023-04-26 04:36:29', '9d7587c92904889f48f09a96cc28ba73.jpg', 3, 7),
(19, 'IT Support', '2023-04-26 04:36:38', 'a69e6d59e216cbf54528aafc7092a236.jpg', 3, 7),
(20, 'IT Support', '2023-04-26 04:36:59', '91d58401963797f67d6c2b8044117c4f.jpg', 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tb_identitas`
--

CREATE TABLE `tb_identitas` (
  `id` int(11) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `email` varchar(80) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `maps` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_identitas`
--

INSERT INTO `tb_identitas` (`id`, `favicon`, `brand`, `email`, `alamat`, `telepon`, `maps`) VALUES
(1, '4737cda1387e74ddeb3beb93aded5f63.png', '95fe6f21de09d539c7f336a0e0c67651.png', 'sinemart@gmail.com', 'Komplek Ruko Plaza Kedoya Elok\r\nBlok DE 19-20\r\nJl. Panjang - Kedoya\r\nJakarta 11520 -Indonesia', '081298085419', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31731.166924611396!2d106.75201973463957!3d-6.211406700023936!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f72047235b27%3A0xbdf147ca868ff909!2sSinemart%20Indonesia!5e0!3m2!1sid!2sid!4v1681454151418!5m2!1sid!2sid\" width=\"400\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_igfeed`
--

CREATE TABLE `tb_igfeed` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `client` varchar(80) NOT NULL,
  `accestoken` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_igfeed`
--

INSERT INTO `tb_igfeed` (`id`, `userid`, `client`, `accestoken`) VALUES
(1, '12609509999', 'b3abdc2ff1fe4a928e09cdf7974abb68', '12609509999.b3abdc2.65615b2e72e148ceaeff9be08f2d1d02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_inbox`
--

CREATE TABLE `tb_inbox` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `kontak` varchar(13) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('1','0') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_inbox`
--

INSERT INTO `tb_inbox` (`id`, `nama`, `email`, `kontak`, `pesan`, `tanggal`, `status`) VALUES
(25, 'aaaa', 'admin1@gmail.com', '01234567890', 'aaa', '2023-04-17 10:34:47', '0'),
(27, 'Admin', 'admin1@gmail.com', '01234567890', 'ooo', '2023-04-19 04:56:25', '0'),
(28, 'ssssss', 'admin1@gmail.com', 'sss', 'dds', '2023-04-26 04:44:32', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenispelayanan`
--

CREATE TABLE `tb_jenispelayanan` (
  `id` int(11) NOT NULL,
  `judul` varchar(80) NOT NULL,
  `isi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jenispelayanan`
--

INSERT INTO `tb_jenispelayanan` (`id`, `judul`, `isi`) VALUES
(19, 'Tutorial Reimburse', '<h1 style=\"text-align:center\"><span style=\"font-size:14px\">Berikut adalah tutorial untuk mengajukan reimburse rawat jalan menggunakan Talenta - Mobile :</span></h1>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgif6l-O0NRX3xDdHA1c_iD-P54xpshZW9G_d09Szqoj0y7PzZPeVLfs6Uv-3hTDldk0ySHvKhA30atzQSEF7yzhIXrdpapZ1eaOw2m-YrCJkgoq7rHPhFNZWQh99u3NuLiJM8jbXn5BUWi9rTwmUVHhCaODfPF-0ADB5yhlgXGjIHe6YF_rRJcTnjUDg/s976/1.jpg\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgif6l-O0NRX3xDdHA1c_iD-P54xpshZW9G_d09Szqoj0y7PzZPeVLfs6Uv-3hTDldk0ySHvKhA30atzQSEF7yzhIXrdpapZ1eaOw2m-YrCJkgoq7rHPhFNZWQh99u3NuLiJM8jbXn5BUWi9rTwmUVHhCaODfPF-0ADB5yhlgXGjIHe6YF_rRJcTnjUDg/s320/1.jpg\" /></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiGmsr5AgJwp_gpLUAlHKzUryDI-uqZLI1HpqhSvOM4hnjTHFM5Yfr06lNe42IjamVQoi0IMHoLugA_Y5_diC5G27gUJQGTTr5fn7u6Y4QdJNnOXwzrGQDBqoBuxF3cbZ5WpTInsim-RLrDiuAKT5puuTpj8P5a0LBTHSWD-c0bIhxj6VW2d9xe5ghByQ/s976/2.jpg\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiGmsr5AgJwp_gpLUAlHKzUryDI-uqZLI1HpqhSvOM4hnjTHFM5Yfr06lNe42IjamVQoi0IMHoLugA_Y5_diC5G27gUJQGTTr5fn7u6Y4QdJNnOXwzrGQDBqoBuxF3cbZ5WpTInsim-RLrDiuAKT5puuTpj8P5a0LBTHSWD-c0bIhxj6VW2d9xe5ghByQ/s320/2.jpg\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhybahRUNPzTrJ89L9aDq-ZJMYIlwWKPhlBq2y7-n2lgYou1vSEu07TJrCQG0uVq8sojaxKrHzVKPbHNGMh6Z4IkjLg6aF0EQCS2jTqKBal8XAxkUnz9Qy8F5JRJdVJoQWN8nYU-Yi6RMLHiopV1vHXT9O4-X6xETLW8UqmbYDmygQqk7dxBuSxYTArDA/s976/3.jpg\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhybahRUNPzTrJ89L9aDq-ZJMYIlwWKPhlBq2y7-n2lgYou1vSEu07TJrCQG0uVq8sojaxKrHzVKPbHNGMh6Z4IkjLg6aF0EQCS2jTqKBal8XAxkUnz9Qy8F5JRJdVJoQWN8nYU-Yi6RMLHiopV1vHXT9O4-X6xETLW8UqmbYDmygQqk7dxBuSxYTArDA/s320/3.jpg\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjOck6lar3joP8T4tpku1GC5XIQIUovBXzOb7j3aGYfYiP5C8OEgB-vug-THqzzBxC2TIICLzN4MO4xWcPn5R9Gslz03Eh2nioMHpKkYLo7dEsXNjjjN43WDtzf6noEZsRP-GQ4o_GhjO8IFPClzcTf9Ur0uRP71C1n6mKw6I-mNyQ7te2wINqgEOc-gA/s1006/4.jpg\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjOck6lar3joP8T4tpku1GC5XIQIUovBXzOb7j3aGYfYiP5C8OEgB-vug-THqzzBxC2TIICLzN4MO4xWcPn5R9Gslz03Eh2nioMHpKkYLo7dEsXNjjjN43WDtzf6noEZsRP-GQ4o_GhjO8IFPClzcTf9Ur0uRP71C1n6mKw6I-mNyQ7te2wINqgEOc-gA/s320/4.jpg\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh64ceFryb7YtlJwoQ2MOse9GUlYApH34eYRWWd-dp2juNjX3ByKjtfeUuz8QTVTf5dJq50WLX1_grmlAE-CyM0etL5Di8UrbP5VG8qqzcEbomKLjfV-qnLMPMq-HLBarS5953di8_yudrMHAysW-oXCK9litsa4C0IIW-h07iAJN6gziHa32OgKmKwpA/s976/5.jpg\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh64ceFryb7YtlJwoQ2MOse9GUlYApH34eYRWWd-dp2juNjX3ByKjtfeUuz8QTVTf5dJq50WLX1_grmlAE-CyM0etL5Di8UrbP5VG8qqzcEbomKLjfV-qnLMPMq-HLBarS5953di8_yudrMHAysW-oXCK9litsa4C0IIW-h07iAJN6gziHa32OgKmKwpA/s320/5.jpg\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg2ANEc4KWLSKiigrQ40sTZQYwSkUd_WZFEQ3HEzlQUWw7Q4kZvLA944NIAuJ9X2QGAeMUGDwcRzoqx3M7S6yl8puFu8y09Dr3hXoC8ZYkyvfO3uT_Q8b7NCx9yJ-gjMgS6LYp0rKcem5KBnvK0vuZ-VxkJkRuXQk3aBSSUM6L_eki26TSRKnFnCLGwPg/s976/6.jpg\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg2ANEc4KWLSKiigrQ40sTZQYwSkUd_WZFEQ3HEzlQUWw7Q4kZvLA944NIAuJ9X2QGAeMUGDwcRzoqx3M7S6yl8puFu8y09Dr3hXoC8ZYkyvfO3uT_Q8b7NCx9yJ-gjMgS6LYp0rKcem5KBnvK0vuZ-VxkJkRuXQk3aBSSUM6L_eki26TSRKnFnCLGwPg/s320/6.jpg\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijRfpOJENucVcAhUqjJIehscF10yynWQX-RSGd6C0ck9aUF2Uz7juD9oe0cMq4t_eV4N0EtaQV0eX9KCFtbs_IBzCR7YdHgkz-HE8lf9rq-0pffD88xiPYH0iYanMgN3oIvYCZb_YG5XDq906k2TtwbbFZ5RY4YcQahxhef4i1po2rpvVhWR9YrVOwJA/s976/7.jpg\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijRfpOJENucVcAhUqjJIehscF10yynWQX-RSGd6C0ck9aUF2Uz7juD9oe0cMq4t_eV4N0EtaQV0eX9KCFtbs_IBzCR7YdHgkz-HE8lf9rq-0pffD88xiPYH0iYanMgN3oIvYCZb_YG5XDq906k2TtwbbFZ5RY4YcQahxhef4i1po2rpvVhWR9YrVOwJA/s320/7.jpg\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgDCpKKOGqTvetcPZnDQ0lrgYROHT2ec4W3Wg3wieAKRfT3LDxNdEIjW0fct2WmIIP5OcBGjwaTDolQ3cI___fMmqYwjGRLIj5J4Iza8f5K096XgxEREW_LlrpX0ODWXm_Iu7fnpqZUcT1b0MBV9CqjMnRNLnqcDCOBcfgP5s9qzcYdTo1l4PEfwPyuDg/s976/8.jpg\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgDCpKKOGqTvetcPZnDQ0lrgYROHT2ec4W3Wg3wieAKRfT3LDxNdEIjW0fct2WmIIP5OcBGjwaTDolQ3cI___fMmqYwjGRLIj5J4Iza8f5K096XgxEREW_LlrpX0ODWXm_Iu7fnpqZUcT1b0MBV9CqjMnRNLnqcDCOBcfgP5s9qzcYdTo1l4PEfwPyuDg/s320/8.jpg\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjPRjS9ok3h4w-coaajV3joZcbl-UURuyTNChWE_ta2DHiyp3mOTPxCX6kmeSTwfKHziAwvEx0kcIimH20-oocW0s2y4uhIimO5E814j4OJYUBK7iVNwB-cletTptKUl5Dkh74bUkZFavk7VlF-k1lwQvr8EHjp0hMrQD_UqrTYzfeSr5efwuDKcso3Mg/s976/9.jpg\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjPRjS9ok3h4w-coaajV3joZcbl-UURuyTNChWE_ta2DHiyp3mOTPxCX6kmeSTwfKHziAwvEx0kcIimH20-oocW0s2y4uhIimO5E814j4OJYUBK7iVNwB-cletTptKUl5Dkh74bUkZFavk7VlF-k1lwQvr8EHjp0hMrQD_UqrTYzfeSr5efwuDKcso3Mg/s320/9.jpg\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjtECDJQuRdDW1beJolHsHtIZHmSYoekrvqwwJ7oZQLXfnF63QK2WFAFzQQ-3RmYWV8m-hA5_G6ijHQj-DHjs3GysmwFkCFFYY_Eo39huAx5gJAkdeQOgpfqQWuzloHD9RuM7IkuVyLOwrzt1I_WNgHnHFT41OdTB6mDQl8a6he353bJG4kFyjdcHzgyw/s976/10.jpg\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjtECDJQuRdDW1beJolHsHtIZHmSYoekrvqwwJ7oZQLXfnF63QK2WFAFzQQ-3RmYWV8m-hA5_G6ijHQj-DHjs3GysmwFkCFFYY_Eo39huAx5gJAkdeQOgpfqQWuzloHD9RuM7IkuVyLOwrzt1I_WNgHnHFT41OdTB6mDQl8a6he353bJG4kFyjdcHzgyw/s320/10.jpg\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh2SewHnrYuSVfL6b7y1Z9G77fjyTHYRPF4DRy3aDUExLgGXVpUfA1vweFh0t5-7ljGHmulqZSlSjyeNO9RyNYUeTmBYS7mC9ClWdZbL8UB8A2kPOHAB3blTKlEKPBblvPy1Q3xwjfLDKRqVypMJGLCuweGi9n8yrsGngjfrvPjZs_QV3-Hihb3Gx20FA/s976/11.jpg\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh2SewHnrYuSVfL6b7y1Z9G77fjyTHYRPF4DRy3aDUExLgGXVpUfA1vweFh0t5-7ljGHmulqZSlSjyeNO9RyNYUeTmBYS7mC9ClWdZbL8UB8A2kPOHAB3blTKlEKPBblvPy1Q3xwjfLDKRqVypMJGLCuweGi9n8yrsGngjfrvPjZs_QV3-Hihb3Gx20FA/s320/11.jpg\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjQYuX6H313JUmtgESRvLpTdA-cD4yBVmPe9MymFf-BMeOLwf1P_3usEnve3cZe0uR7YmpwGW_eVTqI7KpavnHtxuV2Uul_eDapNMcuKHggsgLkNfCo8BpuwwOnc_IGPw7L7vetD_vxBtx-EVOvYD0pIzsF7KDAurvDqEGSCJm8d4LEvU42K0O5lzbcQ/s976/12.jpg\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjQYuX6H313JUmtgESRvLpTdA-cD4yBVmPe9MymFf-BMeOLwf1P_3usEnve3cZe0uR7YmpwGW_eVTqI7KpavnHtxuV2Uul_eDapNMcuKHggsgLkNfCo8BpuwwOnc_IGPw7L7vetD_vxBtx-EVOvYD0pIzsF7KDAurvDqEGSCJm8d4LEvU42K0O5lzbcQ/s320/12.jpg\" /></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n'),
(20, 'Tutorial - Time Off (Full Day)', '<h1><span style=\"font-size:14px\">Berikut adalah tutorial untuk mengajukan Time Off / Cuti (Full Day) menggunakan Talenta - Mobile :</span></h1>\r\n\r\n<div>\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiZMNWEGOa5-z4a-ZLLBBKnkRwx9qfkztMA-HHA-prj9kIpYVArhJ9ZnPYhwuHyKTuLuNN95ZlzutP518-cJGxNhBQiapbyanIV-DjAZIxJjnFFEl9bT93wOijzjtcJUiW08jYl2ry7tvJsVxIhvaBx9kCyRUA_JJehmSSQ48mO7mGktESOHwvDi4Vzuw/s976/2%20menu%20skip%20sign%20in.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiZMNWEGOa5-z4a-ZLLBBKnkRwx9qfkztMA-HHA-prj9kIpYVArhJ9ZnPYhwuHyKTuLuNN95ZlzutP518-cJGxNhBQiapbyanIV-DjAZIxJjnFFEl9bT93wOijzjtcJUiW08jYl2ry7tvJsVxIhvaBx9kCyRUA_JJehmSSQ48mO7mGktESOHwvDi4Vzuw/s320/2%20menu%20skip%20sign%20in.jpg\" style=\"height:320px; width:181px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiWOXYTbEReGZhfPXKl3p5uwjgBK91e0p2UrSY1rDxTCgu5Ptx6Xj20O_H8935PkLAQvpPAU27VksPJWOrFjsznocu7BUxAhtM2zVS6YPJZvjXc8imrOBxE30Rqkr6Jwf6PClB9r_8RM4e1v2u8jnJtn6ozqeWEeVNOEMePEySPzgjIqjPt5cYliJ8VtA/s976/2%20Sign%20In.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiWOXYTbEReGZhfPXKl3p5uwjgBK91e0p2UrSY1rDxTCgu5Ptx6Xj20O_H8935PkLAQvpPAU27VksPJWOrFjsznocu7BUxAhtM2zVS6YPJZvjXc8imrOBxE30Rqkr6Jwf6PClB9r_8RM4e1v2u8jnJtn6ozqeWEeVNOEMePEySPzgjIqjPt5cYliJ8VtA/s320/2%20Sign%20In.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiXFtaj-sC2gyswpPm8UXdNvikN7KdmRcDCwMdkzgowkxO8LzyjsUIfCSe6vHLnsln3x91yShMj9GanfZwdxocpwFTqFf2lljeyDvuocEod0QOjVT8HcItXBtyXEEwFTYItQaYTEYJWx3_b11U7dr0_pjyZCW0Gn09m0P2rxml7WHi6UW8wOYMLqwbdQA/s976/1_1%20Pilih%20Request%20Time%20Off.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiXFtaj-sC2gyswpPm8UXdNvikN7KdmRcDCwMdkzgowkxO8LzyjsUIfCSe6vHLnsln3x91yShMj9GanfZwdxocpwFTqFf2lljeyDvuocEod0QOjVT8HcItXBtyXEEwFTYItQaYTEYJWx3_b11U7dr0_pjyZCW0Gn09m0P2rxml7WHi6UW8wOYMLqwbdQA/s320/1_1%20Pilih%20Request%20Time%20Off.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh_5KQSzeSYMXnL_ydceo72ANGIBQ8jrdn4ivFd4OJdZBp9yPgHyZnrLXNzAi6tXm84ArybKcr07WI-5mHdN6foO4GgfEt2637sFDvjdRn8wwBzk5gqTCLd3_0r15oEQZiP12nkvIcUV5pOxg0UowdxHw0YCdONiryGLtUwCu1esoEVPFB2Li62VSVB9g/s976/1_2%20Pilih%20Jenis%20Time%20Off.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh_5KQSzeSYMXnL_ydceo72ANGIBQ8jrdn4ivFd4OJdZBp9yPgHyZnrLXNzAi6tXm84ArybKcr07WI-5mHdN6foO4GgfEt2637sFDvjdRn8wwBzk5gqTCLd3_0r15oEQZiP12nkvIcUV5pOxg0UowdxHw0YCdONiryGLtUwCu1esoEVPFB2Li62VSVB9g/s320/1_2%20Pilih%20Jenis%20Time%20Off.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhGilbySUeh679aJMdPqd-OvnT11y7jKmNw2NeUHeghmhMSj6s7Og_JF5TPFylimkeVRfFcSdri0gOjipcIYlT_O9TNsADze7mlY3bmXv3mj8ThJ9pInVj0GiNHQcUyT9ATjrNInX4HYGCx5MfNsuNW8UiLgn4K1XXdM37HOGjksE8nfzC7MxdFFxcViQ/s976/1_3%20Pilih%20Cuti%20Tahunan.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhGilbySUeh679aJMdPqd-OvnT11y7jKmNw2NeUHeghmhMSj6s7Og_JF5TPFylimkeVRfFcSdri0gOjipcIYlT_O9TNsADze7mlY3bmXv3mj8ThJ9pInVj0GiNHQcUyT9ATjrNInX4HYGCx5MfNsuNW8UiLgn4K1XXdM37HOGjksE8nfzC7MxdFFxcViQ/s320/1_3%20Pilih%20Cuti%20Tahunan.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiBKqAxNyqeBwuahR2JBduB6BzpspONlOqyM-id16xoswxu69IpWCV6LFPW01cGHZ96QRffVfzHWIV8qTSZL-9AGyoH55ZbmSkJjGT8viSVYgjoosIxd4ZLzihIWFtleur0OkUCRg8xJ3-DeIz6ugY2ZXjyXrX-nkK43iBcMDcXTIon0ifIFjnFvtyMww/s976/1_4A%20Pilih%20Periode%20Cuti.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiBKqAxNyqeBwuahR2JBduB6BzpspONlOqyM-id16xoswxu69IpWCV6LFPW01cGHZ96QRffVfzHWIV8qTSZL-9AGyoH55ZbmSkJjGT8viSVYgjoosIxd4ZLzihIWFtleur0OkUCRg8xJ3-DeIz6ugY2ZXjyXrX-nkK43iBcMDcXTIon0ifIFjnFvtyMww/s320/1_4A%20Pilih%20Periode%20Cuti.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi2TlfFewdX-5Fdf4bfbjjgl5NuIQD1BLWuoJoH4hFaOS_1yvAm9qn4uTA61lMs59mtzFFKXjrOQn8kajz6DtyIRWzlF_MRv800qMxLf2gt2BCJaBplsptY3wXric7GHylsqASYS0axs8ejUQNfLUKRQF5HIy49we_HPlqza6Zrm-oTDWhWmRx37ViYTw/s976/1_7B%20Isi%20Keterangan%20Cuti.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi2TlfFewdX-5Fdf4bfbjjgl5NuIQD1BLWuoJoH4hFaOS_1yvAm9qn4uTA61lMs59mtzFFKXjrOQn8kajz6DtyIRWzlF_MRv800qMxLf2gt2BCJaBplsptY3wXric7GHylsqASYS0axs8ejUQNfLUKRQF5HIy49we_HPlqza6Zrm-oTDWhWmRx37ViYTw/s320/1_7B%20Isi%20Keterangan%20Cuti.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhQyCNxdP6ka48nPopuL8ic2ygNay0Zn_p-aN4rYwSPJD6UDmWmmegtiT1nZPA3gpHWT2RXAxdkooBxWLpWdWeqfu8jisM7tDaGUmqeKraZzu99M6QuTGAv0XfEvilmVTSpuS4LZJhCM8B_R8a_tJs0g7r2X4UpIDUuyBnfbTsHZJ5hmmptTtcM2hzSfA/s976/1_8B%20Pilih%20rekan%20kerja.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhQyCNxdP6ka48nPopuL8ic2ygNay0Zn_p-aN4rYwSPJD6UDmWmmegtiT1nZPA3gpHWT2RXAxdkooBxWLpWdWeqfu8jisM7tDaGUmqeKraZzu99M6QuTGAv0XfEvilmVTSpuS4LZJhCM8B_R8a_tJs0g7r2X4UpIDUuyBnfbTsHZJ5hmmptTtcM2hzSfA/s320/1_8B%20Pilih%20rekan%20kerja.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjeNgl8-tcuGFUWQMD2FAAHAeWo1QGkpYUH2UN1vDy4NioBV1l2ycJde8AvHWjwrN0lcwGpznmRa2ItaXXdBrRoSlmOCSkALtFbQsXbSV2eKZYvucd_xa-zFv2GnALUv2LKfbSZEt2SCPtA_oEfXC_rTJ7dvdpOTVfTKb94-9eKSDf1bJcJ-2pIs9Z34A/s976/1_9B%20Submit%20Request%20Time%20Off.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjeNgl8-tcuGFUWQMD2FAAHAeWo1QGkpYUH2UN1vDy4NioBV1l2ycJde8AvHWjwrN0lcwGpznmRa2ItaXXdBrRoSlmOCSkALtFbQsXbSV2eKZYvucd_xa-zFv2GnALUv2LKfbSZEt2SCPtA_oEfXC_rTJ7dvdpOTVfTKb94-9eKSDf1bJcJ-2pIs9Z34A/s320/1_9B%20Submit%20Request%20Time%20Off.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhsj2-nqrqV5BBEASw5-TOSJFaMulWs4QUzIti9csXgoxwywdRv1XPQO1vaaIvWEMZ_cymk4kjIJZ0-OGcbaR5Mab--aGsWV34vwXSdV4WeEFuFbej9hxz1fz2e6gg7OlTaRotdk-oexg2MBNEG_gR1fcnrEsQEc5qSdlRbPT8l_468D58yyUL3toPFXA/s976/1_10%20Halaman%20Status%20dan%20Saldo%20Cuti.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhsj2-nqrqV5BBEASw5-TOSJFaMulWs4QUzIti9csXgoxwywdRv1XPQO1vaaIvWEMZ_cymk4kjIJZ0-OGcbaR5Mab--aGsWV34vwXSdV4WeEFuFbej9hxz1fz2e6gg7OlTaRotdk-oexg2MBNEG_gR1fcnrEsQEc5qSdlRbPT8l_468D58yyUL3toPFXA/s320/1_10%20Halaman%20Status%20dan%20Saldo%20Cuti.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgpdMD__EwfrKoATYGT4gB0MLaaQbk_Xp4-3JnJ7nRVG1SpyjPUirmfydSkT0QxaV7zwqDhvrHDcIeF89zGdfV3SP7qFgrOXQSHfnsNEsaQYDFLscsciLuLS-g7U2rERST5m8zy0J0RClEUaUWdIoMi2Sm7yV3LHMWbWKYPRu7msMWUVPhrJakIKzDkIg/s976/1_11%20Informasi%20Detail%20Pengajuan%20Cuti.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgpdMD__EwfrKoATYGT4gB0MLaaQbk_Xp4-3JnJ7nRVG1SpyjPUirmfydSkT0QxaV7zwqDhvrHDcIeF89zGdfV3SP7qFgrOXQSHfnsNEsaQYDFLscsciLuLS-g7U2rERST5m8zy0J0RClEUaUWdIoMi2Sm7yV3LHMWbWKYPRu7msMWUVPhrJakIKzDkIg/s320/1_11%20Informasi%20Detail%20Pengajuan%20Cuti.jpg\" style=\"height:320px; width:181px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgid8QE_uXjEpLBb2RO96OUFL6PkhqGrucS4WAS1NLijQ1cRKZQoL9eOldtEqSFkwfWKFKvIm1TT89r4J2m84XtnryNqQqBMxnfGhXHyR8InRqZORW44pjbNe_iBXx7YDRxnB5wzB34Y_MKFvg33rkyLmKQmbJjCTwx3G-uhu4jswNetgwFothewhqtqQ/s976/1_12%20menu%20status%20time%20off.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgid8QE_uXjEpLBb2RO96OUFL6PkhqGrucS4WAS1NLijQ1cRKZQoL9eOldtEqSFkwfWKFKvIm1TT89r4J2m84XtnryNqQqBMxnfGhXHyR8InRqZORW44pjbNe_iBXx7YDRxnB5wzB34Y_MKFvg33rkyLmKQmbJjCTwx3G-uhu4jswNetgwFothewhqtqQ/s320/1_12%20menu%20status%20time%20off.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n'),
(21, 'Tutorial - Time Off (Half Day', '<div>\r\n<h1 style=\"text-align:center\"><span style=\"font-size:14px\">Berikut adalah tutorial untuk mengajukan Time Off / Cuti (Half Day) menggunakan Talenta - Mobile :</span></h1>\r\n\r\n<div>\r\n<div style=\"text-align:center\">&nbsp;</div>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjyZ2yPE0w1tQ0nAGVzKlRV6Odr-vdhsk9EjD17rUYHKfieLb96JvLaDh3JZlYfFq7wwf9oBvi_4VyYDxzz4Eh0mydSChEemD49iJHmjnWN7DcpjFHs9WDym7NIUmIppyQFAQrS4Gbr8NmMIZCjlMy6qziPz26VQ01PRSCKFGQRD8bvXo2fOIuPhKX2g/s976/1.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjyZ2yPE0w1tQ0nAGVzKlRV6Odr-vdhsk9EjD17rUYHKfieLb96JvLaDh3JZlYfFq7wwf9oBvi_4VyYDxzz4Eh0mydSChEemD49iJHmjnWN7DcpjFHs9WDym7NIUmIppyQFAQrS4Gbr8NmMIZCjlMy6qziPz26VQ01PRSCKFGQRD8bvXo2fOIuPhKX2g/s320/1.jpg\" style=\"height:320px; width:181px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgiVSPm3Wg9Dzl6ceZO23XsvNeZo4jfDsp8RIIr5x8O1ydeqtTsvaPAEezLrjhYExXBIxiBQme2PhFIR4NadamfdwadRcrHxvDpo23Wf2iS5ji1bM3GjGCBJGiB-FoxQhOwwUJ1_ODNZj2zy84Lhr5-kwGvtdGE3ngAT-Fp-GuB-3ri1Jazi1MV6D8GYQ/s976/2.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgiVSPm3Wg9Dzl6ceZO23XsvNeZo4jfDsp8RIIr5x8O1ydeqtTsvaPAEezLrjhYExXBIxiBQme2PhFIR4NadamfdwadRcrHxvDpo23Wf2iS5ji1bM3GjGCBJGiB-FoxQhOwwUJ1_ODNZj2zy84Lhr5-kwGvtdGE3ngAT-Fp-GuB-3ri1Jazi1MV6D8GYQ/s320/2.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhrIAE9M3gglDfOleZqAXgPjKCoIbueqi6pipcmlU92fbaf3_IsyYldOMmraLn8ObPfvWtnRZcyBoqGBUABPSk73mD6Vh0vpSQ5b3J8if7yCnRGAuf3BNoYTwNtUTKDSDBc8ah_7cG5ZvzF4JTeoL8W8iD2I4Uq_aIez_nUjAx99yh2eAD6BE6Kr9VzfQ/s976/3.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhrIAE9M3gglDfOleZqAXgPjKCoIbueqi6pipcmlU92fbaf3_IsyYldOMmraLn8ObPfvWtnRZcyBoqGBUABPSk73mD6Vh0vpSQ5b3J8if7yCnRGAuf3BNoYTwNtUTKDSDBc8ah_7cG5ZvzF4JTeoL8W8iD2I4Uq_aIez_nUjAx99yh2eAD6BE6Kr9VzfQ/s320/3.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjQMxna6UY_AHAmUW4y5QQg0GSdVbj29je3V6veFu38RqM7JkBvf7jL9W1H0p19JGl-__X4upbcA6YMnZCo55GJbg0uFPdOLP687fODQ7JIMTgN5jZ4NK3D1Yju-sKs3N_5cn3sJIzYPDPJjXI1Sxpy6ij5Ab0WgcricLOmd-GbaIap4bkCES7FqqEyQ/s976/4.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjQMxna6UY_AHAmUW4y5QQg0GSdVbj29je3V6veFu38RqM7JkBvf7jL9W1H0p19JGl-__X4upbcA6YMnZCo55GJbg0uFPdOLP687fODQ7JIMTgN5jZ4NK3D1Yju-sKs3N_5cn3sJIzYPDPJjXI1Sxpy6ij5Ab0WgcricLOmd-GbaIap4bkCES7FqqEyQ/s320/4.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi8XXKd5Na-p9_U2wFveGyraqlKV8bUE5BAVC12El8QZpNrIz-KBhcTe93RY6NxDCSi-0aB5hfqwM3Ba5r04zkYnDxyiRYX7I5sPYFDQKZN2uqOrtL7QKUf9_5-KmuhNMeab-o3aQfLbRrGn4ZHuzhWAze5Sf3JbATxcOMAStSV2gMgtUV8aWsU4RRBPg/s976/5.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi8XXKd5Na-p9_U2wFveGyraqlKV8bUE5BAVC12El8QZpNrIz-KBhcTe93RY6NxDCSi-0aB5hfqwM3Ba5r04zkYnDxyiRYX7I5sPYFDQKZN2uqOrtL7QKUf9_5-KmuhNMeab-o3aQfLbRrGn4ZHuzhWAze5Sf3JbATxcOMAStSV2gMgtUV8aWsU4RRBPg/s320/5.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmfwH54MNm1PASHN3JeUBRLMRcdPbyCQBB3rJWLlAILLjjUuY9hWCzNxHypApUp53uqOYn2JslwaIUOlmwidpfGKv7ORkCYYVtEtA3ycNcjGjvB_XVzJm9ATk0TV0syFjZ2ZkHhFGMyXdbBbt8CqVKO5xgJ9qYxYid7LO0CGCFTiMvjLTxBSl0-jFYDA/s976/6.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmfwH54MNm1PASHN3JeUBRLMRcdPbyCQBB3rJWLlAILLjjUuY9hWCzNxHypApUp53uqOYn2JslwaIUOlmwidpfGKv7ORkCYYVtEtA3ycNcjGjvB_XVzJm9ATk0TV0syFjZ2ZkHhFGMyXdbBbt8CqVKO5xgJ9qYxYid7LO0CGCFTiMvjLTxBSl0-jFYDA/s320/6.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjG_4USTN7nIob0nsocwaIzwmQc4T9RVPLNNdEuwxkbO171GwjmVNk8cbBck9-VNL1WYRp_8Ns5j2F68cqGp0ov4uHUFLGR6Ta3noORlgTInqG6tBAf28wh-KqnO4GNfYrPwtp98jaRzYa9mR6e-ozwDhSNDgsL97oTXnxFfJlwlPqHhobX7ySkVg90GQ/s976/7.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjG_4USTN7nIob0nsocwaIzwmQc4T9RVPLNNdEuwxkbO171GwjmVNk8cbBck9-VNL1WYRp_8Ns5j2F68cqGp0ov4uHUFLGR6Ta3noORlgTInqG6tBAf28wh-KqnO4GNfYrPwtp98jaRzYa9mR6e-ozwDhSNDgsL97oTXnxFfJlwlPqHhobX7ySkVg90GQ/s320/7.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhwIZSDb3yGXukmCFKKa2izqAuxgzhGlKfE_QwGwvdPbKEAF8ErHVcVjvAjxMfalZlndSEQWk7-p_ZHPy-s5Fy-pL8cGmgf96UlVsUWZlmVjgjAxej984gBH-7SKKr06Jpozy3ckAvFHAoHyyerYgst7ToIhjyRVp2BZU_0wF90Gw2IgPp0525aTUxbsg/s976/8.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhwIZSDb3yGXukmCFKKa2izqAuxgzhGlKfE_QwGwvdPbKEAF8ErHVcVjvAjxMfalZlndSEQWk7-p_ZHPy-s5Fy-pL8cGmgf96UlVsUWZlmVjgjAxej984gBH-7SKKr06Jpozy3ckAvFHAoHyyerYgst7ToIhjyRVp2BZU_0wF90Gw2IgPp0525aTUxbsg/s320/8.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgfYW5OIUxB04_OmpZz5qyfTsUwaj10nQAQKOdHoGoYBooP0e25C1TFsI9T5I1iEBIBe7BICNF4l01SxWa6LNDfTmD4Ynt6VqBdsyPDTE0VGA3Ib42Dnv1RjXlJYwd3U-tn0jX7fMD-m1VEorT2zMyhux2H-hCMn2ruL0OBt9a0AX3YQycwLsaT4d44jQ/s976/9.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgfYW5OIUxB04_OmpZz5qyfTsUwaj10nQAQKOdHoGoYBooP0e25C1TFsI9T5I1iEBIBe7BICNF4l01SxWa6LNDfTmD4Ynt6VqBdsyPDTE0VGA3Ib42Dnv1RjXlJYwd3U-tn0jX7fMD-m1VEorT2zMyhux2H-hCMn2ruL0OBt9a0AX3YQycwLsaT4d44jQ/s320/9.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi8pNnQpgkSFJZoldw9rJozXGYbazsJw7i5KdW-i_cett2r6DFmEmk7PeIj_wAo2bF9ndNU-LgW-rlebDrrQzZwpy_kcUutAhd7t62IL7PnL6y76VXBCTyrzdc1YfdeBLPkOdZZ1WKGdaX851fO5OL4pUOXjxWXZ6kHs5PK1EA_gqoDhCZvbmwgXje-Fg/s976/10.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi8pNnQpgkSFJZoldw9rJozXGYbazsJw7i5KdW-i_cett2r6DFmEmk7PeIj_wAo2bF9ndNU-LgW-rlebDrrQzZwpy_kcUutAhd7t62IL7PnL6y76VXBCTyrzdc1YfdeBLPkOdZZ1WKGdaX851fO5OL4pUOXjxWXZ6kHs5PK1EA_gqoDhCZvbmwgXje-Fg/s320/10.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgJuR2zkiG9uNre3fn-Goqund9uUYzDt0ruYj_ETy2QwD1xwgqgusevflxR19Km4863LS-Rr7o8Zjb1qg58gOy67OYzlIPeXKQtAKikkCXBZEppqxDjfLU_CvlYfjJPlNd_d4WJ7sDDJNg0bbM_FJEwDGnxSyTQgXBfJAola-o6BHmTdcTukQLUl2baUg/s976/11.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgJuR2zkiG9uNre3fn-Goqund9uUYzDt0ruYj_ETy2QwD1xwgqgusevflxR19Km4863LS-Rr7o8Zjb1qg58gOy67OYzlIPeXKQtAKikkCXBZEppqxDjfLU_CvlYfjJPlNd_d4WJ7sDDJNg0bbM_FJEwDGnxSyTQgXBfJAola-o6BHmTdcTukQLUl2baUg/s320/11.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEge5TpdAsnBeF3LaM1oM-Zw8_jXQMHDnUqjBCEzBEP4B6uEJnRFLxFDWmay8a-gxFwMiA_I4EwO-xRjWfl4bsTJxKFdRcZ-uxZ_sK3xKaWDTAXhp3EAI--Fz-R3mXUCYKRNruby9bCezJc2FsWpk-TkvRpGHKWh2yfGsHTgYvwjdeEYDqbry_S_Y8qxFw/s973/12.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEge5TpdAsnBeF3LaM1oM-Zw8_jXQMHDnUqjBCEzBEP4B6uEJnRFLxFDWmay8a-gxFwMiA_I4EwO-xRjWfl4bsTJxKFdRcZ-uxZ_sK3xKaWDTAXhp3EAI--Fz-R3mXUCYKRNruby9bCezJc2FsWpk-TkvRpGHKWh2yfGsHTgYvwjdeEYDqbry_S_Y8qxFw/s320/12.jpg\" style=\"height:320px; width:181px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjyFqUI_0JsCUBBhbWlHzL4AYVn5X2Yq7YjLA4S6dlP2BWZ3RAr51Y1by7rKa58f6yKTtSEzX_9TQTiVl85qYKQ-M6VBFL_btNRQM5XPdhdzB-f_8fvoOlrvc6TeqprgNEENX9WhwhQ7dJ2rbyx2ZRtClqQZLQa7wz_wsuVLdnSQNSG2bQq2MOgd3PFLA/s976/13.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjyFqUI_0JsCUBBhbWlHzL4AYVn5X2Yq7YjLA4S6dlP2BWZ3RAr51Y1by7rKa58f6yKTtSEzX_9TQTiVl85qYKQ-M6VBFL_btNRQM5XPdhdzB-f_8fvoOlrvc6TeqprgNEENX9WhwhQ7dJ2rbyx2ZRtClqQZLQa7wz_wsuVLdnSQNSG2bQq2MOgd3PFLA/s320/13.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiiLC146OKbUxloaOIpiW_hq6QuxEtoZqHsGrdrFHT3oRAal9S6pbdZ2ZdmD1qDosfsZFx7KFh6I9ATRABaqND39aGzuPEVwExHTzTgkNYIJXEUXo98zxkZNhiyL_RNde9XoGKgpCzemmf1Rz4jBojtg2Z5tnBxjEDjPj72WInlz9j30H58zN3M4YLa5w/s976/14.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiiLC146OKbUxloaOIpiW_hq6QuxEtoZqHsGrdrFHT3oRAal9S6pbdZ2ZdmD1qDosfsZFx7KFh6I9ATRABaqND39aGzuPEVwExHTzTgkNYIJXEUXo98zxkZNhiyL_RNde9XoGKgpCzemmf1Rz4jBojtg2Z5tnBxjEDjPj72WInlz9j30H58zN3M4YLa5w/s320/14.jpg\" style=\"height:320px; width:181px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjCLoeBaueOnPaRG0ceab_LMjDHyDSux-KIWxasiAw1afpBSG83k10e5FhTFpLoR7JtnZxHUa7ic4oIxp5sD1A82Mj35KxbF4eO7VzoSQ9jgk7o5VRE1GD_t1LtuoMMg1eemeDOA1VVJb4CPOuYSa2uS3NLkr5t-RILAo2D2nI8qCoYxwfDXi2DMZcT3g/s976/15.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjCLoeBaueOnPaRG0ceab_LMjDHyDSux-KIWxasiAw1afpBSG83k10e5FhTFpLoR7JtnZxHUa7ic4oIxp5sD1A82Mj35KxbF4eO7VzoSQ9jgk7o5VRE1GD_t1LtuoMMg1eemeDOA1VVJb4CPOuYSa2uS3NLkr5t-RILAo2D2nI8qCoYxwfDXi2DMZcT3g/s320/15.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n</div>\r\n</div>\r\n'),
(22, 'Biaya Harian - Tutorial Pimpinan Produksi Approval', '<div>\r\n<h1 style=\"text-align:center\"><span style=\"font-size:14px\">Berikut adalah tutorial untuk Pimpinan Produksi approve Laporan Biaya Harian yang diinput oleh Unit Keuangan :</span></h1>\r\n\r\n<div>\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWFfyUIgcx78gktyqFApfdwbXYyBebUDiWouZ6Ahq1YLv1Zjasgq4jSSc3iRGls71s435PImVL-w6KCRn-5Waxs7W_aUcvLP8BpQ_Cn5JG4j84l-5lLM6dSkpMZiyKIY532GXWJm99LA4Un869RTIoXZcmx0FOMUbFUMpfS7RP4krG7daM98iVoVluYg/s943/1.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWFfyUIgcx78gktyqFApfdwbXYyBebUDiWouZ6Ahq1YLv1Zjasgq4jSSc3iRGls71s435PImVL-w6KCRn-5Waxs7W_aUcvLP8BpQ_Cn5JG4j84l-5lLM6dSkpMZiyKIY532GXWJm99LA4Un869RTIoXZcmx0FOMUbFUMpfS7RP4krG7daM98iVoVluYg/s320/1.jpg\" style=\"height:320px; width:170px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj2jC9tYRFbqk2-VaR_5899gIlCqaiheWgRQhoVhIJQ5suO0yL8L2nfq2y_Gu3Gdvm-5jofZHa8OvUbYcvXXeK_X47Y0qiYOERAR4W1tGr_352QrmqVsje8F1wbo7BGNyiylqBh0wSrwlEvyVrhIjXtN40cd2P8qhtxMBQZKUYS2tYwv9qz_5y6X9N0dA/s943/2.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj2jC9tYRFbqk2-VaR_5899gIlCqaiheWgRQhoVhIJQ5suO0yL8L2nfq2y_Gu3Gdvm-5jofZHa8OvUbYcvXXeK_X47Y0qiYOERAR4W1tGr_352QrmqVsje8F1wbo7BGNyiylqBh0wSrwlEvyVrhIjXtN40cd2P8qhtxMBQZKUYS2tYwv9qz_5y6X9N0dA/s320/2.jpg\" style=\"height:320px; width:170px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgL__D-th7hPZ5qHbkpntjGQ6IgYyFvtstRxs0JhjZTFaO_Njp7T1RtAL3w2UOjetI4FhSTkWLBPtm3wFxjJaYkgicrkwyjy7C_3zUsVDnxhX2t3LnJYMAnSxtwOOpwwmVX9Owx2-y50wQ7bzh5mavL9BU05bNACujs0ZV9a0CuF9NiR2E3YZ9dJb7ARQ/s943/3.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgL__D-th7hPZ5qHbkpntjGQ6IgYyFvtstRxs0JhjZTFaO_Njp7T1RtAL3w2UOjetI4FhSTkWLBPtm3wFxjJaYkgicrkwyjy7C_3zUsVDnxhX2t3LnJYMAnSxtwOOpwwmVX9Owx2-y50wQ7bzh5mavL9BU05bNACujs0ZV9a0CuF9NiR2E3YZ9dJb7ARQ/s320/3.jpg\" style=\"height:320px; width:170px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiyNTHZM9Dnv-WGRI0BuQdOeda17a_vOX_FhgDK3ixose6zdxpsZQLr6WmhNYNiBU9mK8RJXgwdZSppjPQJgAkHJXPiS_bWXh0ZLSFytfYc7yPUnxzPtV7loNvhlF0f04Xeizrrw73PQyQX8JxndKjIt8XggA6DJNO0wqBsKcByyancqylzp7kPBADgcQ/s943/4.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiyNTHZM9Dnv-WGRI0BuQdOeda17a_vOX_FhgDK3ixose6zdxpsZQLr6WmhNYNiBU9mK8RJXgwdZSppjPQJgAkHJXPiS_bWXh0ZLSFytfYc7yPUnxzPtV7loNvhlF0f04Xeizrrw73PQyQX8JxndKjIt8XggA6DJNO0wqBsKcByyancqylzp7kPBADgcQ/s320/4.jpg\" style=\"height:320px; width:170px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjvXnqzKr3mA2tZVbkxooljZYV3-wJ_iaPdhXp82mTjmQzBtx_F1wdlrUuK4rRelXfC5KGPs6_1N79qxpgKzh09bz-AaeEDBFX0tTVCNiDbDteAa15bPn0Atv-R5_QASs7vPV2hpmm_TWzXeD3lXgNn_6JT1IOoKaTHTb_nKBZg1wzThI1CQdcfrRd6-g/s943/5.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjvXnqzKr3mA2tZVbkxooljZYV3-wJ_iaPdhXp82mTjmQzBtx_F1wdlrUuK4rRelXfC5KGPs6_1N79qxpgKzh09bz-AaeEDBFX0tTVCNiDbDteAa15bPn0Atv-R5_QASs7vPV2hpmm_TWzXeD3lXgNn_6JT1IOoKaTHTb_nKBZg1wzThI1CQdcfrRd6-g/s320/5.jpg\" style=\"height:320px; width:170px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj32e5OemgCQ8-yZYRsYlHIqOZxUyAqp0_l95zOpmu3g8VMtG6nGEQhn5h-bvwJ4WR4amJE4rjDZLQVyGfPJQdhRS2o2MK91DFJVoShGGn_l86qxXg3cJwaiOcGOG2PU315d8XjjqewxeDXGV0XT4WhHK2PIP87vHc-tK-LOX6-0-d4VnKbzH2IAYytEQ/s943/6.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj32e5OemgCQ8-yZYRsYlHIqOZxUyAqp0_l95zOpmu3g8VMtG6nGEQhn5h-bvwJ4WR4amJE4rjDZLQVyGfPJQdhRS2o2MK91DFJVoShGGn_l86qxXg3cJwaiOcGOG2PU315d8XjjqewxeDXGV0XT4WhHK2PIP87vHc-tK-LOX6-0-d4VnKbzH2IAYytEQ/s320/6.jpg\" style=\"height:320px; width:170px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLR7-_mbFpArqEeNRUx2zer_RvRF8ewO6pMJgpxOr_qkEaiaV_lSRAEJegrDxcDXfsBNOOo5PsBE1LxtRa0qG5qnPQeVxzdVq6JYcN4XPUEEdEfuydhwqx11ULOHxLn4QmuzQnA4boMxBkXziZoNdQfznKfxS1gm3q9BUDNyBABCLgtCRjr8NmJASBSQ/s943/7.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgLR7-_mbFpArqEeNRUx2zer_RvRF8ewO6pMJgpxOr_qkEaiaV_lSRAEJegrDxcDXfsBNOOo5PsBE1LxtRa0qG5qnPQeVxzdVq6JYcN4XPUEEdEfuydhwqx11ULOHxLn4QmuzQnA4boMxBkXziZoNdQfznKfxS1gm3q9BUDNyBABCLgtCRjr8NmJASBSQ/s320/7.jpg\" style=\"height:320px; width:170px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhGOA0D38iIg5Mwp6XniLMAJFWbf-vtiEoQaE4yD9qHdkHMV-yDArYAqCIcnlcmiGbHrLsTAJ1aBaAk67-cEhGAnBZDebhlncAfuM85ATDeTdxjtSPH9ubu4LtZfhM0rIor7i2RJdNbvPrMtw872j4HvDQp6fxUH0C3kIj3M9QlILFHfHFUUKWZFLs2xA/s943/8.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhGOA0D38iIg5Mwp6XniLMAJFWbf-vtiEoQaE4yD9qHdkHMV-yDArYAqCIcnlcmiGbHrLsTAJ1aBaAk67-cEhGAnBZDebhlncAfuM85ATDeTdxjtSPH9ubu4LtZfhM0rIor7i2RJdNbvPrMtw872j4HvDQp6fxUH0C3kIj3M9QlILFHfHFUUKWZFLs2xA/s320/8.jpg\" style=\"height:320px; width:170px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjlibuXrkg3VFM0e71bv8sAMy12vaUeVRgBSRvJJLlQF3aOuHEKMT3_Sf_UcKTFi2WZMQJ7Ey9CewckcDoJwvzcmP6Urpl5M3SrjqzfNzj-p23tYTHIcyK33XPDLU1VUPi8J1xPMoaCqTiKAWUVgtllnMUCvnkTaeyCxWEtVTOjZ5LZHpDCNAJjQRJS9w/s943/9.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjlibuXrkg3VFM0e71bv8sAMy12vaUeVRgBSRvJJLlQF3aOuHEKMT3_Sf_UcKTFi2WZMQJ7Ey9CewckcDoJwvzcmP6Urpl5M3SrjqzfNzj-p23tYTHIcyK33XPDLU1VUPi8J1xPMoaCqTiKAWUVgtllnMUCvnkTaeyCxWEtVTOjZ5LZHpDCNAJjQRJS9w/s320/9.jpg\" style=\"height:320px; width:170px\" /></a></div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n</div>\r\n</div>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id`, `kategori`) VALUES
(2, 'Umum'),
(3, 'Khusus'),
(4, 'Serial TV'),
(5, 'Film'),
(6, 'FTV');

-- --------------------------------------------------------

--
-- Table structure for table `tb_komentar`
--

CREATE TABLE `tb_komentar` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `isi` varchar(200) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('1','0') DEFAULT NULL,
  `beritaid` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_komentar`
--

INSERT INTO `tb_komentar` (`id`, `nama`, `email`, `isi`, `tanggal`, `status`, `beritaid`, `parent`) VALUES
(1, 'Seree', 'ammar.fiky@gmail.com', 'Niice', '2023-04-17 08:50:43', '1', 5, 0),
(2, 'Ammar', '', 'ty', '2019-05-10 02:42:35', '1', 5, 1),
(3, 'a', 'admin1@gmail.com', ' aaaa', '2023-04-14 04:03:13', '1', 17, 0),
(4, 'aa', 'muhammadivanfadilah6@gmail.com', ' test', '2023-04-14 04:00:27', '1', 18, 0),
(5, 'aa', 'muhammadivanfadilah6@gmail.com', ' Mantap', '2023-04-14 06:45:12', '1', 7, 0),
(6, 'a', 'admin1@gmail.com', ' AAA', '2023-04-17 10:29:52', '1', 7, 0),
(7, 'AA', 'muhammadivanfadilah@gmail.com', ' AA', '2023-04-19 04:57:34', '1', 5, 0),
(8, 'aa', 'ivan@gmail.com', ' alus', '2023-04-19 04:57:33', '1', 7, 2),
(9, 'ivan', 'muhammadivanfadilah@gmail.com', ' Mantaps', '2023-04-19 04:57:36', '1', 17, 0),
(10, 'admin', '', 'Terimakasih ', '2023-04-19 04:58:17', '1', 17, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `urutan` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengumuman`
--

CREATE TABLE `tb_pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) NOT NULL,
  `isi` text NOT NULL,
  `slug` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengumuman`
--

INSERT INTO `tb_pengumuman` (`id`, `judul`, `tanggal`, `userid`, `isi`, `slug`) VALUES
(7, 'Undangan Penyerahan SK Kenaikan Pangkat Periode April 2019', '2020-12-28 13:11:10', 7, '<p>Undangan Penyerahan SK Kenaikan Pangkat Periode April 2019</p>\r\n\r\n<p>link:&nbsp;<a href=\"https://drive.google.com/file/d/1MFY-HaWp1C3RCt6z6jJMzbxeJs6SNx7D/view?usp=sharing\">https://drive.google.com/file/d/1MFY-HaWp1C3RCt6z6jJMzbxeJs6SNx7D/view?usp=sharing</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lampiran Undangan Penyerahan SK. Kenaikan Pangkat Periode April 2019</p>\r\n\r\n<p>link :&nbsp;<a href=\"https://drive.google.com/file/d/1cRzctBUPRNL7hqPqs75jGYhnwL880ITy/view?usp=sharing\">https://drive.google.com/file/d/1cRzctBUPRNL7hqPqs75jGYhnwL880ITy/view?usp=sharing</a></p>\r\n', 'undangan-penyerahan-sk-kenaikan-pangkat-periode-april-2019');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengunjung`
--

CREATE TABLE `tb_pengunjung` (
  `id` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(40) DEFAULT NULL,
  `perangkat` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengunjung`
--

INSERT INTO `tb_pengunjung` (`id`, `tanggal`, `ip`, `perangkat`) VALUES
(1, '2019-01-03 15:15:08', '::1', 'Chrome'),
(2, '2019-01-04 00:16:10', '::1', 'Chrome'),
(3, '2019-01-05 10:14:54', '::1', 'Chrome'),
(4, '2019-01-05 11:20:12', '192.168.0.2', 'Chrome'),
(5, '2019-01-06 02:58:50', '::1', 'Chrome'),
(6, '2019-01-07 01:31:54', '::1', 'Chrome'),
(7, '2019-01-07 23:49:54', '::1', 'Chrome'),
(8, '2019-01-08 02:45:44', '192.168.100.119', 'Firefox'),
(9, '2019-01-08 03:08:37', '192.168.100.134', 'Chrome'),
(10, '2019-01-08 22:53:31', '::1', 'Chrome'),
(11, '2019-01-10 02:39:08', '::1', 'Chrome'),
(12, '2019-01-12 02:10:53', '::1', 'Chrome'),
(13, '2019-01-13 09:52:43', '::1', 'Chrome'),
(14, '2019-01-13 22:37:28', '::1', 'Chrome'),
(15, '2019-01-15 12:33:49', '::1', 'Chrome'),
(16, '2019-01-15 22:15:30', '::1', 'Chrome'),
(17, '2019-01-16 22:57:31', '::1', 'Chrome'),
(18, '2019-01-17 20:32:33', '::1', 'Chrome'),
(19, '2019-01-19 22:35:11', '::1', 'Chrome'),
(20, '2019-01-20 21:38:48', '::1', 'Chrome'),
(21, '2019-01-21 20:57:50', '::1', 'Chrome'),
(22, '2019-01-22 21:56:59', '::1', 'Chrome'),
(23, '2019-01-23 23:14:28', '::1', 'Chrome'),
(24, '2019-01-24 17:43:12', '::1', 'Chrome'),
(25, '2019-01-25 02:12:06', '192.168.100.211', 'Chrome'),
(26, '2019-01-25 02:13:08', '192.168.100.79', 'Chrome'),
(27, '2019-01-25 21:47:08', '::1', 'Chrome'),
(28, '2019-01-27 06:49:04', '::1', 'Chrome'),
(29, '2019-01-27 21:32:23', '::1', 'Chrome'),
(30, '2019-01-28 21:37:21', '::1', 'Chrome'),
(31, '2019-01-28 21:37:21', '::1', 'Chrome'),
(32, '2019-01-29 17:36:01', '::1', 'Chrome'),
(33, '2019-02-02 02:15:08', '::1', 'Chrome'),
(34, '2019-02-02 22:27:40', '::1', 'Chrome'),
(35, '2019-02-08 07:26:48', '::1', 'Chrome'),
(36, '2019-02-09 06:47:15', '::1', 'Chrome'),
(37, '2019-02-11 16:36:57', '::1', 'Chrome'),
(38, '2019-02-14 10:15:27', '::1', 'Chrome'),
(39, '2019-02-15 03:37:12', '192.168.100.107', 'Chrome'),
(40, '2019-02-15 03:53:36', '::1', 'Chrome'),
(41, '2019-02-15 03:53:37', '192.168.100.96', 'Chrome'),
(42, '2019-02-16 14:03:57', '::1', 'Chrome'),
(43, '2019-02-17 01:34:01', '::1', 'Chrome'),
(44, '2019-02-21 00:50:30', '::1', 'Chrome'),
(45, '2019-02-21 00:50:31', '127.0.0.1', 'Chrome'),
(46, '2019-02-21 03:53:49', '192.168.100.34', 'Chrome'),
(47, '2019-02-21 03:54:53', '192.168.100.26', 'Chrome'),
(48, '2019-02-25 22:18:19', '::1', 'Chrome'),
(49, '2019-02-26 04:11:16', '192.168.100.139', 'Chrome'),
(50, '2019-02-28 07:07:59', '::1', 'Chrome'),
(51, '2019-02-28 22:48:54', '::1', 'Chrome'),
(52, '2019-03-02 01:38:48', '::1', 'Chrome'),
(53, '2019-03-03 02:55:52', '::1', 'Chrome'),
(54, '2019-03-06 23:03:14', '::1', 'Chrome'),
(55, '2019-03-07 17:20:24', '::1', 'Chrome'),
(56, '2019-03-11 07:43:59', '::1', 'Chrome'),
(57, '2019-05-08 03:25:57', '::1', 'Chrome'),
(58, '2019-05-08 17:01:38', '::1', 'Chrome'),
(59, '2019-05-09 05:12:24', '125.166.234.176', 'Firefox'),
(60, '2019-05-09 05:23:40', '184.72.115.35', 'Safari'),
(61, '2019-05-09 05:23:40', '54.175.74.27', 'Safari'),
(62, '2019-05-09 05:23:41', '54.86.66.252', 'Safari'),
(63, '2019-05-09 05:40:19', '52.71.155.178', 'Safari'),
(64, '2019-05-09 17:17:18', '185.220.101.50', 'Safari'),
(65, '2019-05-09 17:23:18', '199.249.230.107', 'Safari'),
(66, '2019-05-09 18:08:56', '120.188.81.150', 'Firefox'),
(67, '2019-05-09 19:07:41', '185.245.85.228', 'Chrome'),
(68, '2019-05-09 21:28:15', '120.188.78.237', 'Firefox'),
(69, '2019-05-09 23:04:59', '54.86.66.252', 'Safari'),
(70, '2019-05-10 00:23:38', '52.71.155.178', 'Safari'),
(71, '2019-05-10 02:53:07', '54.86.126.150', 'Chrome'),
(72, '2019-05-10 03:40:42', '54.209.60.63', 'Safari'),
(73, '2019-05-10 11:00:21', '185.100.87.207', 'Safari'),
(74, '2019-05-10 11:15:15', '37.9.87.164', 'YandexBot'),
(75, '2019-05-10 15:35:12', '209.17.97.58', 'Mozilla'),
(76, '2019-05-10 16:54:09', '198.98.57.155', 'Safari'),
(77, '2019-05-10 17:42:39', '199.249.230.118', 'Safari'),
(78, '2019-05-10 21:53:56', '5.135.183.25', 'Chrome'),
(79, '2019-05-10 23:35:43', '18.85.192.253', 'Safari'),
(80, '2019-05-10 23:36:27', '62.210.201.91', 'Internet Explorer'),
(81, '2019-05-10 23:41:54', '185.220.101.28', 'Safari'),
(82, '2019-05-11 02:42:42', '178.175.148.34', 'Safari'),
(83, '2019-05-11 11:10:36', '120.188.73.46', 'Chrome'),
(84, '2019-05-11 12:45:29', '114.4.218.171', 'Chrome'),
(85, '2019-05-11 12:54:44', '54.86.66.252', 'Safari'),
(86, '2019-05-11 12:54:49', '184.72.115.35', 'Safari'),
(87, '2019-05-11 17:32:10', '5.255.250.41', 'YandexBot'),
(88, '2019-05-11 23:05:42', '185.112.254.195', 'Safari'),
(89, '2019-05-12 03:08:01', '144.217.165.223', 'Safari'),
(90, '2019-05-12 03:09:05', '199.249.230.87', 'Safari'),
(91, '2019-05-12 09:40:38', '18.85.192.253', 'Safari'),
(92, '2019-05-12 13:57:10', '114.4.216.122', 'Chrome'),
(93, '2019-05-12 14:56:51', '216.244.66.194', 'Mozilla'),
(94, '2019-05-12 15:51:15', '141.8.143.183', 'YandexBot'),
(95, '2019-05-12 15:51:18', '93.158.161.171', 'YandexBot'),
(96, '2019-05-12 17:52:14', '5.255.250.41', 'YandexBot'),
(97, '2019-05-12 21:56:50', '141.8.143.183', 'YandexBot'),
(98, '2019-05-12 23:16:12', '5.45.207.1', 'YandexBot'),
(99, '2019-05-12 23:18:15', '141.8.142.13', 'YandexBot'),
(100, '2019-05-13 00:58:36', '195.176.3.23', 'Safari'),
(101, '2019-05-13 11:18:16', '185.112.254.195', 'Safari'),
(102, '2019-05-13 12:16:18', '23.129.64.152', 'Safari'),
(103, '2019-05-13 12:47:37', '54.36.148.52', 'Mozilla'),
(104, '2019-05-13 14:08:27', '141.8.143.129', 'YandexBot'),
(105, '2019-05-13 16:00:59', '54.36.148.200', 'Mozilla'),
(106, '2019-05-13 17:55:45', '54.36.149.33', 'Mozilla'),
(107, '2019-05-13 20:17:13', '54.36.148.37', 'Mozilla'),
(108, '2019-05-13 20:46:38', '54.36.148.221', 'Mozilla'),
(109, '2019-05-13 20:58:15', '54.36.148.12', 'Mozilla'),
(110, '2019-05-13 21:38:28', '216.244.66.194', 'Mozilla'),
(111, '2019-05-13 23:41:14', '54.36.148.180', 'Mozilla'),
(112, '2019-05-13 23:59:21', '54.36.149.13', 'Mozilla'),
(113, '2019-05-14 04:12:04', '35.181.4.90', 'Other'),
(114, '2019-05-14 06:00:31', '54.36.148.13', 'Mozilla'),
(115, '2019-05-14 10:12:13', '54.36.149.18', 'Mozilla'),
(116, '2019-05-14 11:57:44', '54.36.148.134', 'Mozilla'),
(117, '2019-05-14 17:52:58', '54.36.148.242', 'Mozilla'),
(118, '2019-05-14 20:39:57', '54.36.148.217', 'Mozilla'),
(119, '2019-05-14 22:28:15', '141.8.143.183', 'YandexBot'),
(120, '2019-05-14 22:31:48', '54.36.148.63', 'Mozilla'),
(121, '2019-05-14 23:58:06', '216.244.66.194', 'Mozilla'),
(122, '2019-05-15 00:00:17', '108.62.3.45', 'Opera'),
(123, '2019-05-15 00:25:32', '54.36.149.57', 'Mozilla'),
(124, '2019-05-15 01:02:12', '185.132.177.199', 'Chrome'),
(125, '2019-05-15 01:49:23', '54.36.148.92', 'Mozilla'),
(126, '2019-05-15 02:07:51', '5.255.250.41', 'YandexBot'),
(127, '2019-05-15 05:27:19', '54.36.148.94', 'Mozilla'),
(128, '2019-05-15 14:26:39', '54.36.148.61', 'Mozilla'),
(129, '2019-05-15 18:27:24', '18.85.192.253', 'Safari'),
(130, '2019-05-15 19:36:42', '54.36.148.19', 'Mozilla'),
(131, '2019-05-15 22:27:54', '93.158.161.91', 'YandexBot'),
(132, '2019-05-16 01:03:46', '54.36.148.158', 'Mozilla'),
(133, '2019-05-16 01:06:11', '54.36.149.82', 'Mozilla'),
(134, '2019-05-16 01:57:39', '54.36.148.170', 'Mozilla'),
(135, '2019-05-16 02:12:00', '54.36.149.23', 'Mozilla'),
(136, '2019-05-16 04:38:29', '216.244.66.194', 'Mozilla'),
(137, '2019-05-16 05:30:38', '54.36.148.239', 'Mozilla'),
(138, '2019-05-16 06:14:04', '5.255.250.41', 'YandexBot'),
(139, '2019-05-16 07:34:35', '54.36.148.58', 'Mozilla'),
(140, '2019-05-16 20:48:19', '54.36.148.243', 'Mozilla'),
(141, '2019-05-16 22:28:20', '54.36.149.24', 'Mozilla'),
(142, '2019-05-16 23:13:14', '51.15.117.50', 'Safari'),
(143, '2019-05-17 02:12:58', '54.36.149.97', 'Mozilla'),
(144, '2019-05-17 04:51:18', '209.17.97.10', 'Mozilla'),
(145, '2019-05-17 05:21:55', '54.36.148.69', 'Mozilla'),
(146, '2019-05-17 06:01:25', '185.220.101.5', 'Safari'),
(147, '2019-05-17 06:22:24', '54.36.148.51', 'Mozilla'),
(148, '2019-05-17 08:04:16', '54.36.148.249', 'Mozilla'),
(149, '2019-05-17 11:37:00', '54.36.149.6', 'Mozilla'),
(150, '2019-05-17 12:33:30', '54.36.148.123', 'Mozilla'),
(151, '2019-05-17 13:10:39', '54.36.149.49', 'Mozilla'),
(152, '2019-05-17 14:09:54', '95.154.200.145', 'Opera'),
(153, '2019-05-17 14:12:40', '54.36.149.16', 'Mozilla'),
(154, '2019-05-17 14:52:16', '54.36.148.168', 'Mozilla'),
(155, '2019-05-17 17:33:28', '199.249.230.115', 'Safari'),
(156, '2019-05-17 18:27:25', '216.244.66.194', 'Mozilla'),
(157, '2019-05-17 19:30:09', '54.36.149.88', 'Mozilla'),
(158, '2019-05-17 20:32:43', '31.220.40.54', 'Safari'),
(159, '2019-05-17 20:56:33', '54.36.149.75', 'Mozilla'),
(160, '2019-05-18 02:56:53', '54.36.148.109', 'Mozilla'),
(161, '2019-05-18 07:07:12', '54.36.149.89', 'Mozilla'),
(162, '2019-05-18 08:57:44', '171.13.14.27', 'Safari'),
(163, '2019-05-18 08:57:53', '171.13.14.16', 'Safari'),
(164, '2019-05-18 08:58:09', '171.13.14.21', 'Safari'),
(165, '2019-05-18 10:56:46', '94.230.208.147', 'Safari'),
(166, '2019-05-18 11:43:54', '185.220.101.56', 'Safari'),
(167, '2019-05-18 15:28:24', '5.255.250.41', 'YandexBot'),
(168, '2019-05-19 06:37:04', '216.244.66.194', 'Mozilla'),
(169, '2019-05-19 07:16:11', '5.255.250.41', 'YandexBot'),
(170, '2019-05-19 11:15:09', '104.244.73.199', 'Safari'),
(171, '2019-05-20 14:33:27', '5.255.250.41', 'YandexBot'),
(172, '2019-05-20 16:23:28', '91.148.141.162', 'Chrome'),
(173, '2019-05-20 19:11:44', '199.115.97.202', 'Firefox'),
(174, '2019-05-20 21:15:02', '209.17.96.58', 'Mozilla'),
(175, '2019-05-20 21:38:45', '141.8.143.183', 'YandexBot'),
(176, '2019-05-20 21:38:46', '5.255.250.41', 'YandexBot'),
(177, '2019-05-21 06:28:19', '209.17.96.250', 'Mozilla'),
(178, '2019-05-21 10:03:04', '54.36.149.54', 'Mozilla'),
(179, '2019-05-21 10:56:28', '54.36.148.24', 'Mozilla'),
(180, '2019-05-21 10:58:49', '54.36.149.77', 'Mozilla'),
(181, '2019-05-21 11:33:56', '54.36.148.76', 'Mozilla'),
(182, '2019-05-21 11:34:34', '54.36.148.39', 'Mozilla'),
(183, '2019-05-21 11:36:26', '54.36.148.235', 'Mozilla'),
(184, '2019-05-21 12:02:01', '54.36.148.121', 'Mozilla'),
(185, '2019-05-21 15:14:50', '64.246.178.34', 'Firefox'),
(186, '2019-05-21 17:36:15', '185.230.127.103', 'Opera'),
(187, '2019-05-21 18:20:22', '54.36.148.34', 'Mozilla'),
(188, '2019-05-21 18:45:37', '54.36.149.3', 'Mozilla'),
(189, '2019-05-21 18:52:10', '209.17.97.26', 'Mozilla'),
(190, '2019-05-21 19:07:10', '54.36.149.89', 'Mozilla'),
(191, '2019-05-21 19:19:36', '54.36.149.42', 'Mozilla'),
(192, '2019-05-21 19:45:16', '54.36.148.171', 'Mozilla'),
(193, '2019-05-21 19:45:32', '5.255.250.41', 'YandexBot'),
(194, '2019-05-21 20:01:17', '54.36.148.37', 'Mozilla'),
(195, '2019-05-21 20:20:27', '141.8.143.183', 'YandexBot'),
(196, '2019-05-21 20:48:04', '54.36.149.80', 'Mozilla'),
(197, '2019-05-21 21:51:21', '54.36.148.78', 'Mozilla'),
(198, '2019-05-21 22:03:05', '54.36.148.164', 'Mozilla'),
(199, '2019-05-21 22:20:46', '54.36.148.247', 'Mozilla'),
(200, '2019-05-21 23:00:15', '54.36.148.167', 'Mozilla'),
(201, '2019-05-21 23:09:51', '54.36.148.3', 'Mozilla'),
(202, '2019-05-22 00:03:13', '54.36.148.117', 'Mozilla'),
(203, '2019-05-22 02:18:20', '54.36.148.206', 'Mozilla'),
(204, '2019-05-22 03:01:28', '54.36.149.57', 'Mozilla'),
(205, '2019-05-22 03:14:08', '54.36.148.50', 'Mozilla'),
(206, '2019-05-22 03:53:38', '54.36.149.71', 'Mozilla'),
(207, '2019-05-22 03:55:01', '54.36.149.0', 'Mozilla'),
(208, '2019-05-22 04:39:59', '54.36.149.77', 'Mozilla'),
(209, '2019-05-22 05:15:16', '54.36.149.50', 'Mozilla'),
(210, '2019-05-22 05:19:54', '209.17.96.202', 'Mozilla'),
(211, '2019-05-22 05:25:00', '54.36.148.165', 'Mozilla'),
(212, '2019-05-22 05:28:38', '54.36.148.43', 'Mozilla'),
(213, '2019-05-22 06:04:00', '54.36.148.121', 'Mozilla'),
(214, '2019-05-22 08:48:39', '54.36.148.153', 'Mozilla'),
(215, '2019-05-22 09:23:06', '54.36.148.150', 'Mozilla'),
(216, '2019-05-22 09:46:09', '54.36.149.27', 'Mozilla'),
(217, '2019-05-22 10:22:08', '54.36.148.38', 'Mozilla'),
(218, '2019-05-22 10:45:05', '54.36.148.231', 'Mozilla'),
(219, '2019-05-22 11:19:46', '54.36.149.19', 'Mozilla'),
(220, '2019-05-22 11:38:07', '199.30.231.1', 'Chrome'),
(221, '2019-05-22 11:38:12', '64.233.172.129', 'Chrome'),
(222, '2019-05-22 13:22:41', '54.36.148.179', 'Mozilla'),
(223, '2019-05-22 13:29:50', '54.36.148.113', 'Mozilla'),
(224, '2019-05-22 14:17:45', '54.36.149.64', 'Mozilla'),
(225, '2019-05-22 17:54:31', '5.255.250.41', 'YandexBot'),
(226, '2019-05-22 18:05:36', '54.36.149.79', 'Mozilla'),
(227, '2019-05-22 19:41:56', '54.36.148.178', 'Mozilla'),
(228, '2019-05-22 20:06:51', '54.36.148.117', 'Mozilla'),
(229, '2019-05-22 20:18:31', '54.36.148.141', 'Mozilla'),
(230, '2019-05-22 20:53:28', '54.36.149.78', 'Mozilla'),
(231, '2019-05-22 21:07:31', '178.154.244.39', 'YandexBot'),
(232, '2019-05-22 21:09:17', '5.255.253.22', 'YandexBot'),
(233, '2019-05-22 21:17:44', '54.36.148.49', 'Mozilla'),
(234, '2019-05-22 22:19:01', '54.36.148.239', 'Mozilla'),
(235, '2019-05-22 23:23:17', '54.36.148.50', 'Mozilla'),
(236, '2019-05-22 23:32:09', '54.36.148.63', 'Mozilla'),
(237, '2019-05-23 00:09:23', '54.36.148.185', 'Mozilla'),
(238, '2019-05-23 00:25:47', '54.36.148.53', 'Mozilla'),
(239, '2019-05-23 00:45:38', '54.36.148.110', 'Mozilla'),
(240, '2019-05-23 01:21:14', '54.36.148.202', 'Mozilla'),
(241, '2019-05-23 01:37:01', '91.148.141.162', 'Chrome'),
(242, '2019-05-23 02:02:41', '54.36.148.58', 'Mozilla'),
(243, '2019-05-23 02:17:15', '54.36.149.38', 'Mozilla'),
(244, '2019-05-23 02:23:03', '120.188.77.24', 'Firefox'),
(245, '2019-05-23 02:23:03', '120.188.77.24', 'Firefox'),
(246, '2019-05-23 02:48:15', '54.36.148.217', 'Mozilla'),
(247, '2019-05-23 03:42:26', '54.36.149.65', 'Mozilla'),
(248, '2019-05-23 04:49:17', '54.36.148.210', 'Mozilla'),
(249, '2019-05-23 05:16:09', '54.36.148.221', 'Mozilla'),
(250, '2019-05-23 06:26:50', '54.36.148.148', 'Mozilla'),
(251, '2019-05-23 08:22:58', '54.36.149.26', 'Mozilla'),
(252, '2019-05-23 09:55:50', '54.36.148.116', 'Mozilla'),
(253, '2019-05-23 11:21:01', '54.36.148.212', 'Mozilla'),
(254, '2019-05-23 12:05:29', '54.36.148.213', 'Mozilla'),
(255, '2019-05-23 12:54:41', '54.36.148.164', 'Mozilla'),
(256, '2019-05-23 13:19:53', '54.36.148.134', 'Mozilla'),
(257, '2019-05-23 13:33:09', '54.36.148.62', 'Mozilla'),
(258, '2019-05-23 13:33:45', '54.36.148.124', 'Mozilla'),
(259, '2019-05-23 14:17:05', '54.36.148.82', 'Mozilla'),
(260, '2019-05-23 14:28:42', '54.36.148.38', 'Mozilla'),
(261, '2019-05-23 15:03:26', '54.36.149.88', 'Mozilla'),
(262, '2019-05-23 15:03:32', '54.36.148.190', 'Mozilla'),
(263, '2019-05-23 15:06:37', '54.36.148.107', 'Mozilla'),
(264, '2019-05-23 15:32:01', '54.36.148.35', 'Mozilla'),
(265, '2019-05-23 16:21:09', '54.36.149.103', 'Mozilla'),
(266, '2019-05-23 16:43:13', '54.36.148.113', 'Mozilla'),
(267, '2019-05-23 18:00:45', '54.36.149.71', 'Mozilla'),
(268, '2019-05-23 18:34:33', '5.255.250.41', 'YandexBot'),
(269, '2019-05-23 19:22:05', '62.210.201.91', 'Internet Explorer'),
(270, '2019-05-23 20:41:48', '54.36.148.92', 'Mozilla'),
(271, '2019-05-23 21:00:02', '54.36.149.12', 'Mozilla'),
(272, '2019-05-23 21:00:37', '141.8.143.183', 'YandexBot'),
(273, '2019-05-23 21:28:48', '54.36.149.33', 'Mozilla'),
(274, '2019-05-23 21:59:57', '54.36.149.44', 'Mozilla'),
(275, '2019-05-23 22:26:07', '54.36.149.18', 'Mozilla'),
(276, '2019-05-23 23:28:41', '54.36.148.58', 'Mozilla'),
(277, '2019-05-23 23:32:39', '54.36.148.17', 'Mozilla'),
(278, '2019-05-24 01:24:07', '54.36.148.27', 'Mozilla'),
(279, '2019-05-24 01:24:56', '54.36.149.39', 'Mozilla'),
(280, '2019-05-24 03:32:25', '54.36.149.104', 'Mozilla'),
(281, '2019-05-24 03:40:19', '54.36.149.97', 'Mozilla'),
(282, '2019-05-24 04:04:01', '54.36.148.53', 'Mozilla'),
(283, '2019-05-24 06:47:41', '54.36.148.111', 'Mozilla'),
(284, '2019-05-24 06:48:46', '54.36.148.8', 'Mozilla'),
(285, '2019-05-24 06:50:23', '54.36.148.35', 'Mozilla'),
(286, '2019-05-24 08:05:59', '54.36.148.224', 'Mozilla'),
(287, '2019-05-24 08:17:54', '54.36.149.61', 'Mozilla'),
(288, '2019-05-24 08:27:34', '54.36.149.21', 'Mozilla'),
(289, '2019-05-24 08:34:04', '54.36.148.173', 'Mozilla'),
(290, '2019-05-24 08:55:09', '54.36.148.46', 'Mozilla'),
(291, '2019-05-24 10:58:15', '54.36.149.51', 'Mozilla'),
(292, '2019-05-24 11:57:41', '185.127.17.85', 'Other'),
(293, '2019-05-24 12:05:27', '193.70.34.209', 'Chrome'),
(294, '2019-05-24 12:49:02', '54.36.148.15', 'Mozilla'),
(295, '2019-05-24 13:00:15', '54.36.148.102', 'Mozilla'),
(296, '2019-05-24 13:44:01', '54.36.149.13', 'Mozilla'),
(297, '2019-05-24 14:10:55', '54.36.148.244', 'Mozilla'),
(298, '2019-05-24 15:00:21', '54.36.148.137', 'Mozilla'),
(299, '2019-05-24 15:07:02', '54.36.148.88', 'Mozilla'),
(300, '2019-05-24 17:16:26', '54.36.149.41', 'Mozilla'),
(301, '2019-05-24 18:28:25', '54.36.148.179', 'Mozilla'),
(302, '2019-05-24 19:02:40', '54.36.148.135', 'Mozilla'),
(303, '2019-05-24 19:12:01', '54.36.148.129', 'Mozilla'),
(304, '2019-05-24 20:11:42', '54.36.148.213', 'Mozilla'),
(305, '2019-05-24 20:48:13', '54.36.148.130', 'Mozilla'),
(306, '2019-05-24 20:48:33', '54.36.148.184', 'Mozilla'),
(307, '2019-05-24 21:28:06', '54.36.149.89', 'Mozilla'),
(308, '2019-05-24 21:46:42', '54.36.148.214', 'Mozilla'),
(309, '2019-05-24 22:49:07', '54.36.148.225', 'Mozilla'),
(310, '2019-05-24 23:16:46', '54.36.148.124', 'Mozilla'),
(311, '2019-05-24 23:51:38', '54.36.148.188', 'Mozilla'),
(312, '2019-05-25 00:50:26', '54.36.148.93', 'Mozilla'),
(313, '2019-05-25 01:12:08', '54.36.148.143', 'Mozilla'),
(314, '2019-05-25 03:44:09', '54.36.148.229', 'Mozilla'),
(315, '2019-05-25 04:31:33', '54.36.149.12', 'Mozilla'),
(316, '2019-05-25 04:45:03', '54.36.149.25', 'Mozilla'),
(317, '2019-05-25 06:11:02', '54.36.148.97', 'Mozilla'),
(318, '2019-05-25 06:13:51', '54.36.148.234', 'Mozilla'),
(319, '2019-05-25 06:26:33', '185.127.18.74', 'Other'),
(320, '2019-05-25 07:38:28', '54.36.148.73', 'Mozilla'),
(321, '2019-05-25 08:37:01', '54.36.148.227', 'Mozilla'),
(322, '2019-05-25 08:53:46', '54.36.148.27', 'Mozilla'),
(323, '2019-05-25 12:30:15', '54.36.148.65', 'Mozilla'),
(324, '2019-05-25 14:55:50', '209.17.97.10', 'Mozilla'),
(325, '2019-05-25 15:30:16', '54.36.148.116', 'Mozilla'),
(326, '2019-05-25 18:02:07', '54.36.148.167', 'Mozilla'),
(327, '2019-05-25 18:51:31', '54.36.149.15', 'Mozilla'),
(328, '2019-05-25 19:01:02', '54.36.148.130', 'Mozilla'),
(329, '2019-05-25 19:11:08', '54.36.148.7', 'Mozilla'),
(330, '2019-05-25 20:55:00', '54.36.148.51', 'Mozilla'),
(331, '2019-05-26 01:45:36', '54.36.149.92', 'Mozilla'),
(332, '2019-05-26 03:02:27', '54.36.148.52', 'Mozilla'),
(333, '2019-05-26 03:09:46', '5.255.250.41', 'YandexBot'),
(334, '2019-05-26 03:10:44', '54.36.149.21', 'Mozilla'),
(335, '2019-05-26 04:57:34', '54.36.148.72', 'Mozilla'),
(336, '2019-05-26 06:48:42', '54.36.149.79', 'Mozilla'),
(337, '2019-05-26 07:28:27', '54.36.148.27', 'Mozilla'),
(338, '2019-05-26 08:07:54', '54.36.148.192', 'Mozilla'),
(339, '2019-05-26 12:23:10', '141.8.143.183', 'YandexBot'),
(340, '2019-05-26 16:05:04', '54.36.148.112', 'Mozilla'),
(341, '2019-05-26 16:25:34', '54.36.149.64', 'Mozilla'),
(342, '2019-05-26 17:34:02', '54.36.148.0', 'Mozilla'),
(343, '2019-05-26 17:46:19', '185.217.71.155', 'Chrome'),
(344, '2019-05-26 17:53:27', '54.36.148.157', 'Mozilla'),
(345, '2019-05-26 17:57:55', '54.36.148.226', 'Mozilla'),
(346, '2019-05-26 18:54:53', '54.36.148.50', 'Mozilla'),
(347, '2019-05-26 20:15:16', '54.36.148.19', 'Mozilla'),
(348, '2019-05-26 20:32:39', '54.36.148.87', 'Mozilla'),
(349, '2019-05-26 20:37:38', '54.36.148.156', 'Mozilla'),
(350, '2019-05-26 20:45:23', '54.36.148.205', 'Mozilla'),
(351, '2019-05-26 20:47:05', '54.36.149.96', 'Mozilla'),
(352, '2019-05-26 21:41:49', '54.36.148.242', 'Mozilla'),
(353, '2019-05-26 22:24:59', '54.36.149.50', 'Mozilla'),
(354, '2019-05-26 22:42:50', '54.36.148.217', 'Mozilla'),
(355, '2019-05-26 23:27:15', '54.36.149.78', 'Mozilla'),
(356, '2019-05-27 00:09:35', '54.36.148.225', 'Mozilla'),
(357, '2019-05-27 00:21:43', '54.36.148.61', 'Mozilla'),
(358, '2019-05-27 00:22:31', '54.36.148.110', 'Mozilla'),
(359, '2019-05-27 00:53:53', '54.36.149.100', 'Mozilla'),
(360, '2019-05-27 03:12:05', '54.36.148.184', 'Mozilla'),
(361, '2019-05-27 03:32:01', '54.36.148.146', 'Mozilla'),
(362, '2019-05-27 04:19:27', '54.36.148.81', 'Mozilla'),
(363, '2019-05-27 04:36:22', '54.36.148.114', 'Mozilla'),
(364, '2019-05-27 04:58:13', '54.36.148.241', 'Mozilla'),
(365, '2019-05-27 06:04:00', '54.36.148.60', 'Mozilla'),
(366, '2019-05-27 06:24:24', '54.36.149.38', 'Mozilla'),
(367, '2019-05-27 07:29:36', '54.36.149.39', 'Mozilla'),
(368, '2019-05-27 07:42:19', '54.36.148.51', 'Mozilla'),
(369, '2019-05-27 07:48:03', '54.36.148.204', 'Mozilla'),
(370, '2019-05-27 09:24:14', '54.36.149.22', 'Mozilla'),
(371, '2019-05-27 09:32:32', '54.36.148.55', 'Mozilla'),
(372, '2019-05-27 09:58:05', '54.36.148.124', 'Mozilla'),
(373, '2019-05-27 10:01:21', '54.36.148.134', 'Mozilla'),
(374, '2019-05-27 10:33:23', '54.36.149.43', 'Mozilla'),
(375, '2019-05-27 10:36:59', '54.36.149.101', 'Mozilla'),
(376, '2019-05-27 11:02:29', '54.36.148.154', 'Mozilla'),
(377, '2019-05-27 11:02:29', '54.36.149.89', 'Mozilla'),
(378, '2019-05-27 12:40:07', '54.36.148.89', 'Mozilla'),
(379, '2019-05-27 13:44:52', '54.36.148.119', 'Mozilla'),
(380, '2019-05-27 14:02:04', '54.36.148.181', 'Mozilla'),
(381, '2019-05-27 14:49:43', '54.36.148.122', 'Mozilla'),
(382, '2019-05-27 16:26:18', '54.36.148.25', 'Mozilla'),
(383, '2019-05-27 17:09:39', '54.36.148.98', 'Mozilla'),
(384, '2019-05-27 18:10:26', '54.36.150.49', 'Mozilla'),
(385, '2019-05-27 18:33:36', '54.36.148.233', 'Mozilla'),
(386, '2019-05-27 19:08:35', '54.36.150.37', 'Mozilla'),
(387, '2019-05-27 19:42:40', '54.36.148.181', 'Mozilla'),
(388, '2019-05-27 20:19:09', '54.36.149.86', 'Mozilla'),
(389, '2019-05-27 20:34:23', '54.36.150.22', 'Mozilla'),
(390, '2019-05-27 21:54:15', '54.36.150.173', 'Mozilla'),
(391, '2019-05-27 23:51:24', '54.36.148.173', 'Mozilla'),
(392, '2019-05-28 00:22:39', '54.36.150.74', 'Mozilla'),
(393, '2019-05-28 00:29:57', '54.36.150.176', 'Mozilla'),
(394, '2019-05-28 01:43:53', '54.36.148.29', 'Mozilla'),
(395, '2019-05-28 02:50:55', '151.80.39.16', 'Mozilla'),
(396, '2019-05-28 03:26:15', '54.36.148.218', 'Mozilla'),
(397, '2019-05-28 04:11:29', '54.36.149.28', 'Mozilla'),
(398, '2019-05-28 04:25:11', '54.36.150.5', 'Mozilla'),
(399, '2019-05-28 05:04:24', '54.36.148.253', 'Mozilla'),
(400, '2019-05-28 05:12:27', '54.36.150.184', 'Mozilla'),
(401, '2019-05-28 06:17:55', '54.36.148.157', 'Mozilla'),
(402, '2019-05-28 06:32:41', '54.36.150.70', 'Mozilla'),
(403, '2019-05-28 06:55:24', '54.36.150.81', 'Mozilla'),
(404, '2019-05-28 07:23:09', '54.36.150.73', 'Mozilla'),
(405, '2019-05-28 07:24:53', '54.36.150.75', 'Mozilla'),
(406, '2019-05-28 08:31:53', '54.36.150.71', 'Mozilla'),
(407, '2019-05-28 09:37:31', '54.36.148.114', 'Mozilla'),
(408, '2019-05-28 09:50:45', '54.36.150.102', 'Mozilla'),
(409, '2019-05-28 10:26:02', '54.36.148.160', 'Mozilla'),
(410, '2019-05-28 11:01:50', '54.36.150.82', 'Mozilla'),
(411, '2019-05-28 11:18:55', '54.36.150.170', 'Mozilla'),
(412, '2019-05-28 11:45:50', '54.36.150.186', 'Mozilla'),
(413, '2019-05-28 11:52:18', '54.36.148.230', 'Mozilla'),
(414, '2019-05-28 12:18:15', '54.36.150.138', 'Mozilla'),
(415, '2019-05-28 12:20:21', '54.36.150.17', 'Mozilla'),
(416, '2019-05-28 13:56:35', '5.255.250.41', 'YandexBot'),
(417, '2019-05-28 14:40:15', '54.36.148.178', 'Mozilla'),
(418, '2019-05-28 14:52:12', '54.36.148.239', 'Mozilla'),
(419, '2019-05-28 15:04:23', '54.36.148.236', 'Mozilla'),
(420, '2019-05-28 15:38:55', '141.8.143.183', 'YandexBot'),
(421, '2019-05-28 16:05:18', '54.36.148.134', 'Mozilla'),
(422, '2019-05-28 16:07:45', '54.36.148.147', 'Mozilla'),
(423, '2019-05-28 17:11:06', '54.36.149.42', 'Mozilla'),
(424, '2019-05-28 17:24:36', '54.36.150.172', 'Mozilla'),
(425, '2019-05-28 17:36:19', '54.36.150.174', 'Mozilla'),
(426, '2019-05-28 17:50:23', '54.36.150.152', 'Mozilla'),
(427, '2019-05-28 18:41:27', '54.36.148.98', 'Mozilla'),
(428, '2019-05-28 18:53:59', '54.36.150.24', 'Mozilla'),
(429, '2019-05-28 19:21:42', '54.36.148.23', 'Mozilla'),
(430, '2019-05-28 22:17:12', '54.36.150.59', 'Mozilla'),
(431, '2019-05-28 23:38:52', '54.36.149.1', 'Mozilla'),
(432, '2019-05-29 00:10:23', '54.36.150.178', 'Mozilla'),
(433, '2019-05-29 00:42:49', '54.36.148.243', 'Mozilla'),
(434, '2019-05-29 00:47:58', '54.36.150.94', 'Mozilla'),
(435, '2019-05-29 01:19:38', '54.36.150.82', 'Mozilla'),
(436, '2019-05-29 01:24:36', '54.36.148.219', 'Mozilla'),
(437, '2019-05-29 02:21:49', '54.36.148.27', 'Mozilla'),
(438, '2019-05-29 02:42:33', '209.17.96.202', 'Mozilla'),
(439, '2019-05-29 05:15:51', '54.36.150.136', 'Mozilla'),
(440, '2019-05-29 05:22:06', '209.17.97.50', 'Mozilla'),
(441, '2019-05-29 06:37:37', '54.36.149.51', 'Mozilla'),
(442, '2019-05-29 07:23:40', '54.36.150.106', 'Mozilla'),
(443, '2019-05-29 07:28:01', '54.36.149.45', 'Mozilla'),
(444, '2019-05-29 07:30:14', '54.36.150.85', 'Mozilla'),
(445, '2019-05-29 07:31:12', '54.36.149.97', 'Mozilla'),
(446, '2019-05-29 07:49:07', '54.36.150.31', 'Mozilla'),
(447, '2019-05-29 08:16:17', '54.36.150.100', 'Mozilla'),
(448, '2019-05-29 08:38:10', '54.36.148.101', 'Mozilla'),
(449, '2019-05-29 09:18:29', '54.36.148.11', 'Mozilla'),
(450, '2019-05-29 09:18:41', '54.36.148.228', 'Mozilla'),
(451, '2019-05-29 09:22:05', '54.36.148.125', 'Mozilla'),
(452, '2019-05-29 10:48:44', '54.36.150.37', 'Mozilla'),
(453, '2019-05-29 10:54:00', '54.36.150.183', 'Mozilla'),
(454, '2019-05-29 11:14:42', '54.36.148.176', 'Mozilla'),
(455, '2019-05-29 12:33:02', '54.36.148.191', 'Mozilla'),
(456, '2019-05-29 13:59:28', '54.36.150.115', 'Mozilla'),
(457, '2019-05-29 14:28:19', '54.36.149.92', 'Mozilla'),
(458, '2019-05-29 14:52:06', '54.36.150.87', 'Mozilla'),
(459, '2019-05-29 16:26:16', '54.36.150.138', 'Mozilla'),
(460, '2019-05-29 17:01:51', '54.36.149.64', 'Mozilla'),
(461, '2019-05-29 17:08:49', '31.13.190.27', 'Chrome'),
(462, '2019-05-29 17:30:37', '54.36.149.57', 'Mozilla'),
(463, '2019-05-29 18:01:53', '54.36.149.103', 'Mozilla'),
(464, '2019-05-29 19:05:52', '103.253.214.20', 'Other'),
(465, '2019-05-29 20:11:51', '54.36.148.76', 'Mozilla'),
(466, '2019-05-29 20:36:40', '54.36.148.11', 'Mozilla'),
(467, '2019-05-29 21:06:25', '54.36.150.81', 'Mozilla'),
(468, '2019-05-29 21:55:17', '54.36.150.82', 'Mozilla'),
(469, '2019-05-30 01:00:12', '54.36.150.158', 'Mozilla'),
(470, '2019-05-30 01:52:18', '54.36.150.121', 'Mozilla'),
(471, '2019-05-30 01:53:32', '54.36.150.95', 'Mozilla'),
(472, '2019-05-30 02:08:51', '54.36.148.159', 'Mozilla'),
(473, '2019-05-30 02:51:16', '54.36.148.186', 'Mozilla'),
(474, '2019-05-30 03:28:16', '54.36.150.38', 'Mozilla'),
(475, '2019-05-30 03:58:08', '54.36.149.13', 'Mozilla'),
(476, '2019-05-30 04:23:06', '54.36.150.123', 'Mozilla'),
(477, '2019-05-30 05:37:48', '54.36.150.71', 'Mozilla'),
(478, '2019-05-30 07:15:44', '54.36.150.47', 'Mozilla'),
(479, '2019-05-30 08:18:17', '54.36.148.91', 'Mozilla'),
(480, '2019-05-30 08:31:52', '54.36.149.68', 'Mozilla'),
(481, '2019-05-30 08:53:21', '31.13.115.23', 'Chrome'),
(482, '2019-05-30 08:59:05', '54.36.150.0', 'Mozilla'),
(483, '2019-05-30 09:00:37', '54.36.149.99', 'Mozilla'),
(484, '2019-05-30 10:11:22', '54.36.150.28', 'Mozilla'),
(485, '2019-05-30 10:28:33', '54.36.150.173', 'Mozilla'),
(486, '2019-05-30 11:34:58', '54.36.150.120', 'Mozilla'),
(487, '2019-05-30 11:49:46', '54.36.148.212', 'Mozilla'),
(488, '2019-05-30 12:01:35', '54.36.148.160', 'Mozilla'),
(489, '2019-05-30 12:36:59', '54.36.149.56', 'Mozilla'),
(490, '2019-05-30 14:00:26', '5.255.250.41', 'YandexBot'),
(491, '2019-05-30 14:00:27', '141.8.143.183', 'YandexBot'),
(492, '2019-05-30 14:56:32', '54.36.150.174', 'Mozilla'),
(493, '2019-05-30 15:31:03', '93.158.161.171', 'YandexBot'),
(494, '2019-05-30 15:49:11', '54.36.148.192', 'Mozilla'),
(495, '2019-05-30 16:00:47', '54.36.150.105', 'Mozilla'),
(496, '2019-05-30 17:57:08', '54.36.149.52', 'Mozilla'),
(497, '2019-05-30 19:04:27', '103.253.214.20', 'Other'),
(498, '2019-05-30 21:55:21', '54.36.150.101', 'Mozilla'),
(499, '2019-05-30 22:44:15', '5.255.250.41', 'YandexBot'),
(500, '2019-05-30 22:59:58', '54.36.150.72', 'Mozilla'),
(501, '2019-05-30 23:26:01', '54.36.150.175', 'Mozilla'),
(502, '2019-05-30 23:31:50', '54.36.149.9', 'Mozilla'),
(503, '2019-05-30 23:46:36', '54.36.150.8', 'Mozilla'),
(504, '2019-05-31 01:01:59', '54.36.148.241', 'Mozilla'),
(505, '2019-05-31 01:21:46', '54.36.150.51', 'Mozilla'),
(506, '2019-05-31 03:29:50', '54.36.148.151', 'Mozilla'),
(507, '2019-05-31 03:50:37', '54.36.149.25', 'Mozilla'),
(508, '2019-05-31 09:21:31', '18.182.43.120', 'Chrome'),
(509, '2019-05-31 10:16:18', '54.36.150.77', 'Mozilla'),
(510, '2019-05-31 11:25:46', '54.36.148.155', 'Mozilla'),
(511, '2019-05-31 12:20:08', '54.36.149.71', 'Mozilla'),
(512, '2019-05-31 12:39:20', '54.36.150.164', 'Mozilla'),
(513, '2019-05-31 12:46:10', '54.36.148.165', 'Mozilla'),
(514, '2019-05-31 13:37:55', '54.36.148.67', 'Mozilla'),
(515, '2019-05-31 13:54:30', '209.17.96.250', 'Mozilla'),
(516, '2019-05-31 14:09:07', '54.36.150.21', 'Mozilla'),
(517, '2019-05-31 14:38:37', '209.17.96.242', 'Mozilla'),
(518, '2019-05-31 14:54:49', '54.36.148.172', 'Mozilla'),
(519, '2019-05-31 15:11:54', '54.36.148.254', 'Mozilla'),
(520, '2019-05-31 15:39:07', '54.36.150.171', 'Mozilla'),
(521, '2019-05-31 18:17:19', '54.36.148.188', 'Mozilla'),
(522, '2019-05-31 18:41:59', '54.36.150.121', 'Mozilla'),
(523, '2019-05-31 19:04:50', '103.253.214.20', 'Other'),
(524, '2019-05-31 19:37:22', '54.36.149.61', 'Mozilla'),
(525, '2019-05-31 21:05:59', '54.36.148.179', 'Mozilla'),
(526, '2019-05-31 22:32:28', '54.36.148.109', 'Mozilla'),
(527, '2019-05-31 23:10:53', '3.14.143.245', 'Other'),
(528, '2019-06-01 00:21:42', '141.8.142.46', 'YandexBot'),
(529, '2019-06-01 01:11:28', '54.36.150.32', 'Mozilla'),
(530, '2019-06-01 01:40:53', '54.36.148.202', 'Mozilla'),
(531, '2019-06-01 03:43:05', '54.36.149.14', 'Mozilla'),
(532, '2019-06-01 06:26:25', '54.36.150.42', 'Mozilla'),
(533, '2019-06-01 06:42:53', '54.36.148.110', 'Mozilla'),
(534, '2019-06-01 08:53:35', '173.252.127.36', 'Chrome'),
(535, '2019-06-01 08:53:41', '173.252.127.2', 'Chrome'),
(536, '2019-06-01 11:24:20', '54.36.150.142', 'Mozilla'),
(537, '2019-06-01 13:54:11', '209.17.96.66', 'Mozilla'),
(538, '2019-06-01 14:51:49', '54.36.149.54', 'Mozilla'),
(539, '2019-06-01 17:03:34', '54.36.150.113', 'Mozilla'),
(540, '2019-06-01 17:34:54', '54.36.150.119', 'Mozilla'),
(541, '2019-06-01 17:46:38', '5.255.250.41', 'YandexBot'),
(542, '2019-06-01 17:46:38', '141.8.143.183', 'YandexBot'),
(543, '2019-06-01 18:12:33', '54.36.148.229', 'Mozilla'),
(544, '2019-06-01 18:31:18', '54.36.149.29', 'Mozilla'),
(545, '2019-06-01 19:01:18', '103.253.214.20', 'Other'),
(546, '2019-06-01 19:33:34', '54.36.150.76', 'Mozilla'),
(547, '2019-06-01 19:54:10', '54.36.150.16', 'Mozilla'),
(548, '2019-06-01 20:33:22', '54.36.149.71', 'Mozilla'),
(549, '2019-06-01 22:07:38', '54.36.150.100', 'Mozilla'),
(550, '2019-06-01 23:18:51', '54.36.150.35', 'Mozilla'),
(551, '2019-06-01 23:52:58', '54.36.150.124', 'Mozilla'),
(552, '2019-06-02 00:09:20', '54.36.148.248', 'Mozilla'),
(553, '2019-06-02 01:33:35', '54.36.150.187', 'Mozilla'),
(554, '2019-06-02 01:47:32', '54.36.150.34', 'Mozilla'),
(555, '2019-06-02 03:04:52', '54.36.150.131', 'Mozilla'),
(556, '2019-06-02 04:45:01', '54.36.148.142', 'Mozilla'),
(557, '2019-06-02 05:06:10', '54.36.148.21', 'Mozilla'),
(558, '2019-06-02 05:30:36', '54.36.149.9', 'Mozilla'),
(559, '2019-06-02 05:42:33', '54.36.148.52', 'Mozilla'),
(560, '2019-06-02 06:33:52', '54.36.150.182', 'Mozilla'),
(561, '2019-06-02 07:40:05', '54.36.148.212', 'Mozilla'),
(562, '2019-06-02 08:36:03', '54.36.150.159', 'Mozilla'),
(563, '2019-06-02 09:09:54', '54.36.150.81', 'Mozilla'),
(564, '2019-06-02 09:21:06', '54.36.148.98', 'Mozilla'),
(565, '2019-06-02 09:41:59', '54.36.150.27', 'Mozilla'),
(566, '2019-06-02 10:12:19', '54.36.150.68', 'Mozilla'),
(567, '2019-06-02 10:59:29', '54.36.149.11', 'Mozilla'),
(568, '2019-06-02 11:54:37', '54.36.149.106', 'Mozilla'),
(569, '2019-06-02 13:07:29', '54.36.149.0', 'Mozilla'),
(570, '2019-06-02 13:53:09', '54.36.150.185', 'Mozilla'),
(571, '2019-06-02 14:02:44', '54.36.150.166', 'Mozilla'),
(572, '2019-06-02 14:33:08', '54.36.149.10', 'Mozilla'),
(573, '2019-06-02 15:29:38', '54.36.150.148', 'Mozilla'),
(574, '2019-06-02 17:31:22', '54.36.148.0', 'Mozilla'),
(575, '2019-06-02 19:00:04', '103.253.214.20', 'Other'),
(576, '2019-06-02 19:21:59', '54.36.150.9', 'Mozilla'),
(577, '2019-06-02 20:15:37', '54.36.148.37', 'Mozilla'),
(578, '2019-06-02 21:03:11', '13.114.20.38', 'Chrome'),
(579, '2019-06-02 21:57:36', '5.255.250.41', 'YandexBot'),
(580, '2019-06-02 22:48:04', '54.36.149.52', 'Mozilla'),
(581, '2019-06-02 23:10:28', '54.36.148.233', 'Mozilla'),
(582, '2019-06-03 00:30:13', '54.36.150.17', 'Mozilla'),
(583, '2019-06-03 01:52:07', '54.36.150.50', 'Mozilla'),
(584, '2019-06-03 02:11:52', '54.36.150.144', 'Mozilla'),
(585, '2019-06-03 04:13:42', '54.36.150.79', 'Mozilla'),
(586, '2019-06-03 05:01:40', '54.36.148.251', 'Mozilla'),
(587, '2019-06-03 05:09:01', '54.36.148.239', 'Mozilla'),
(588, '2019-06-03 05:34:25', '54.36.148.49', 'Mozilla'),
(589, '2019-06-03 05:49:59', '54.36.148.121', 'Mozilla'),
(590, '2019-06-03 07:59:27', '54.36.149.84', 'Mozilla'),
(591, '2019-06-03 08:32:02', '54.36.150.113', 'Mozilla'),
(592, '2019-06-03 09:20:03', '54.36.148.104', 'Mozilla'),
(593, '2019-06-03 11:03:26', '54.36.148.99', 'Mozilla'),
(594, '2019-06-03 12:23:38', '54.36.148.22', 'Mozilla'),
(595, '2019-06-03 12:30:15', '54.36.148.241', 'Mozilla'),
(596, '2019-06-03 12:30:48', '54.36.148.128', 'Mozilla'),
(597, '2019-06-03 12:44:25', '54.36.148.4', 'Mozilla'),
(598, '2019-06-03 13:04:31', '54.36.148.171', 'Mozilla'),
(599, '2019-06-03 13:54:31', '54.36.148.252', 'Mozilla'),
(600, '2019-06-03 14:18:48', '54.36.150.91', 'Mozilla'),
(601, '2019-06-03 14:51:41', '207.102.138.158', 'Chrome'),
(602, '2019-06-03 15:08:16', '54.36.150.174', 'Mozilla'),
(603, '2019-06-03 15:29:18', '54.36.149.29', 'Mozilla'),
(604, '2019-06-03 16:11:27', '54.36.150.186', 'Mozilla'),
(605, '2019-06-03 16:28:41', '54.36.150.13', 'Mozilla'),
(606, '2019-06-03 17:45:40', '54.36.148.21', 'Mozilla'),
(607, '2019-06-03 18:17:31', '54.36.148.145', 'Mozilla'),
(608, '2019-06-03 18:19:51', '54.36.148.167', 'Mozilla'),
(609, '2019-06-03 19:04:01', '103.253.214.20', 'Other'),
(610, '2019-06-03 19:09:26', '54.36.148.59', 'Mozilla'),
(611, '2019-06-03 20:26:45', '54.36.150.44', 'Mozilla'),
(612, '2019-06-03 20:59:14', '54.36.148.233', 'Mozilla'),
(613, '2019-06-03 21:48:59', '54.36.148.149', 'Mozilla'),
(614, '2019-06-03 22:53:36', '54.36.150.17', 'Mozilla'),
(615, '2019-06-03 23:07:14', '54.36.148.251', 'Mozilla'),
(616, '2019-06-03 23:52:30', '54.36.150.8', 'Mozilla'),
(617, '2019-06-04 00:53:40', '176.113.74.59', 'Chrome'),
(618, '2019-06-04 01:01:13', '54.36.150.101', 'Mozilla'),
(619, '2019-06-04 01:40:16', '54.36.150.141', 'Mozilla'),
(620, '2019-06-04 02:01:57', '54.36.149.45', 'Mozilla'),
(621, '2019-06-04 02:06:40', '54.36.150.161', 'Mozilla'),
(622, '2019-06-04 04:08:50', '5.255.250.41', 'YandexBot'),
(623, '2019-06-04 06:57:39', '54.36.150.166', 'Mozilla'),
(624, '2019-06-04 07:06:37', '54.36.148.193', 'Mozilla'),
(625, '2019-06-04 07:35:49', '54.36.150.16', 'Mozilla'),
(626, '2019-06-04 08:06:54', '54.36.150.184', 'Mozilla'),
(627, '2019-06-04 08:36:51', '54.36.148.38', 'Mozilla'),
(628, '2019-06-04 09:24:20', '54.36.148.95', 'Mozilla'),
(629, '2019-06-04 10:20:46', '54.36.148.109', 'Mozilla'),
(630, '2019-06-04 10:32:33', '54.36.148.236', 'Mozilla'),
(631, '2019-06-04 10:55:08', '54.36.149.16', 'Mozilla'),
(632, '2019-06-04 11:15:55', '54.36.150.88', 'Mozilla'),
(633, '2019-06-04 12:03:27', '209.17.96.242', 'Mozilla'),
(634, '2019-06-04 12:28:11', '54.36.149.34', 'Mozilla'),
(635, '2019-06-04 13:05:51', '54.36.150.170', 'Mozilla'),
(636, '2019-06-04 13:18:50', '54.36.150.140', 'Mozilla'),
(637, '2019-06-04 14:04:34', '54.36.148.129', 'Mozilla'),
(638, '2019-06-04 14:30:52', '141.8.143.183', 'YandexBot'),
(639, '2019-06-04 14:37:19', '54.36.148.102', 'Mozilla'),
(640, '2019-06-04 18:49:09', '5.255.250.41', 'YandexBot'),
(641, '2019-06-04 18:59:19', '209.17.96.42', 'Mozilla'),
(642, '2019-06-04 19:02:31', '103.253.214.20', 'Other'),
(643, '2019-06-04 19:14:14', '93.158.161.171', 'YandexBot'),
(644, '2019-06-04 19:41:14', '141.8.143.183', 'YandexBot'),
(645, '2019-06-05 05:49:58', '54.36.150.40', 'Mozilla'),
(646, '2019-06-05 07:01:06', '185.180.222.15', 'Opera'),
(647, '2019-06-05 10:23:00', '54.36.150.134', 'Mozilla'),
(648, '2019-06-05 10:59:54', '54.36.148.58', 'Mozilla'),
(649, '2019-06-05 12:05:13', '54.36.150.129', 'Mozilla'),
(650, '2019-06-05 19:03:42', '103.253.214.20', 'Other'),
(651, '2019-06-05 21:51:22', '54.36.150.64', 'Mozilla'),
(652, '2019-06-05 21:54:02', '54.36.148.65', 'Mozilla'),
(653, '2019-06-06 02:52:40', '31.13.190.254', 'Chrome'),
(654, '2019-06-06 08:25:03', '54.36.148.71', 'Mozilla'),
(655, '2019-06-06 11:37:22', '165.227.77.71', 'Mozilla'),
(656, '2019-06-06 13:09:06', '54.36.149.72', 'Mozilla'),
(657, '2019-06-06 13:23:49', '5.255.250.41', 'YandexBot'),
(658, '2019-06-06 17:03:47', '54.36.150.102', 'Mozilla'),
(659, '2019-06-06 18:50:08', '5.255.250.41', 'YandexBot'),
(660, '2019-06-06 19:02:29', '103.253.214.20', 'Other'),
(661, '2019-06-06 20:22:08', '54.36.148.37', 'Mozilla'),
(662, '2019-06-06 23:46:07', '54.36.150.174', 'Mozilla'),
(663, '2019-06-07 00:35:28', '54.36.149.70', 'Mozilla'),
(664, '2019-06-07 01:10:20', '54.36.150.57', 'Mozilla'),
(665, '2019-06-07 01:47:26', '54.36.150.99', 'Mozilla'),
(666, '2019-06-07 04:39:54', '54.36.148.224', 'Mozilla'),
(667, '2019-06-07 07:33:32', '54.36.150.138', 'Mozilla'),
(668, '2019-06-07 07:43:06', '54.36.150.175', 'Mozilla'),
(669, '2019-06-07 09:54:44', '209.17.97.42', 'Mozilla'),
(670, '2019-06-07 10:11:57', '54.36.148.11', 'Mozilla'),
(671, '2019-06-07 15:20:44', '141.8.143.183', 'YandexBot'),
(672, '2019-06-07 17:06:22', '54.36.148.156', 'Mozilla'),
(673, '2019-06-07 23:36:19', '54.36.150.72', 'Mozilla'),
(674, '2019-06-08 02:16:32', '51.15.192.148', 'Other'),
(675, '2019-06-08 04:16:00', '209.17.96.250', 'Mozilla'),
(676, '2019-06-08 06:02:01', '54.36.148.211', 'Mozilla'),
(677, '2019-06-08 07:46:50', '54.36.150.85', 'Mozilla'),
(678, '2019-06-08 08:35:37', '54.36.150.104', 'Mozilla'),
(679, '2019-06-08 13:15:00', '54.36.150.147', 'Mozilla'),
(680, '2019-06-08 16:12:13', '54.36.150.57', 'Mozilla'),
(681, '2019-06-08 18:59:51', '103.253.214.20', 'Other'),
(682, '2019-06-08 19:51:20', '5.255.250.41', 'YandexBot'),
(683, '2019-06-09 09:45:09', '54.36.150.137', 'Mozilla'),
(684, '2019-06-09 17:11:29', '54.36.150.160', 'Mozilla'),
(685, '2019-06-09 19:01:01', '103.253.214.20', 'Other'),
(686, '2019-06-09 19:05:15', '54.36.150.77', 'Mozilla'),
(687, '2019-06-09 22:00:52', '54.36.150.155', 'Mozilla'),
(688, '2019-06-10 00:09:09', '54.36.148.143', 'Mozilla'),
(689, '2019-06-10 03:16:50', '54.36.148.17', 'Mozilla'),
(690, '2019-06-10 04:22:30', '54.36.150.16', 'Mozilla'),
(691, '2019-06-10 07:25:04', '54.36.148.176', 'Mozilla'),
(692, '2019-06-10 10:36:19', '54.36.150.171', 'Mozilla'),
(693, '2019-06-10 13:27:29', '54.36.150.2', 'Mozilla'),
(694, '2019-06-11 00:10:50', '54.36.150.143', 'Mozilla'),
(695, '2019-06-11 01:02:49', '54.36.150.101', 'Mozilla'),
(696, '2019-06-11 05:07:15', '54.36.150.161', 'Mozilla'),
(697, '2019-06-11 07:49:54', '54.36.150.189', 'Mozilla'),
(698, '2019-06-11 13:13:58', '54.36.150.150', 'Mozilla'),
(699, '2019-06-11 14:31:28', '5.255.250.41', 'YandexBot'),
(700, '2019-06-11 14:31:28', '141.8.143.183', 'YandexBot'),
(701, '2019-06-11 19:01:14', '103.253.214.20', 'Other'),
(702, '2019-06-11 21:45:25', '54.36.150.32', 'Mozilla'),
(703, '2019-06-11 22:11:27', '209.17.97.98', 'Mozilla'),
(704, '2019-06-12 06:36:54', '5.255.250.41', 'YandexBot'),
(705, '2019-06-12 07:16:28', '54.36.149.1', 'Mozilla'),
(706, '2019-06-12 18:50:40', '54.36.148.42', 'Mozilla'),
(707, '2019-06-12 19:03:22', '103.253.214.20', 'Other'),
(708, '2019-06-12 21:48:12', '54.36.150.123', 'Mozilla'),
(709, '2019-06-12 23:00:03', '54.36.150.182', 'Mozilla'),
(710, '2019-06-12 23:18:08', '178.154.244.184', 'YandexBot'),
(711, '2019-06-12 23:59:38', '141.8.143.183', 'YandexBot'),
(712, '2019-06-13 00:48:05', '54.36.150.120', 'Mozilla'),
(713, '2019-06-13 03:27:32', '54.36.150.65', 'Mozilla'),
(714, '2019-06-13 08:20:11', '51.158.98.255', 'Other'),
(715, '2019-06-13 09:48:21', '54.36.148.180', 'Mozilla'),
(716, '2019-06-13 14:52:15', '5.255.250.41', 'YandexBot'),
(717, '2019-06-13 14:59:47', '54.36.149.104', 'Mozilla'),
(718, '2019-06-13 16:17:22', '54.36.149.62', 'Mozilla'),
(719, '2019-06-13 19:08:59', '103.253.214.20', 'Other'),
(720, '2019-06-13 23:13:27', '54.36.148.232', 'Mozilla'),
(721, '2019-06-14 00:00:51', '37.9.87.203', 'YandexBot'),
(722, '2019-06-14 01:52:41', '54.36.149.97', 'Mozilla'),
(723, '2019-06-14 03:37:23', '209.17.97.26', 'Mozilla'),
(724, '2019-06-14 04:14:44', '54.36.148.211', 'Mozilla'),
(725, '2019-06-14 06:53:46', '54.36.148.22', 'Mozilla'),
(726, '2019-06-14 07:50:32', '54.36.149.88', 'Mozilla'),
(727, '2019-06-14 08:48:26', '54.36.150.30', 'Mozilla'),
(728, '2019-06-14 09:48:44', '54.36.148.33', 'Mozilla'),
(729, '2019-06-14 11:29:44', '54.36.150.101', 'Mozilla'),
(730, '2019-06-14 13:52:22', '54.36.150.116', 'Mozilla'),
(731, '2019-06-14 17:26:52', '64.246.178.34', 'Firefox'),
(732, '2019-06-14 17:39:26', '83.97.23.104', 'Edge'),
(733, '2019-06-14 18:49:24', '103.253.214.20', 'Other'),
(734, '2019-06-14 19:07:27', '209.17.97.58', 'Mozilla'),
(735, '2019-06-14 21:03:15', '54.36.150.157', 'Mozilla'),
(736, '2019-06-15 00:12:07', '54.36.150.102', 'Mozilla'),
(737, '2019-06-15 02:41:47', '54.36.150.177', 'Mozilla'),
(738, '2019-06-15 05:14:08', '54.36.150.166', 'Mozilla'),
(739, '2019-06-15 05:37:49', '54.36.150.111', 'Mozilla'),
(740, '2019-06-15 09:35:25', '54.36.150.164', 'Mozilla'),
(741, '2019-06-15 09:56:44', '54.36.150.91', 'Mozilla'),
(742, '2019-06-15 10:55:52', '54.36.149.55', 'Mozilla'),
(743, '2019-06-15 11:17:20', '5.255.250.41', 'YandexBot'),
(744, '2019-06-15 13:10:55', '54.36.150.112', 'Mozilla'),
(745, '2019-06-15 13:48:43', '141.8.143.183', 'YandexBot'),
(746, '2019-06-15 14:20:33', '54.36.149.89', 'Mozilla'),
(747, '2019-06-15 15:52:10', '31.13.190.254', 'Opera'),
(748, '2019-06-15 19:04:40', '5.255.250.41', 'YandexBot'),
(749, '2019-06-15 19:04:41', '141.8.143.183', 'YandexBot'),
(750, '2019-06-15 19:05:55', '103.253.214.20', 'Other'),
(751, '2019-06-15 19:28:23', '37.9.87.161', 'YandexBot'),
(752, '2019-06-15 20:26:46', '54.36.148.212', 'Mozilla'),
(753, '2019-06-15 23:34:02', '54.36.150.31', 'Mozilla'),
(754, '2019-06-16 05:55:04', '51.158.98.255', 'Other'),
(755, '2019-06-16 15:13:53', '54.36.148.209', 'Mozilla'),
(756, '2019-06-16 16:47:34', '91.121.171.104', 'Other'),
(757, '2019-06-16 19:05:32', '103.253.214.20', 'Other'),
(758, '2019-06-16 20:26:24', '54.36.149.99', 'Mozilla'),
(759, '2019-06-16 21:28:50', '54.36.148.154', 'Mozilla'),
(760, '2019-06-17 00:35:05', '54.36.149.26', 'Mozilla'),
(761, '2019-06-17 05:11:40', '54.36.150.76', 'Mozilla'),
(762, '2019-06-17 06:47:07', '54.36.150.38', 'Mozilla'),
(763, '2019-06-17 08:54:05', '54.36.148.37', 'Mozilla'),
(764, '2019-06-17 18:33:58', '5.255.250.41', 'YandexBot'),
(765, '2019-06-17 18:34:00', '141.8.143.183', 'YandexBot'),
(766, '2019-06-17 19:08:48', '103.253.214.20', 'Other'),
(767, '2019-06-17 19:36:59', '54.36.150.177', 'Mozilla'),
(768, '2019-06-18 03:23:02', '54.36.148.177', 'Mozilla'),
(769, '2019-06-18 19:05:51', '103.253.214.20', 'Other'),
(770, '2019-06-18 22:44:52', '54.36.149.84', 'Mozilla'),
(771, '2019-06-19 00:32:25', '5.255.250.41', 'YandexBot'),
(772, '2019-06-19 05:07:49', '54.169.131.185', 'Other'),
(773, '2019-06-19 05:48:18', '209.17.96.226', 'Mozilla'),
(774, '2019-06-19 07:44:28', '209.17.97.74', 'Mozilla'),
(775, '2019-06-19 09:50:03', '54.36.148.160', 'Mozilla'),
(776, '2019-06-19 13:21:57', '209.17.96.10', 'Mozilla'),
(777, '2019-06-19 19:10:16', '103.253.214.20', 'Other'),
(778, '2019-06-19 23:50:56', '54.36.150.59', 'Mozilla'),
(779, '2019-06-20 01:59:42', '54.36.150.58', 'Mozilla'),
(780, '2019-06-20 02:49:01', '54.36.150.81', 'Mozilla'),
(781, '2019-06-20 15:11:16', '163.172.154.242', 'Other'),
(782, '2019-06-20 15:13:48', '54.36.150.84', 'Mozilla'),
(783, '2019-06-20 16:50:22', '54.36.148.167', 'Mozilla'),
(784, '2019-06-20 19:05:37', '103.253.214.20', 'Other'),
(785, '2019-06-20 22:22:19', '54.36.150.11', 'Mozilla'),
(786, '2019-06-21 00:46:03', '5.255.250.41', 'YandexBot'),
(787, '2019-06-21 00:46:04', '141.8.143.183', 'YandexBot'),
(788, '2019-06-21 07:45:34', '54.36.150.63', 'Mozilla'),
(789, '2019-06-21 11:49:52', '54.36.150.88', 'Mozilla'),
(790, '2019-06-21 12:58:12', '209.17.96.210', 'Mozilla'),
(791, '2019-06-21 13:59:51', '209.17.97.122', 'Mozilla'),
(792, '2019-06-21 18:18:56', '54.36.150.155', 'Mozilla'),
(793, '2019-06-21 19:07:35', '103.253.214.20', 'Other'),
(794, '2019-06-22 06:42:30', '54.36.150.120', 'Mozilla'),
(795, '2019-06-22 09:03:59', '54.36.148.43', 'Mozilla'),
(796, '2019-06-22 15:16:36', '54.36.150.168', 'Mozilla'),
(797, '2019-06-22 15:41:33', '54.36.148.115', 'Mozilla'),
(798, '2019-06-22 16:36:36', '54.36.149.103', 'Mozilla'),
(799, '2019-06-22 17:39:28', '209.17.97.50', 'Mozilla'),
(800, '2019-06-22 18:03:12', '54.36.148.110', 'Mozilla'),
(801, '2019-06-22 19:08:51', '103.253.214.20', 'Other'),
(802, '2019-06-22 20:44:01', '54.36.148.163', 'Mozilla'),
(803, '2019-06-22 22:21:04', '5.255.250.41', 'YandexBot'),
(804, '2019-06-22 22:21:04', '141.8.143.183', 'YandexBot'),
(805, '2019-06-23 04:52:50', '54.36.150.108', 'Mozilla'),
(806, '2019-06-23 05:46:49', '54.36.150.20', 'Mozilla'),
(807, '2019-06-23 06:02:18', '46.105.99.163', 'Firefox'),
(808, '2019-06-23 06:55:02', '54.36.148.185', 'Mozilla'),
(809, '2019-06-23 08:09:24', '54.36.150.91', 'Mozilla'),
(810, '2019-06-23 12:26:10', '54.36.150.90', 'Mozilla'),
(811, '2019-06-23 16:46:28', '54.36.149.64', 'Mozilla'),
(812, '2019-06-23 19:09:28', '103.253.214.20', 'Other'),
(813, '2019-06-23 19:13:53', '185.253.96.140', 'Opera'),
(814, '2019-06-23 23:09:22', '54.36.148.155', 'Mozilla'),
(815, '2019-06-23 23:27:29', '54.36.150.84', 'Mozilla'),
(816, '2019-06-23 23:31:16', '54.36.148.141', 'Mozilla'),
(817, '2019-06-24 02:57:49', '54.36.150.34', 'Mozilla'),
(818, '2019-06-24 08:35:22', '5.255.250.145', 'YandexBot'),
(819, '2019-06-24 13:47:22', '5.255.250.41', 'YandexBot'),
(820, '2019-06-24 14:11:27', '87.101.94.126', 'Chrome'),
(821, '2019-06-24 17:42:06', '54.36.150.161', 'Mozilla'),
(822, '2019-06-24 19:06:21', '103.253.214.20', 'Other'),
(823, '2019-06-24 20:16:41', '209.17.96.26', 'Mozilla'),
(824, '2019-06-24 21:56:21', '5.255.250.41', 'YandexBot'),
(825, '2019-06-24 23:55:33', '141.8.143.183', 'YandexBot'),
(826, '2019-06-25 01:21:50', '54.36.150.95', 'Mozilla'),
(827, '2019-06-25 02:03:53', '54.36.148.216', 'Mozilla'),
(828, '2019-06-25 06:01:21', '54.36.150.115', 'Mozilla'),
(829, '2019-06-25 06:30:53', '54.36.150.91', 'Mozilla'),
(830, '2019-06-25 06:38:56', '209.17.97.42', 'Mozilla'),
(831, '2019-06-25 13:15:56', '85.206.165.3', 'Chrome'),
(832, '2019-06-25 14:46:57', '54.36.148.234', 'Mozilla'),
(833, '2019-06-25 16:47:13', '54.36.148.42', 'Mozilla'),
(834, '2019-06-25 19:55:30', '103.253.214.20', 'Other'),
(835, '2019-06-25 21:31:00', '54.36.150.116', 'Mozilla'),
(836, '2019-06-26 00:21:00', '209.17.97.66', 'Mozilla'),
(837, '2019-06-26 01:35:27', '54.36.150.163', 'Mozilla'),
(838, '2019-06-26 03:33:27', '54.36.150.58', 'Mozilla'),
(839, '2019-06-26 06:29:54', '54.36.150.61', 'Mozilla'),
(840, '2019-06-26 07:09:39', '54.36.149.23', 'Mozilla'),
(841, '2019-06-26 12:23:29', '54.36.149.46', 'Mozilla'),
(842, '2019-06-26 15:17:31', '54.36.148.53', 'Mozilla'),
(843, '2019-06-26 15:27:01', '54.36.148.242', 'Mozilla'),
(844, '2019-06-26 16:03:21', '54.36.149.13', 'Mozilla'),
(845, '2019-06-26 16:05:41', '54.36.148.25', 'Mozilla'),
(846, '2019-06-26 16:06:13', '54.157.173.91', 'Chrome'),
(847, '2019-06-26 17:27:30', '209.17.97.106', 'Mozilla'),
(848, '2019-06-26 19:36:54', '5.255.250.41', 'YandexBot'),
(849, '2019-06-26 20:19:06', '185.217.71.134', 'Opera'),
(850, '2019-06-26 21:05:36', '54.36.150.12', 'Mozilla'),
(851, '2019-06-27 02:19:46', '120.188.86.242', 'Chrome'),
(852, '2019-06-27 08:12:01', '54.36.148.157', 'Mozilla'),
(853, '2019-06-27 11:58:32', '34.222.212.37', 'Other'),
(854, '2019-06-27 13:20:17', '18.237.98.142', 'Chrome'),
(855, '2019-06-27 14:49:43', '52.26.182.49', 'Other'),
(856, '2019-06-27 15:05:53', '54.36.148.221', 'Mozilla'),
(857, '2019-06-27 16:00:40', '52.39.89.61', 'Firefox'),
(858, '2019-06-27 19:25:52', '209.17.96.202', 'Mozilla'),
(859, '2019-06-27 19:26:04', '54.36.148.149', 'Mozilla'),
(860, '2019-06-27 20:10:41', '54.36.148.244', 'Mozilla'),
(861, '2019-06-27 23:41:09', '5.255.250.41', 'YandexBot'),
(862, '2019-06-27 23:41:10', '141.8.143.183', 'YandexBot'),
(863, '2019-06-28 00:58:53', '54.36.150.7', 'Mozilla'),
(864, '2019-06-28 02:36:03', '54.36.148.183', 'Mozilla'),
(865, '2019-06-28 03:04:31', '54.36.148.80', 'Mozilla'),
(866, '2019-06-28 06:50:48', '64.233.173.162', 'Chrome'),
(867, '2019-06-28 06:50:53', '36.72.219.15', 'Chrome'),
(868, '2019-06-28 06:51:27', '64.233.173.190', 'Chrome'),
(869, '2019-06-28 06:52:23', '64.233.173.165', 'Chrome'),
(870, '2019-06-28 12:13:57', '54.36.150.120', 'Mozilla'),
(871, '2019-06-28 16:41:02', '54.36.148.63', 'Mozilla'),
(872, '2019-06-28 17:29:55', '34.221.102.191', 'Chrome'),
(873, '2019-06-28 17:58:41', '54.36.148.238', 'Mozilla'),
(874, '2019-06-28 18:34:31', '54.36.150.44', 'Mozilla'),
(875, '2019-06-28 18:48:52', '163.172.151.47', 'Other'),
(876, '2019-06-28 19:08:43', '103.253.214.20', 'Other'),
(877, '2019-06-29 04:15:19', '54.36.148.198', 'Mozilla'),
(878, '2019-06-29 06:16:29', '54.36.149.42', 'Mozilla'),
(879, '2019-06-29 06:32:46', '54.36.150.28', 'Mozilla'),
(880, '2019-06-29 09:08:26', '54.36.149.84', 'Mozilla'),
(881, '2019-06-29 11:02:01', '209.17.97.66', 'Mozilla'),
(882, '2019-06-29 17:03:17', '18.237.95.46', 'Chrome'),
(883, '2019-06-29 19:05:14', '103.253.214.20', 'Other'),
(884, '2019-06-29 23:41:03', '212.83.146.233', 'Firefox'),
(885, '2019-06-29 23:41:06', '62.4.14.206', 'Firefox'),
(886, '2019-06-30 01:25:46', '195.154.61.206', 'Firefox'),
(887, '2019-06-30 01:25:49', '62.4.14.198', 'Firefox'),
(888, '2019-06-30 04:40:53', '54.36.148.25', 'Mozilla'),
(889, '2019-06-30 06:38:47', '54.36.150.130', 'Mozilla'),
(890, '2019-06-30 08:10:04', '173.252.95.3', 'Chrome'),
(891, '2019-06-30 08:10:11', '173.252.95.20', 'Chrome'),
(892, '2019-06-30 12:55:00', '185.93.3.114', 'Chrome'),
(893, '2019-06-30 18:09:46', '52.40.199.84', 'Chrome'),
(894, '2019-06-30 18:32:33', '34.222.96.170', 'Safari'),
(895, '2019-06-30 19:05:35', '103.253.214.20', 'Other'),
(896, '2019-06-30 22:09:40', '51.255.109.160', 'Firefox'),
(897, '2019-06-30 22:09:47', '51.255.109.170', 'Firefox'),
(898, '2019-07-01 01:55:54', '54.36.150.174', 'Mozilla'),
(899, '2019-07-01 02:08:29', '54.36.150.179', 'Mozilla'),
(900, '2019-07-01 02:57:57', '54.36.150.183', 'Mozilla'),
(901, '2019-07-01 03:37:46', '54.36.150.20', 'Mozilla'),
(902, '2019-07-01 07:25:39', '173.252.95.19', 'Chrome'),
(903, '2019-07-01 07:25:47', '173.252.95.14', 'Chrome'),
(904, '2019-07-01 07:59:19', '54.36.148.52', 'Mozilla'),
(905, '2019-07-01 11:13:47', '54.36.148.117', 'Mozilla'),
(906, '2019-07-01 17:57:03', '54.213.75.233', 'Chrome'),
(907, '2019-07-01 18:01:51', '5.255.250.41', 'YandexBot'),
(908, '2019-07-01 18:08:29', '54.36.150.160', 'Mozilla');
INSERT INTO `tb_pengunjung` (`id`, `tanggal`, `ip`, `perangkat`) VALUES
(909, '2019-07-01 19:09:43', '103.253.214.20', 'Other'),
(910, '2019-07-02 02:16:03', '51.255.109.161', 'Firefox'),
(911, '2019-07-02 02:16:19', '51.255.109.171', 'Firefox'),
(912, '2019-07-02 02:53:22', '54.36.148.132', 'Mozilla'),
(913, '2019-07-02 04:12:43', '54.36.150.0', 'Mozilla'),
(914, '2019-07-02 04:45:00', '54.36.149.94', 'Mozilla'),
(915, '2019-07-02 05:27:31', '54.36.150.10', 'Mozilla'),
(916, '2019-07-02 08:38:01', '54.36.150.110', 'Mozilla'),
(917, '2019-07-02 08:49:55', '54.36.150.34', 'Mozilla'),
(918, '2019-07-02 09:46:17', '54.36.148.198', 'Mozilla'),
(919, '2019-07-02 10:09:33', '54.36.148.156', 'Mozilla'),
(920, '2019-07-02 10:23:47', '54.36.149.66', 'Mozilla'),
(921, '2019-07-02 10:24:50', '54.36.148.200', 'Mozilla'),
(922, '2019-07-02 10:31:56', '54.36.148.47', 'Mozilla'),
(923, '2019-07-02 10:42:36', '54.36.149.67', 'Mozilla'),
(924, '2019-07-02 10:45:01', '54.36.150.4', 'Mozilla'),
(925, '2019-07-02 12:09:07', '54.36.150.166', 'Mozilla'),
(926, '2019-07-02 12:12:08', '54.36.148.120', 'Mozilla'),
(927, '2019-07-02 13:09:24', '54.36.150.184', 'Mozilla'),
(928, '2019-07-02 14:47:15', '54.36.150.77', 'Mozilla'),
(929, '2019-07-02 14:50:07', '54.36.148.54', 'Mozilla'),
(930, '2019-07-02 15:09:39', '54.202.133.21', 'Other'),
(931, '2019-07-02 15:22:54', '34.216.65.15', 'Chrome'),
(932, '2019-07-02 15:47:49', '54.36.150.72', 'Mozilla'),
(933, '2019-07-02 15:56:45', '54.36.148.74', 'Mozilla'),
(934, '2019-07-02 17:04:30', '54.36.148.150', 'Mozilla'),
(935, '2019-07-02 18:01:43', '54.36.150.10', 'Mozilla'),
(936, '2019-07-02 18:21:18', '163.172.76.63', 'Other'),
(937, '2019-07-02 19:07:40', '103.253.214.20', 'Other'),
(938, '2019-07-02 19:09:03', '54.36.148.205', 'Mozilla'),
(939, '2019-07-02 19:20:57', '54.36.148.25', 'Mozilla'),
(940, '2019-07-02 19:32:16', '54.36.148.234', 'Mozilla'),
(941, '2019-07-02 20:08:35', '54.36.148.242', 'Mozilla'),
(942, '2019-07-02 21:10:07', '54.36.148.63', 'Mozilla'),
(943, '2019-07-02 21:45:43', '54.36.148.18', 'Mozilla'),
(944, '2019-07-02 23:46:09', '34.215.173.183', 'Chrome'),
(945, '2019-07-03 00:06:23', '54.36.148.24', 'Mozilla'),
(946, '2019-07-03 02:33:27', '54.36.150.31', 'Mozilla'),
(947, '2019-07-03 02:53:30', '54.36.150.123', 'Mozilla'),
(948, '2019-07-03 05:48:49', '209.17.97.42', 'Mozilla'),
(949, '2019-07-03 06:28:29', '54.36.148.110', 'Mozilla'),
(950, '2019-07-03 07:11:00', '54.36.149.84', 'Mozilla'),
(951, '2019-07-03 08:01:21', '54.36.149.34', 'Mozilla'),
(952, '2019-07-03 09:07:56', '54.36.150.84', 'Mozilla'),
(953, '2019-07-03 10:37:48', '54.36.148.111', 'Mozilla'),
(954, '2019-07-03 11:44:23', '54.36.149.50', 'Mozilla'),
(955, '2019-07-03 12:09:19', '54.36.150.80', 'Mozilla'),
(956, '2019-07-03 12:26:56', '54.36.150.152', 'Mozilla'),
(957, '2019-07-03 13:12:16', '54.149.229.209', 'Chrome'),
(958, '2019-07-03 17:07:47', '167.71.186.45', 'Mozilla'),
(959, '2019-07-03 17:50:08', '54.36.148.11', 'Mozilla'),
(960, '2019-07-03 18:06:27', '54.36.150.39', 'Mozilla'),
(961, '2019-07-03 18:41:24', '54.36.150.138', 'Mozilla'),
(962, '2019-07-03 19:08:16', '103.253.214.20', 'Other'),
(963, '2019-07-03 21:50:38', '54.36.149.30', 'Mozilla'),
(964, '2019-07-03 22:31:37', '54.36.148.135', 'Mozilla'),
(965, '2019-07-03 23:45:50', '141.8.143.183', 'YandexBot'),
(966, '2019-07-03 23:45:51', '5.255.250.41', 'YandexBot'),
(967, '2019-07-04 02:40:15', '54.36.149.34', 'Mozilla'),
(968, '2019-07-04 03:32:49', '54.36.150.42', 'Mozilla'),
(969, '2019-07-04 04:56:28', '54.36.150.113', 'Mozilla'),
(970, '2019-07-04 07:09:03', '54.36.150.67', 'Mozilla'),
(971, '2019-07-04 08:41:29', '54.36.148.186', 'Mozilla'),
(972, '2019-07-04 10:47:04', '54.36.150.152', 'Mozilla'),
(973, '2019-07-04 11:35:22', '54.36.150.166', 'Mozilla'),
(974, '2019-07-04 12:16:58', '185.93.3.114', 'Opera'),
(975, '2019-07-04 12:26:36', '54.36.150.56', 'Mozilla'),
(976, '2019-07-04 14:16:49', '167.71.182.16', 'Mozilla'),
(977, '2019-07-04 14:53:30', '34.217.21.8', 'Chrome'),
(978, '2019-07-04 17:48:43', '54.36.150.79', 'Mozilla'),
(979, '2019-07-04 18:03:16', '54.36.150.86', 'Mozilla'),
(980, '2019-07-04 18:25:33', '54.36.150.21', 'Mozilla'),
(981, '2019-07-04 19:07:50', '54.36.148.177', 'Mozilla'),
(982, '2019-07-04 19:07:57', '103.253.214.20', 'Other'),
(983, '2019-07-04 19:46:42', '54.36.150.62', 'Mozilla'),
(984, '2019-07-04 20:23:55', '54.36.150.160', 'Mozilla'),
(985, '2019-07-04 21:30:40', '209.17.97.50', 'Mozilla'),
(986, '2019-07-04 21:36:13', '54.36.148.89', 'Mozilla'),
(987, '2019-07-04 21:47:16', '54.36.150.50', 'Mozilla'),
(988, '2019-07-04 23:17:09', '54.36.150.41', 'Mozilla'),
(989, '2019-07-04 23:38:39', '54.36.148.223', 'Mozilla'),
(990, '2019-07-05 00:03:36', '54.36.148.94', 'Mozilla'),
(991, '2019-07-05 01:30:35', '54.36.150.1', 'Mozilla'),
(992, '2019-07-05 01:30:49', '134.209.170.193', 'Mozilla'),
(993, '2019-07-05 01:53:36', '54.36.148.19', 'Mozilla'),
(994, '2019-07-05 03:13:57', '54.36.150.40', 'Mozilla'),
(995, '2019-07-05 03:41:34', '54.36.149.10', 'Mozilla'),
(996, '2019-07-05 04:51:23', '54.36.148.211', 'Mozilla'),
(997, '2019-07-05 06:05:25', '209.17.97.42', 'Mozilla'),
(998, '2019-07-05 06:38:16', '54.36.148.165', 'Mozilla'),
(999, '2019-07-05 06:49:03', '54.36.149.3', 'Mozilla'),
(1000, '2019-07-05 11:31:21', '54.36.150.7', 'Mozilla'),
(1001, '2019-07-05 13:08:59', '54.36.148.32', 'Mozilla'),
(1002, '2019-07-05 17:02:08', '54.36.148.106', 'Mozilla'),
(1003, '2019-07-05 17:07:05', '54.36.150.165', 'Mozilla'),
(1004, '2019-07-05 18:18:35', '35.160.188.134', 'Chrome'),
(1005, '2019-07-05 19:11:36', '103.253.214.20', 'Other'),
(1006, '2019-07-05 19:18:57', '54.36.150.45', 'Mozilla'),
(1007, '2019-07-05 20:51:37', '54.36.150.38', 'Mozilla'),
(1008, '2019-07-05 22:43:12', '54.36.150.153', 'Mozilla'),
(1009, '2019-07-06 00:30:28', '54.36.148.135', 'Mozilla'),
(1010, '2019-07-06 01:16:20', '18.195.49.161', 'Other'),
(1011, '2019-07-06 01:43:31', '54.36.148.70', 'Mozilla'),
(1012, '2019-07-06 02:36:34', '54.36.150.134', 'Mozilla'),
(1013, '2019-07-06 03:36:59', '54.36.148.95', 'Mozilla'),
(1014, '2019-07-06 04:27:04', '54.36.150.49', 'Mozilla'),
(1015, '2019-07-06 05:06:23', '54.36.150.79', 'Mozilla'),
(1016, '2019-07-06 05:08:04', '209.17.97.10', 'Mozilla'),
(1017, '2019-07-06 09:35:19', '66.220.149.29', 'Edge'),
(1018, '2019-07-06 09:35:27', '66.220.149.17', 'Edge'),
(1019, '2019-07-06 10:47:35', '54.36.150.70', 'Mozilla'),
(1020, '2019-07-06 11:59:06', '54.36.150.161', 'Mozilla'),
(1021, '2019-07-06 12:40:24', '54.36.148.77', 'Mozilla'),
(1022, '2019-07-06 12:55:39', '54.36.150.16', 'Mozilla'),
(1023, '2019-07-06 13:27:30', '54.36.150.56', 'Mozilla'),
(1024, '2019-07-06 13:53:53', '54.36.148.151', 'Mozilla'),
(1025, '2019-07-06 14:40:10', '54.36.150.14', 'Mozilla'),
(1026, '2019-07-06 15:01:50', '54.36.150.90', 'Mozilla'),
(1027, '2019-07-06 16:04:40', '54.36.150.77', 'Mozilla'),
(1028, '2019-07-06 18:00:15', '54.36.149.107', 'Mozilla'),
(1029, '2019-07-06 18:17:22', '54.36.150.0', 'Mozilla'),
(1030, '2019-07-06 18:39:29', '54.36.148.27', 'Mozilla'),
(1031, '2019-07-06 19:04:32', '54.36.150.191', 'Mozilla'),
(1032, '2019-07-06 19:08:45', '103.253.214.20', 'Other'),
(1033, '2019-07-06 19:10:41', '5.255.250.41', 'YandexBot'),
(1034, '2019-07-06 19:41:43', '185.93.180.238', 'Chrome'),
(1035, '2019-07-06 21:10:59', '64.246.187.42', 'Firefox'),
(1036, '2019-07-06 21:47:50', '34.213.187.239', 'Chrome'),
(1037, '2019-07-07 01:00:29', '182.0.175.62', 'Chrome'),
(1038, '2019-07-07 01:01:34', '101.89.239.230', 'Safari'),
(1039, '2019-07-07 01:04:31', '61.129.6.251', 'Chrome'),
(1040, '2019-07-07 01:04:31', '58.247.206.153', 'Chrome'),
(1041, '2019-07-07 06:49:06', '54.36.150.92', 'Mozilla'),
(1042, '2019-07-07 07:02:16', '54.36.148.223', 'Mozilla'),
(1043, '2019-07-07 07:02:30', '54.36.149.55', 'Mozilla'),
(1044, '2019-07-07 09:09:31', '54.36.150.132', 'Mozilla'),
(1045, '2019-07-07 09:23:43', '54.36.150.60', 'Mozilla'),
(1046, '2019-07-07 10:38:05', '54.36.148.250', 'Mozilla'),
(1047, '2019-07-07 11:26:52', '54.36.149.48', 'Mozilla'),
(1048, '2019-07-07 11:44:30', '54.36.148.90', 'Mozilla'),
(1049, '2019-07-07 12:38:32', '54.36.150.29', 'Mozilla'),
(1050, '2019-07-07 15:15:06', '54.36.150.34', 'Mozilla'),
(1051, '2019-07-07 15:53:40', '54.36.148.62', 'Mozilla'),
(1052, '2019-07-07 16:47:58', '34.221.186.43', 'Other'),
(1053, '2019-07-07 17:01:17', '54.36.150.183', 'Mozilla'),
(1054, '2019-07-07 18:40:08', '18.236.64.229', 'Chrome'),
(1055, '2019-07-07 19:05:46', '103.253.214.20', 'Other'),
(1056, '2019-07-07 19:09:57', '54.36.148.202', 'Mozilla'),
(1057, '2019-07-07 20:45:47', '54.36.148.96', 'Mozilla'),
(1058, '2019-07-07 22:04:06', '54.36.149.60', 'Mozilla'),
(1059, '2019-07-07 22:14:29', '54.36.148.184', 'Mozilla'),
(1060, '2019-07-07 23:56:31', '103.87.78.122', 'Other'),
(1061, '2019-07-08 00:36:25', '54.36.148.247', 'Mozilla'),
(1062, '2019-07-08 03:56:34', '54.36.150.83', 'Mozilla'),
(1063, '2019-07-08 05:27:29', '54.36.148.25', 'Mozilla'),
(1064, '2019-07-08 05:53:56', '54.36.149.35', 'Mozilla'),
(1065, '2019-07-08 07:04:24', '185.216.33.164', 'Opera'),
(1066, '2019-07-08 07:07:48', '54.36.149.45', 'Mozilla'),
(1067, '2019-07-08 07:32:27', '54.36.150.26', 'Mozilla'),
(1068, '2019-07-08 09:02:43', '54.36.150.100', 'Mozilla'),
(1069, '2019-07-08 09:19:13', '54.36.150.142', 'Mozilla'),
(1070, '2019-07-08 09:20:22', '54.36.150.149', 'Mozilla'),
(1071, '2019-07-08 10:25:07', '54.36.150.75', 'Mozilla'),
(1072, '2019-07-08 10:35:24', '54.36.148.120', 'Mozilla'),
(1073, '2019-07-08 11:20:49', '54.36.149.52', 'Mozilla'),
(1074, '2019-07-08 11:35:27', '54.36.150.154', 'Mozilla'),
(1075, '2019-07-08 12:23:16', '54.36.148.124', 'Mozilla'),
(1076, '2019-07-08 12:57:00', '54.36.150.124', 'Mozilla'),
(1077, '2019-07-08 13:19:24', '54.36.149.85', 'Mozilla'),
(1078, '2019-07-08 13:42:24', '54.36.149.100', 'Mozilla'),
(1079, '2019-07-08 14:32:18', '54.36.150.51', 'Mozilla'),
(1080, '2019-07-08 14:57:22', '54.36.150.116', 'Mozilla'),
(1081, '2019-07-08 15:54:39', '34.211.229.149', 'Chrome'),
(1082, '2019-07-08 16:08:25', '54.36.148.52', 'Mozilla'),
(1083, '2019-07-08 16:22:46', '54.36.149.91', 'Mozilla'),
(1084, '2019-07-08 16:28:32', '54.36.150.167', 'Mozilla'),
(1085, '2019-07-08 16:49:24', '54.36.148.141', 'Mozilla'),
(1086, '2019-07-08 17:02:20', '54.36.149.36', 'Mozilla'),
(1087, '2019-07-08 17:06:09', '54.36.148.204', 'Mozilla'),
(1088, '2019-07-08 19:07:00', '103.253.214.20', 'Other'),
(1089, '2019-07-08 19:37:39', '141.8.143.183', 'YandexBot'),
(1090, '2019-07-08 19:37:39', '5.255.250.41', 'YandexBot'),
(1091, '2019-07-08 21:43:45', '54.36.148.53', 'Mozilla'),
(1092, '2019-07-08 21:49:20', '54.36.150.127', 'Mozilla'),
(1093, '2019-07-08 22:03:12', '54.36.150.13', 'Mozilla'),
(1094, '2019-07-08 22:59:44', '54.36.150.87', 'Mozilla'),
(1095, '2019-07-08 23:12:36', '54.36.148.15', 'Mozilla'),
(1096, '2019-07-08 23:14:32', '54.36.150.188', 'Mozilla'),
(1097, '2019-07-08 23:49:14', '54.36.148.246', 'Mozilla'),
(1098, '2019-07-09 00:02:02', '54.36.149.24', 'Mozilla'),
(1099, '2019-07-09 00:18:40', '54.36.150.186', 'Mozilla'),
(1100, '2019-07-09 01:03:49', '54.36.148.196', 'Mozilla'),
(1101, '2019-07-09 01:10:32', '54.36.150.94', 'Mozilla'),
(1102, '2019-07-09 01:30:53', '54.36.148.200', 'Mozilla'),
(1103, '2019-07-09 01:31:50', '54.36.150.95', 'Mozilla'),
(1104, '2019-07-09 02:33:48', '209.17.97.66', 'Mozilla'),
(1105, '2019-07-09 03:06:14', '54.36.150.152', 'Mozilla'),
(1106, '2019-07-09 03:49:13', '54.36.150.162', 'Mozilla'),
(1107, '2019-07-09 03:51:40', '54.36.149.89', 'Mozilla'),
(1108, '2019-07-09 06:20:56', '54.36.150.114', 'Mozilla'),
(1109, '2019-07-09 07:01:40', '54.36.150.54', 'Mozilla'),
(1110, '2019-07-09 09:33:31', '54.36.150.56', 'Mozilla'),
(1111, '2019-07-09 14:00:45', '54.36.148.255', 'Mozilla'),
(1112, '2019-07-09 14:33:19', '34.223.252.106', 'Chrome'),
(1113, '2019-07-09 15:04:27', '91.121.222.157', 'Chrome'),
(1114, '2019-07-09 15:09:43', '54.36.150.104', 'Mozilla'),
(1115, '2019-07-09 16:19:48', '54.36.150.136', 'Mozilla'),
(1116, '2019-07-09 18:00:35', '54.36.150.185', 'Mozilla'),
(1117, '2019-07-09 18:17:00', '54.36.148.100', 'Mozilla'),
(1118, '2019-07-09 19:08:20', '103.253.214.20', 'Other'),
(1119, '2019-07-09 20:08:06', '54.36.150.120', 'Mozilla'),
(1120, '2019-07-09 21:50:31', '54.36.150.141', 'Mozilla'),
(1121, '2019-07-09 22:09:03', '114.4.218.86', 'Chrome'),
(1122, '2019-07-09 23:52:40', '54.36.148.224', 'Mozilla'),
(1123, '2019-07-10 00:58:13', '54.36.148.109', 'Mozilla'),
(1124, '2019-07-10 04:36:17', '54.36.148.194', 'Mozilla'),
(1125, '2019-07-10 05:04:10', '54.36.148.178', 'Mozilla'),
(1126, '2019-07-10 06:17:35', '54.36.148.217', 'Mozilla'),
(1127, '2019-07-10 06:30:13', '54.36.149.11', 'Mozilla'),
(1128, '2019-07-10 06:45:54', '54.36.148.104', 'Mozilla'),
(1129, '2019-07-10 07:59:11', '54.36.150.26', 'Mozilla'),
(1130, '2019-07-10 08:02:54', '54.36.148.182', 'Mozilla'),
(1131, '2019-07-10 09:13:55', '54.36.150.48', 'Mozilla'),
(1132, '2019-07-10 10:38:28', '54.36.150.83', 'Mozilla'),
(1133, '2019-07-10 10:41:07', '54.36.150.43', 'Mozilla'),
(1134, '2019-07-10 15:13:27', '54.36.150.190', 'Mozilla'),
(1135, '2019-07-10 15:14:30', '54.36.149.2', 'Mozilla'),
(1136, '2019-07-10 17:12:55', '54.36.149.22', 'Mozilla'),
(1137, '2019-07-10 17:46:20', '54.36.150.147', 'Mozilla'),
(1138, '2019-07-10 18:04:35', '54.36.150.41', 'Mozilla'),
(1139, '2019-07-10 18:23:22', '35.166.118.140', 'Chrome'),
(1140, '2019-07-10 18:58:18', '54.36.148.196', 'Mozilla'),
(1141, '2019-07-10 19:11:08', '103.253.214.20', 'Other'),
(1142, '2019-07-10 19:31:51', '37.9.87.161', 'YandexBot'),
(1143, '2019-07-10 19:31:52', '37.9.87.203', 'YandexBot'),
(1144, '2019-07-10 19:31:52', '93.158.161.27', 'YandexBot'),
(1145, '2019-07-10 19:36:05', '54.36.150.187', 'Mozilla'),
(1146, '2019-07-10 22:12:09', '54.36.148.108', 'Mozilla'),
(1147, '2019-07-10 23:25:01', '54.36.148.66', 'Mozilla'),
(1148, '2019-07-10 23:50:04', '54.36.150.30', 'Mozilla'),
(1149, '2019-07-11 00:48:17', '54.36.150.61', 'Mozilla'),
(1150, '2019-07-11 01:00:55', '120.188.85.205', 'Chrome'),
(1151, '2019-07-11 02:11:59', '54.36.150.51', 'Mozilla'),
(1152, '2019-07-11 04:06:07', '54.36.150.72', 'Mozilla'),
(1153, '2019-07-11 06:38:53', '54.36.150.142', 'Mozilla'),
(1154, '2019-07-11 07:10:36', '54.36.150.86', 'Mozilla'),
(1155, '2019-07-11 09:40:17', '54.36.149.29', 'Mozilla'),
(1156, '2019-07-11 10:49:44', '54.36.149.75', 'Mozilla'),
(1157, '2019-07-11 12:46:20', '54.36.149.30', 'Mozilla'),
(1158, '2019-07-11 15:11:44', '54.36.150.8', 'Mozilla'),
(1159, '2019-07-11 15:38:18', '54.36.148.42', 'Mozilla'),
(1160, '2019-07-11 16:53:19', '54.36.150.94', 'Mozilla'),
(1161, '2019-07-11 19:00:50', '54.36.148.36', 'Mozilla'),
(1162, '2019-07-11 19:07:00', '54.36.150.20', 'Mozilla'),
(1163, '2019-07-11 19:43:23', '54.36.148.73', 'Mozilla'),
(1164, '2019-07-11 20:10:07', '54.184.72.10', 'Chrome'),
(1165, '2019-07-11 20:46:23', '54.36.150.144', 'Mozilla'),
(1166, '2019-07-11 22:45:02', '54.36.149.69', 'Mozilla'),
(1167, '2019-07-11 22:52:25', '54.36.148.62', 'Mozilla'),
(1168, '2019-07-12 00:54:59', '54.36.148.175', 'Mozilla'),
(1169, '2019-07-12 00:56:30', '54.36.149.64', 'Mozilla'),
(1170, '2019-07-12 00:59:16', '54.36.148.144', 'Mozilla'),
(1171, '2019-07-12 02:06:00', '54.36.150.5', 'Mozilla'),
(1172, '2019-07-12 02:35:07', '54.36.150.107', 'Mozilla'),
(1173, '2019-07-12 02:42:43', '54.36.148.246', 'Mozilla'),
(1174, '2019-07-12 03:13:27', '54.36.150.160', 'Mozilla'),
(1175, '2019-07-12 03:31:49', '54.36.150.176', 'Mozilla'),
(1176, '2019-07-12 04:33:33', '54.36.150.101', 'Mozilla'),
(1177, '2019-07-12 09:06:12', '209.17.97.42', 'Mozilla'),
(1178, '2019-07-12 11:55:32', '54.36.148.229', 'Mozilla'),
(1179, '2019-07-12 13:28:16', '54.36.149.55', 'Mozilla'),
(1180, '2019-07-12 13:58:01', '54.36.148.160', 'Mozilla'),
(1181, '2019-07-12 15:34:59', '54.36.149.12', 'Mozilla'),
(1182, '2019-07-12 20:43:39', '54.36.150.169', 'Mozilla'),
(1183, '2019-07-12 21:23:35', '54.36.150.145', 'Mozilla'),
(1184, '2019-07-13 01:37:42', '54.36.150.160', 'Mozilla'),
(1185, '2019-07-13 02:27:57', '209.17.96.242', 'Mozilla'),
(1186, '2019-07-13 04:40:00', '120.188.75.197', 'Chrome'),
(1187, '2019-07-13 05:45:52', '54.36.150.165', 'Mozilla'),
(1188, '2019-07-13 10:31:11', '120.188.80.40', 'Firefox'),
(1189, '2019-07-13 11:38:34', '54.36.148.156', 'Mozilla'),
(1190, '2019-07-13 13:03:30', '54.36.149.100', 'Mozilla'),
(1191, '2019-07-13 13:39:32', '54.36.150.76', 'Mozilla'),
(1192, '2019-07-13 16:48:29', '52.39.187.133', 'Other'),
(1193, '2019-07-13 17:39:59', '54.185.75.142', 'Chrome'),
(1194, '2019-07-13 18:35:58', '54.36.149.25', 'Mozilla'),
(1195, '2019-07-14 00:24:05', '54.36.150.129', 'Mozilla'),
(1196, '2019-07-14 02:58:27', '54.36.150.52', 'Mozilla'),
(1197, '2019-07-14 03:04:31', '54.36.149.94', 'Mozilla'),
(1198, '2019-07-14 03:07:49', '54.36.150.119', 'Mozilla'),
(1199, '2019-07-14 04:03:51', '128.72.34.108', 'Internet Explorer'),
(1200, '2019-07-14 11:55:43', '54.36.150.45', 'Mozilla'),
(1201, '2019-07-14 13:27:44', '34.211.89.103', 'Other'),
(1202, '2019-07-14 14:36:42', '37.9.87.203', 'YandexBot'),
(1203, '2019-07-14 14:36:42', '141.8.188.191', 'YandexBot'),
(1204, '2019-07-14 14:36:42', '93.158.161.27', 'YandexBot'),
(1205, '2019-07-14 14:37:14', '54.36.148.169', 'Mozilla'),
(1206, '2019-07-14 16:27:36', '141.8.188.184', 'YandexBot'),
(1207, '2019-07-14 16:27:40', '93.158.161.13', 'YandexBot'),
(1208, '2019-07-14 17:08:31', '34.221.236.237', 'Chrome'),
(1209, '2019-07-14 17:23:22', '54.191.238.58', 'Other'),
(1210, '2019-07-14 20:47:43', '95.220.0.167', 'Internet Explorer'),
(1211, '2019-07-14 21:45:24', '54.36.150.118', 'Mozilla'),
(1212, '2019-07-14 22:30:25', '185.93.3.114', 'Opera'),
(1213, '2019-07-14 23:08:28', '184.94.240.92', 'Firefox'),
(1214, '2019-07-14 23:10:41', '54.36.148.43', 'Mozilla'),
(1215, '2019-07-15 02:09:21', '40.77.167.188', 'Bing'),
(1216, '2019-07-15 02:09:44', '40.77.189.178', 'Mozilla'),
(1217, '2019-07-15 02:21:21', '52.44.223.88', 'Firefox'),
(1218, '2019-07-15 03:14:11', '150.249.214.252', 'Internet Explorer'),
(1219, '2019-07-15 03:14:47', '150.249.214.249', 'Internet Explorer'),
(1220, '2019-07-15 04:01:49', '178.128.0.34', 'Chrome'),
(1221, '2019-07-15 04:32:04', '38.99.62.94', 'Other'),
(1222, '2019-07-15 04:32:57', '188.68.48.243', 'Chrome'),
(1223, '2019-07-15 04:47:49', '24.107.66.144', 'Other'),
(1224, '2019-07-15 05:10:33', '54.82.16.127', 'Chrome'),
(1225, '2019-07-15 05:16:39', '37.9.87.189', 'YandexBot'),
(1226, '2019-07-15 06:26:50', '54.36.149.42', 'Mozilla'),
(1227, '2019-07-15 06:48:26', '95.216.15.49', 'Safari'),
(1228, '2019-07-15 08:51:39', '54.36.149.102', 'Mozilla'),
(1229, '2019-07-15 09:19:17', '185.198.57.210', 'Chrome'),
(1230, '2019-07-15 11:05:24', '37.9.87.161', 'YandexBot'),
(1231, '2019-07-15 11:05:28', '141.8.188.191', 'YandexBot'),
(1232, '2019-07-15 11:56:11', '198.108.66.176', 'Mozilla'),
(1233, '2019-07-15 11:58:16', '54.162.154.47', 'Chrome'),
(1234, '2019-07-15 13:19:44', '54.39.100.61', 'Chrome'),
(1235, '2019-07-15 13:30:15', '94.130.167.248', 'Mozilla'),
(1236, '2019-07-15 13:34:57', '77.88.5.3', 'YandexBot'),
(1237, '2019-07-15 14:37:26', '198.108.66.208', 'Mozilla'),
(1238, '2019-07-15 14:38:43', '161.69.99.11', 'Firefox'),
(1239, '2019-07-15 14:57:54', '18.237.126.93', 'Other'),
(1240, '2019-07-15 15:22:40', '95.216.20.96', 'Chrome'),
(1241, '2019-07-15 17:26:39', '69.164.111.198', 'Internet Explorer'),
(1242, '2019-07-15 18:07:00', '54.200.243.0', 'Other'),
(1243, '2019-07-15 19:05:44', '103.253.214.20', 'Other'),
(1244, '2019-07-15 19:08:45', '34.222.127.127', 'Chrome'),
(1245, '2019-07-15 19:30:15', '38.99.62.94', 'Mozilla'),
(1246, '2019-07-15 20:06:28', '185.198.57.210', 'Chrome'),
(1247, '2020-02-23 04:09:10', '::1', 'Firefox'),
(1248, '2020-12-24 10:01:35', '::1', 'Chrome'),
(1249, '2020-12-26 04:29:37', '::1', 'Chrome'),
(1250, '2020-12-27 08:58:03', '::1', 'Chrome'),
(1251, '2020-12-28 03:49:16', '::1', 'Chrome'),
(1252, '2023-04-14 03:24:28', '::1', 'Chrome'),
(1253, '2023-04-14 08:18:37', '192.168.88.21', 'Chrome'),
(1254, '2023-04-17 03:06:29', '::1', 'Chrome'),
(1255, '2023-04-18 03:16:13', '::1', 'Chrome'),
(1256, '2023-04-19 02:59:07', '::1', 'Chrome'),
(1257, '2023-04-25 02:51:14', '::1', 'Chrome'),
(1258, '2023-04-26 02:57:33', '::1', 'Chrome'),
(1259, '2023-04-26 04:46:27', '192.168.88.21', 'Chrome'),
(1260, '2023-04-27 02:31:46', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `tb_serialtv`
--

CREATE TABLE `tb_serialtv` (
  `id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_serialtv`
--

INSERT INTO `tb_serialtv` (`id`, `judul`, `tanggal`, `isi`, `gambar`, `slug`, `userid`) VALUES
(1, 'Takdir Cinta Yang Kupilih', '2023-04-18 04:50:30', '<h4 style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">Sinopsis</span></span></strong></span></span></h4>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">Novia adalah anak angkat dari Pak&nbsp; Asraf dan Bu Esti. Ayah Novia meninggal saat Novia berumur 8 tahun dalam sebuah kecelakaan motor bersama Novia. Sementara ibu Novia sudah meninggal tak lama setelah Novia lahir. Novia sempat masuk ke panti asuhan, lalu kemudian Novia diangkat oleh Pak Asraf dan Bu Esti.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:-1px; text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">Novia punya sahabat waktu di panti asuhan bernama Tammy. Saat Novia diangkat oleh Pak Asraf dan Bu Esti. Tammy tetap di panti asuhan. Tammy dan Novia tetap bersahabat. Lulus SMA, Tammy menikah dan tinggal bersama suaminya di Amsterdam. Novia sempat lost contact dengan Tammy.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">Suatu hari, Novia diajak bertemu dengan teman lama Pak Asraf dan Bu Esti yaitu Pak Wijaya dan Istrinya, Bu Indri di sebuah restoran. Ternyata di sana, juga ikut anaknya pak Wijaya yang bernama Hakim. Hakim adalah pria berwajah tampan, berusia 35 tahun. Pak Asraf dan Pak Wijaya berharap Novia dan Hakim melakukan taaruf dan menikah.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">Setelah akad nikah dan resepsi, Hakim langsung membawa Novia ke rumahnya di sebuah cluster. Di rumah itu, Hakim berkata kalau dia tidak mencintai Novia. Dan Hakim juga tau kalau Novia juga tidak mencintai dirinya. Hakim ngga mau memaksakan. Hakim juga menegaskan kalau dirinya ngga bisa melakukan hubungan suami istri dengan orang yang tidak dicintai.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">Sementara itu, ada seorang laki-laki bernama Jeffrey (33 tahun) yang suka mengantar keponakannya yang bernama Bryan,.&nbsp;Jeffrey sebenernya kelimpungan mengurus keponakannya itu. Pada dasarnya Jeffrey tidak suka anak kecil, sehingga mengatur Bryan membuat Jeffrey frustasi. Novia banyak membantu Jeffrey untuk &ldquo;menjinakkan&rdquo; Bryan.</span></span></span></span></p>\r\n\r\n<h4 style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">Cast &amp;&nbsp;Crew</span></span></strong></span></span></h4>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">ALISIA RININTA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">RANDY PANGALILA&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">JONATHAN FRIZZY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">DINDA KIRANA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">CUT KEKE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">BABY ZELVIA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">EENG SAPTAHADI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">SULTAN DJORGHI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">DEWI IMAS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">RASYID KARIM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">DERRY DRAJAT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">MARIANA PUTRI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">DIEGO AFISYAH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">ERRY OWE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">DARREN&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">TITA HANANTO</span></span></span></span></li>\r\n</ul>\r\n\r\n<h4 style=\"text-align:justify\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\">Production Stils</span></span></span></span></strong></h4>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\"><em>Sutradara&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H. Encep Masduki</em></span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\"><em>Produser&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Iwan S. Manan</em></span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\"><em>Produser Eksekutif&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; David S. Suwarto</em></span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\"><em>Cerita &amp; Skenario&nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Donna Rosamayna</em></span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\"><em>Produksi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SinemArt</em></span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\"><em>Judul Lagu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MESIN WAKTU</em></span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\"><em>Penyanyi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Budi Doremi</em></span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\"><em>Pencipta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Budi Doremi</em></span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\"><em>Produksi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Digital Rantai Maya</em></span></span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><span style=\"color:#666666\"><span style=\"background-color:#ffffff\"><em>Publisher&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Digital Rumah Publishindo</em></span></span></span></span></li>\r\n</ul>\r\n', '7354e23de59a0c187521bdd45cb9dbaa.jpg', 'takdir-cinta-yang-kupilih', 7),
(2, 'Belok Kanan Jalan Terus', '2023-04-18 04:50:36', '<h4><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Sinopsis</strong></span></h4>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\">Kalo ada yang nanya jalan menuju surga, jawab aja, &ldquo;Belok kanan terus lurus.&rdquo; Ini adalah kisah tentang orang-orang yang pernah berada di kiri jalan, lalu karena faktor hidayah memutuskan untuk berbelok ke kanan. Tapi langkah menuju shirothol mustaqim alias jalan yang lurus ternyata tidaklah mudah. Setan paling doyan menggoda hamba yang beriman.</span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\">Kejadiannya di sebuah kampung di pinggiran Jakarta. Tepatnya Kampung Cisomplak. Ada lurah yang mantan ketua preman, BANG JAY. Ada ustad yang dulunya artis spesialis antagonis, USTAD ROBERT. Ada pemilik warung makan yang ternyata bekas dukun professional, BANG URIP. Ada hijaber yang video asusilanya sempat viral, SEKAR. Ada juga cowok tukang galon yang kapok jadi tukang mabok, BARA. Terakhir, ada marbot masjid yang fasih ngoceh soal bisnis dan ekonomi karena dia pernah menjabat sebagai direktur, PAK WIN.</span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\">Mereka semua sekarang udah pada hijrah. Tapi untuk bisa tetap istiqomah bukanlah perkara mudah. Dosa masa lalu mereka seolah masih terus mengejar. Kira-kira begitulah pesan moral yang ingin disampaikan dalam serial ini.</span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\">Inilah drama kehidupan yang dibingkai dengan figura komedi. Terasa satir dan getir. Karena mewakili banyak perasaan para penonton. Mereka seperti sedang berkaca dan akan berkata, &ldquo;Ini gue banget! Gue pernah ngalamin kayak gini!&rdquo;</span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\">Karakter yang hidup, dialog yang kuat dan cerita yang unik akan membuat mereka betah berlama-lama di depan TV sambil ngemil atau nyetrika. Banyak tertawa dan sesekali mengusap</span></p>\r\n\r\n<h4><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Cast &amp;&nbsp;Crew</strong></span></h4>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">CUT MEYRISKA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">ROGER DANUARTA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">GIOVANNI L. TOBING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">ADIPURA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">EL MANIK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">EDDI OGLEK &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">BENNI RUSWANDI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">SASHA ALEXA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">JENNIFER EVE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">WINGKY HARUN&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></li>\r\n</ul>\r\n\r\n<h4><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Production Stils</strong></span></h4>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>Sutradara&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Agus Elias</em></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>Produser&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</em><em>Dani Sapawie, Lili Sunawati</em></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>Produser Eksekutif&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Leo Sutanto, David S. Suwarto</em></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>Cerita &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp; Skenario&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ahmad R. Madani, Andi Atthira</em></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>Produksi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SinemArt</em></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>Judul Lagu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp; &nbsp; &nbsp; &nbsp;BELOK KANAN JALAN TERUS</em></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>Penyanyi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp; &nbsp; &nbsp; CHARLY VH feat ANYA</em></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>Ciptaan&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp; &nbsp; &nbsp; &nbsp;CHARLY VH</em></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>Publisher&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp; &nbsp; &nbsp; &nbsp; MSI RECORD</em></span></li>\r\n</ul>\r\n', '4483c445b7ce1eb7994e66b386500c48.jpg', 'belok-kanan-jalan-terus', 7),
(3, 'Bidadari Surgamu', '2023-04-18 04:50:41', '<h4><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Sinopsis</strong></span></span></h4>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Cerita berawal dari momen tiup lilin ulang tahun&nbsp;<strong>Sakinah (20),&nbsp;</strong>seorang perempuan yang sejak lahir dibuang oleh orang tuanya dan akhirnya dirawat oleh&nbsp;<strong>Pak Haidar (53)&nbsp;</strong>dan&nbsp;<strong>Ibu Hamidah (50)</strong>. Sejak itu Sakinah hidup bersama keluarga Pak Haidar yang terdiri dari:&nbsp;<strong>Salim (28)&nbsp;</strong>anak kandung pertama,&nbsp;<strong>Namira (20)&nbsp;</strong>anak&nbsp;&nbsp;&nbsp;&nbsp; kandung kedua,&nbsp;<strong>Sofia (26)&nbsp;</strong>istri Salim,&nbsp;<strong>dan Azam (4)&nbsp;</strong>anak dari Salim dan Sofia. Salim bekerja di sebuah perusahaan, sementara istrinya adalah perempuan yang sangat matre. Di rumah mereka juga tinggal keponakannya Pak Haidar bernama&nbsp;<strong>Fadil (25)&nbsp;</strong>yang sudah bekerja.</span></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Sakinah tidak pernah tahu siapa orang tuanya, tapi setiap tahun ibu kandungnya selalu mengirim hadiah ulang tahun untuk Sakinah. Malam itu,&nbsp;<strong>Ibu Lauza (39)&nbsp;</strong>diam-diam menyimpan hadiah di depan pagar rumah Pak Haidar. Ternyata dia adalah ibu kandung Sakinah. Ibu Lauza sempat dilihat dan langsung dikejar oleh Sakinah. Aksi kejar-kejaran ini direkam oleh tetangga bernama Ibu Husna. Tapi pagi hari saat rekaman itu mau dilihat oleh Sakinah, HP Ibu Husna terlindas oleh mobil mewah Denis.</span></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Denis satu mobil dengan Sakinah, mobil Denis mogok di jalanan sepi. Saat itu juga sedang ada razia pasangan mesum oleh polisi dan reporter berita. Denis mengaku kalau dia dan Sakinah adalah pasutri, tapi polisi segera tahu itu bohong. Alhasil mereka dibawa ke kantor polisi.&nbsp;Pak Haidar dan Ibu Hamidah mulai khawatir, mereka berencana menikahkan Sakinah dengan Denis.&nbsp;Sementara Ibu Lauza merasa prihatin pada Sakinah dan bercerita pada&nbsp;<strong>Andrew (25),&nbsp;</strong>kakak kandung Denis yang tinggal di London, untuk membujuk Denis agar mau menikahi Sakinah. Sedangkan&nbsp;<strong>Kania (17)</strong>, adik tiri Denis malah mengatai Sakinah itu cewek gak bener. Singkat cerita Denis setuju menikahi Sakinah dengan niatan untuk balas dendam karena gara- gara Sakinah, dia diputusin Flora.</span></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Meski banyak yang tak setuju dengan pernikahan ini, tapi pernikahan Denis dan Sakinah tetap berjalan. Ibu Lauza sangat senang bisa dekat dengan anak kandungnya. Tapi sejak Sakinah tinggal di rumah Denis, tekanan datang bertubi-tubi dari Pak Mario dan Kania, serta Denis yang mengacuhkan Sakinah. Sementara Ibu Lauza tidak mau kalau sampai mereka tahu bahwa Sakinah adalah anaknya.</span></span></p>\r\n\r\n<h4><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Cast &amp;&nbsp;Crew</strong></span></span></h4>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">SALSHABILLA ADRIANI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">RIZKY NAZAR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">JOSEPHINE FIRMSTONE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">DOSMA HAZENBOSCH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">REZCA SYAM&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">YATTI OCTAVIA&nbsp; &nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">PANGKY SUWITO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">MICHELLE JOAN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">MIKE LUCOCK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">YUZAR NAZAROS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\">KARLINA INAWATI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></p>\r\n', '421879039b49f72880cbe9e6b397dc42.jpg', 'bidadari-surgamu', 7),
(4, 'Cinta Yang Tak Sederhana', '2023-04-18 04:50:46', '<h4><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>Sinopsis</strong></span></span></h4>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\"><strong>PRABU BARATA&nbsp;</strong>adalah pengusaha tajir yang memiliki istri bernama&nbsp;<strong>ZARA</strong>&nbsp;dan mereka memiliki seorang anak bernama&nbsp;<strong>ABAS</strong>. Awalnya Abas dijodohkan dengan&nbsp;<strong>MAYA</strong>. Tapi Abas justru jatuh cinta pada office girl di kantornya bernama&nbsp;<strong>MEGA</strong>. Walau Prabu dan Zara tahu kalau Abas mencintai Mega, tapi kedua orangtua Abas itu tetap menikahkan Abas dengan Maya.</span></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Maya tidak suka dengan pasangan Ria dan Joko karena kedua orang itu tahu soal perselingkuhannya dengan Boby. Boby&nbsp;membunuh Joko karena tahu perselingkuhannya. Karena sakit hati dengan sikap Maya dan Boby yang sudah membunuh suaminya, saat Ria melahirkan, Ria pun menukar bayinya itu dengan bayi yang baru dilahirkan Maya. Ria menukar bayinya itu dengan tujuan agar anak kandungnya itu bisa hidup bahagia sebagai pewaris tunggal seluruh harta keluarga Prabu Barata. Anak kandung Ria itu pun akhirnya diakui Prabu sebagai cucunya dan diberi nama&nbsp;<strong>RAJA</strong>, sementara anak Maya yang dirawat Ria akhirnya diberi nama&nbsp;<strong>ADI</strong>.</span></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Waktu berlalu, Raja akhirnya tumbuh besar bersama Adi. Mereka berdua juga memiliki teman dekat bernama&nbsp;<strong>NASYA</strong>, anak kandung dari pengusaha sukses&nbsp;<strong>MAHDI&nbsp;</strong>dan&nbsp;<strong>LIZA</strong>&nbsp;yang merupakan mitra penting Prabu Barata di perusahaannya.&nbsp;Nasya sudah jatuh cinta pada Raja karena ketampanannya.&nbsp;Diam-diam Adi justru menyukai dan jatuh cinta pada Nasya sejak mereka masih kecil. Namun karena Nasya tahu bahwa Adi hanyalah anak pembantu Prabu, Nasya sama sekali tidak memperhatikan Adi, bahkan Nasya cenderung sinis terhadap Adi.</span></span></p>\r\n\r\n<h4><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"font-size:14px\">Cast &amp;&nbsp;Crew</span></strong></span></h4>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">DANNIA SALSABILLA&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">ERDIN WERDRAYANA &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">ISE IRISH&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">JEREMIE MOEREMANS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">DINA LORENZA&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">ADAM JORDAN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">WINDY WULANDARI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">MINATI ATMANEGARA&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">PIERRE GRUNO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">REYNOLD SURBAKTI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">HIKMAL ABRAR&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">TRI A NINGTYAS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">ADITYA HERPAVI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">ENA PASARIBU&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></li>\r\n</ul>\r\n\r\n<h4><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"font-size:14px\">Production Stils</span></strong></span></h4>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"font-size:14px\">Sutradara&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ssharad Sharaan</span></strong></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"font-size:14px\">Produser&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lili Wong</span></strong></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"font-size:14px\">Produser Eksekutif&nbsp; &nbsp; &nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; David S. Suwarto</span></strong></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"font-size:14px\">Cerita &amp; Skenario&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gajra Kottary &amp; Serena Luna</span></strong></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"font-size:14px\">Produksi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sinemart</span></strong></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"font-size:14px\">Judul Lagu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MASIH BELUM LUPA</span></strong></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"font-size:14px\">Penyanyi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ade Govinda Feat. Anneth</span></strong></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"font-size:14px\">Pencipta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ade Govinda</span></strong></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"font-size:14px\">Produksi&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mymusic Records &amp; Rans Music</span></strong></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><span style=\"font-size:14px\">Publisher&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kreatif Indigo Musik</span></strong></span></p>\r\n', 'cf50135935620d1b8ddf6748f773b8ba.jpg', 'cinta-yang-tak-sederhana', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_slider`
--

INSERT INTO `tb_slider` (`id`, `gambar`) VALUES
(1, '9bb345b5ec507b6b7641729c92fd5140.jpg'),
(2, '8ef2b7b19fef0565c74212430d03048d.jpg'),
(3, '7e0e855776853ed05124d5ba675f8cec.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_socmed`
--

CREATE TABLE `tb_socmed` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_socmed`
--

INSERT INTO `tb_socmed` (`id`, `nama`, `url`, `icon`) VALUES
(4, 'Facebook', 'https://www.facebook.com/SinemartOfficial', 'fa fa-facebook'),
(8, 'Twitter', 'https://twitter.com/sinemart_ph', 'fa fa-twitter'),
(10, 'Instagram', 'https://www.instagram.com/sinemart_ph', 'fa fa-instagram'),
(12, 'Youtube', 'https://www.youtube.com/@sinemartpictures', 'fa fa-youtube');

-- --------------------------------------------------------

--
-- Table structure for table `tb_statis`
--

CREATE TABLE `tb_statis` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_statis`
--

INSERT INTO `tb_statis` (`id`, `judul`, `isi`, `gambar`) VALUES
(1, 'Profil', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>The Journey Started</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">Sinemart dibentuk pada tahun 2003 oleh Leo Sutanto, Sentot Sahid, Heru Hendriarto dan Lala Hamid. Leo Sutanto, yang telah dikenal di dunia perfilman Indonesia, namun selama 25 tahun karirnya dia mempunyai kerinduan untuk menyampaikan cerita-cerita yang inspirasional. Dari keinginan inilah, Sinemart terbentuk.</p>\r\n\r\n<p style=\"text-align:justify\">Proyek pertama kami adalah &ldquo;Malam Pertama&rdquo; (2003), sebuah serial televisi untuk SCTV yang pada akhirnya mendapat banyak nominasi di ajang SCTV Awards 2003. Namun terobosan besar pertama kami adalah adaptasi kami untuk &ldquo;Ada Apa Dengan Cinta?&rdquo; (2003) menjadi sebuah serial TV. Proses audisi untuk pemeran dikemas dalam bentuk reality show, yang merupakan acara realitas berskala nasional pertama di Indonesia.</p>\r\n\r\n<p style=\"text-align:justify\">Sejak didirikan, kami telah mengukuhkan posisi sebagai salah satu pemeran utama di dunia perfilman Indonesia. Cakupan dan pertumbuhan perusahaan kami bertumbuh pesat dengan portfolio lebih dari 150 judul program untuk televisi, dengan ribuan jam tayang program untuk televisi. Ditambah pula divisi Sinemart Pictures kami yang telah berhasil membuat 20 film layar lebar. Sampai saat ini, semua produksi kami selalu menjanjikan rating tinggi dan tanggapan memuaskan dari publik nasional dan internasional (terutama Asia Tenggara).</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Destination&rsquo;s Journey</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">Sinemart, yang diambil dari 3 kata &lsquo;Sinema&rsquo;, &lsquo;Art&rsquo; dan &lsquo;Mart&rsquo; menggambarkan secara tepat apa visi dari perusahaan kami ini. Kami berusaha menciptakan sebuah campuran sempurna antara &lsquo;seni&rsquo; dan &lsquo;dagang&rsquo; melalui medium film. Seperti telah disebutkan sebelumnya, kerinduan akan menyampaikan cerita-cerita yang inspirasional merupakan fondasi kami untuk mengembangkan sebuah serial televisi atau film layar lebar.</p>\r\n\r\n<p style=\"text-align:justify\">Sebuah cerita inspirasional tentunya subjektif dengan selera orang, namun cara kami menceritakan adalah yang membuat kami beda dari yang lain. Gaya cerita kami bisa digambarkan sebagai kombinasi dari artistik dan komersil, yang menurut kami sangat tepat sebagai penarik perhatian untuk berbagai umur dan latar belakang.</p>\r\n\r\n<p style=\"text-align:justify\">Eksklusif tetapi mudah dijangkau, menjadi idaman kami untuk bagaimana kami ingin dilihat khalayak luas. Kita akan mengerjakan dan mempromosikan produksi kami secara maksimum namun tanpa kesan akan mengintimidasi publik. Adalah ikrar kami untuk meneruskan kontribusi-kontribusi kami ke dalam industri perfilman Indonesia dengan selalu mencari dan memberi kesempatan bagi darah-darah baru, terobosan baru dalam presentasinya dan (tentunya) cerita-cerita baru yang inspirasional.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', '41d4b6aa8dca6d86d77bfc0130bea0c3.png'),
(2, 'Visi dan Misi', '<p><strong>VISI</strong></p>\r\n\r\n<p>Belum tau</p>\r\n\r\n<p><strong>MISI</strong></p>\r\n\r\n<p>Belum tau</p>\r\n', 'wkwkwk.com'),
(3, 'Struktur Organisasi', '<p><span style=\"font-size:18px\"><strong>Belum Tau wkwkw</strong></span></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'wkwkwk.com'),
(4, 'Profil Pegawai', '<p><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:14px\">Pegawai</span></span></strong></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial, Helvetica, sans-serif\"><span style=\"font-size:14px\"><strong>M.Ivan Fadilah</strong></span></span></li>\r\n</ul>\r\n', 'wkwkwk.com'),
(5, 'Tutorial', '<div>\r\n<h1>Tutorial Reimburse</h1>\r\n\r\n<div>\r\n<p>&nbsp; Berikut adalah tutorial untuk mengajukan reimburse rawat jalan menggunakan Talenta - Mobile :</p>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgif6l-O0NRX3xDdHA1c_iD-P54xpshZW9G_d09Szqoj0y7PzZPeVLfs6Uv-3hTDldk0ySHvKhA30atzQSEF7yzhIXrdpapZ1eaOw2m-YrCJkgoq7rHPhFNZWQh99u3NuLiJM8jbXn5BUWi9rTwmUVHhCaODfPF-0ADB5yhlgXGjIHe6YF_rRJcTnjUDg/s976/1.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgif6l-O0NRX3xDdHA1c_iD-P54xpshZW9G_d09Szqoj0y7PzZPeVLfs6Uv-3hTDldk0ySHvKhA30atzQSEF7yzhIXrdpapZ1eaOw2m-YrCJkgoq7rHPhFNZWQh99u3NuLiJM8jbXn5BUWi9rTwmUVHhCaODfPF-0ADB5yhlgXGjIHe6YF_rRJcTnjUDg/s320/1.jpg\" style=\"height:320px; width:181px\" /></a></div>\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiGmsr5AgJwp_gpLUAlHKzUryDI-uqZLI1HpqhSvOM4hnjTHFM5Yfr06lNe42IjamVQoi0IMHoLugA_Y5_diC5G27gUJQGTTr5fn7u6Y4QdJNnOXwzrGQDBqoBuxF3cbZ5WpTInsim-RLrDiuAKT5puuTpj8P5a0LBTHSWD-c0bIhxj6VW2d9xe5ghByQ/s976/2.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiGmsr5AgJwp_gpLUAlHKzUryDI-uqZLI1HpqhSvOM4hnjTHFM5Yfr06lNe42IjamVQoi0IMHoLugA_Y5_diC5G27gUJQGTTr5fn7u6Y4QdJNnOXwzrGQDBqoBuxF3cbZ5WpTInsim-RLrDiuAKT5puuTpj8P5a0LBTHSWD-c0bIhxj6VW2d9xe5ghByQ/s320/2.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhybahRUNPzTrJ89L9aDq-ZJMYIlwWKPhlBq2y7-n2lgYou1vSEu07TJrCQG0uVq8sojaxKrHzVKPbHNGMh6Z4IkjLg6aF0EQCS2jTqKBal8XAxkUnz9Qy8F5JRJdVJoQWN8nYU-Yi6RMLHiopV1vHXT9O4-X6xETLW8UqmbYDmygQqk7dxBuSxYTArDA/s976/3.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhybahRUNPzTrJ89L9aDq-ZJMYIlwWKPhlBq2y7-n2lgYou1vSEu07TJrCQG0uVq8sojaxKrHzVKPbHNGMh6Z4IkjLg6aF0EQCS2jTqKBal8XAxkUnz9Qy8F5JRJdVJoQWN8nYU-Yi6RMLHiopV1vHXT9O4-X6xETLW8UqmbYDmygQqk7dxBuSxYTArDA/s320/3.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjOck6lar3joP8T4tpku1GC5XIQIUovBXzOb7j3aGYfYiP5C8OEgB-vug-THqzzBxC2TIICLzN4MO4xWcPn5R9Gslz03Eh2nioMHpKkYLo7dEsXNjjjN43WDtzf6noEZsRP-GQ4o_GhjO8IFPClzcTf9Ur0uRP71C1n6mKw6I-mNyQ7te2wINqgEOc-gA/s1006/4.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjOck6lar3joP8T4tpku1GC5XIQIUovBXzOb7j3aGYfYiP5C8OEgB-vug-THqzzBxC2TIICLzN4MO4xWcPn5R9Gslz03Eh2nioMHpKkYLo7dEsXNjjjN43WDtzf6noEZsRP-GQ4o_GhjO8IFPClzcTf9Ur0uRP71C1n6mKw6I-mNyQ7te2wINqgEOc-gA/s320/4.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh64ceFryb7YtlJwoQ2MOse9GUlYApH34eYRWWd-dp2juNjX3ByKjtfeUuz8QTVTf5dJq50WLX1_grmlAE-CyM0etL5Di8UrbP5VG8qqzcEbomKLjfV-qnLMPMq-HLBarS5953di8_yudrMHAysW-oXCK9litsa4C0IIW-h07iAJN6gziHa32OgKmKwpA/s976/5.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh64ceFryb7YtlJwoQ2MOse9GUlYApH34eYRWWd-dp2juNjX3ByKjtfeUuz8QTVTf5dJq50WLX1_grmlAE-CyM0etL5Di8UrbP5VG8qqzcEbomKLjfV-qnLMPMq-HLBarS5953di8_yudrMHAysW-oXCK9litsa4C0IIW-h07iAJN6gziHa32OgKmKwpA/s320/5.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg2ANEc4KWLSKiigrQ40sTZQYwSkUd_WZFEQ3HEzlQUWw7Q4kZvLA944NIAuJ9X2QGAeMUGDwcRzoqx3M7S6yl8puFu8y09Dr3hXoC8ZYkyvfO3uT_Q8b7NCx9yJ-gjMgS6LYp0rKcem5KBnvK0vuZ-VxkJkRuXQk3aBSSUM6L_eki26TSRKnFnCLGwPg/s976/6.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg2ANEc4KWLSKiigrQ40sTZQYwSkUd_WZFEQ3HEzlQUWw7Q4kZvLA944NIAuJ9X2QGAeMUGDwcRzoqx3M7S6yl8puFu8y09Dr3hXoC8ZYkyvfO3uT_Q8b7NCx9yJ-gjMgS6LYp0rKcem5KBnvK0vuZ-VxkJkRuXQk3aBSSUM6L_eki26TSRKnFnCLGwPg/s320/6.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijRfpOJENucVcAhUqjJIehscF10yynWQX-RSGd6C0ck9aUF2Uz7juD9oe0cMq4t_eV4N0EtaQV0eX9KCFtbs_IBzCR7YdHgkz-HE8lf9rq-0pffD88xiPYH0iYanMgN3oIvYCZb_YG5XDq906k2TtwbbFZ5RY4YcQahxhef4i1po2rpvVhWR9YrVOwJA/s976/7.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEijRfpOJENucVcAhUqjJIehscF10yynWQX-RSGd6C0ck9aUF2Uz7juD9oe0cMq4t_eV4N0EtaQV0eX9KCFtbs_IBzCR7YdHgkz-HE8lf9rq-0pffD88xiPYH0iYanMgN3oIvYCZb_YG5XDq906k2TtwbbFZ5RY4YcQahxhef4i1po2rpvVhWR9YrVOwJA/s320/7.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgDCpKKOGqTvetcPZnDQ0lrgYROHT2ec4W3Wg3wieAKRfT3LDxNdEIjW0fct2WmIIP5OcBGjwaTDolQ3cI___fMmqYwjGRLIj5J4Iza8f5K096XgxEREW_LlrpX0ODWXm_Iu7fnpqZUcT1b0MBV9CqjMnRNLnqcDCOBcfgP5s9qzcYdTo1l4PEfwPyuDg/s976/8.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgDCpKKOGqTvetcPZnDQ0lrgYROHT2ec4W3Wg3wieAKRfT3LDxNdEIjW0fct2WmIIP5OcBGjwaTDolQ3cI___fMmqYwjGRLIj5J4Iza8f5K096XgxEREW_LlrpX0ODWXm_Iu7fnpqZUcT1b0MBV9CqjMnRNLnqcDCOBcfgP5s9qzcYdTo1l4PEfwPyuDg/s320/8.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjPRjS9ok3h4w-coaajV3joZcbl-UURuyTNChWE_ta2DHiyp3mOTPxCX6kmeSTwfKHziAwvEx0kcIimH20-oocW0s2y4uhIimO5E814j4OJYUBK7iVNwB-cletTptKUl5Dkh74bUkZFavk7VlF-k1lwQvr8EHjp0hMrQD_UqrTYzfeSr5efwuDKcso3Mg/s976/9.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjPRjS9ok3h4w-coaajV3joZcbl-UURuyTNChWE_ta2DHiyp3mOTPxCX6kmeSTwfKHziAwvEx0kcIimH20-oocW0s2y4uhIimO5E814j4OJYUBK7iVNwB-cletTptKUl5Dkh74bUkZFavk7VlF-k1lwQvr8EHjp0hMrQD_UqrTYzfeSr5efwuDKcso3Mg/s320/9.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjtECDJQuRdDW1beJolHsHtIZHmSYoekrvqwwJ7oZQLXfnF63QK2WFAFzQQ-3RmYWV8m-hA5_G6ijHQj-DHjs3GysmwFkCFFYY_Eo39huAx5gJAkdeQOgpfqQWuzloHD9RuM7IkuVyLOwrzt1I_WNgHnHFT41OdTB6mDQl8a6he353bJG4kFyjdcHzgyw/s976/10.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjtECDJQuRdDW1beJolHsHtIZHmSYoekrvqwwJ7oZQLXfnF63QK2WFAFzQQ-3RmYWV8m-hA5_G6ijHQj-DHjs3GysmwFkCFFYY_Eo39huAx5gJAkdeQOgpfqQWuzloHD9RuM7IkuVyLOwrzt1I_WNgHnHFT41OdTB6mDQl8a6he353bJG4kFyjdcHzgyw/s320/10.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh2SewHnrYuSVfL6b7y1Z9G77fjyTHYRPF4DRy3aDUExLgGXVpUfA1vweFh0t5-7ljGHmulqZSlSjyeNO9RyNYUeTmBYS7mC9ClWdZbL8UB8A2kPOHAB3blTKlEKPBblvPy1Q3xwjfLDKRqVypMJGLCuweGi9n8yrsGngjfrvPjZs_QV3-Hihb3Gx20FA/s976/11.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh2SewHnrYuSVfL6b7y1Z9G77fjyTHYRPF4DRy3aDUExLgGXVpUfA1vweFh0t5-7ljGHmulqZSlSjyeNO9RyNYUeTmBYS7mC9ClWdZbL8UB8A2kPOHAB3blTKlEKPBblvPy1Q3xwjfLDKRqVypMJGLCuweGi9n8yrsGngjfrvPjZs_QV3-Hihb3Gx20FA/s320/11.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\"><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjQYuX6H313JUmtgESRvLpTdA-cD4yBVmPe9MymFf-BMeOLwf1P_3usEnve3cZe0uR7YmpwGW_eVTqI7KpavnHtxuV2Uul_eDapNMcuKHggsgLkNfCo8BpuwwOnc_IGPw7L7vetD_vxBtx-EVOvYD0pIzsF7KDAurvDqEGSCJm8d4LEvU42K0O5lzbcQ/s976/12.jpg\" style=\"margin-left: 1em; margin-right: 1em;\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjjQYuX6H313JUmtgESRvLpTdA-cD4yBVmPe9MymFf-BMeOLwf1P_3usEnve3cZe0uR7YmpwGW_eVTqI7KpavnHtxuV2Uul_eDapNMcuKHggsgLkNfCo8BpuwwOnc_IGPw7L7vetD_vxBtx-EVOvYD0pIzsF7KDAurvDqEGSCJm8d4LEvU42K0O5lzbcQ/s320/12.jpg\" style=\"height:320px; width:180px\" /></a></div>\r\n&nbsp;\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">&nbsp;</div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\">&nbsp;</div>\r\n&nbsp;\r\n\r\n<div style=\"text-align:center\">&nbsp;</div>\r\n&nbsp;\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:center\">&nbsp;</div>\r\n&nbsp;\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n', 'wkwkwk.com'),
(6, 'Featured', '<div>\r\n<div><a class=\"paint-title\" href=\"https://it-qna.blogspot.com/p/talenta-tutorial.html\"><img alt=\"Talenta\" id=\"Image1_img\" src=\"https://blogger.googleusercontent.com/img/a/AVvXsEjTQW-jPHMlI_HFvMv5PAznq9wVbcs2yoTWKeJSE9VhUtFODISX7afw4Ki9jkXaYKDjlwD9bECj8QapUyGYqvmzqaV0RsV3hxWlH2pVtZ5eB5dcPcF1vbCCMH4PIWk8eUevPTnUuf554wbVtOsRfdOiCOzkydtIzeMbtTNfk2i4dMyrYdttz2RnnMLhkQ=s225\" style=\"height:100px; width:100px\" /></a></div>\r\n\r\n<div>\r\n<h2><a class=\"paint-title\" href=\"https://www.talenta.co/\">Talenta</a></h2>\r\n</div>\r\n</div>\r\n\r\n<div>&nbsp;\r\n<div><br />\r\n<a class=\"paint-title\" href=\"https://it-qna.blogspot.com/p/db-talent-tutorial.html\"><img alt=\"Talent DB\" id=\"Image2_img\" src=\"https://blogger.googleusercontent.com/img/a/AVvXsEhR_-FpQrVREwVllFvwRjJvBOhovSUaPQ8pVlZ-1sBqU-YHKt1Xtb3Y03WMQprDFgi6CGBXr-Pd69yLXmrdtWWG3vdbGGtfQ1FxEV_9fi2LuZIf9fsPW68pXCSrdY436GDip-QEJtLDBl5IRmL7SMQ1UmqXEF0Z9pcAsdhyDTmKhK9GL0lzw9UWH4R38Q=s324\" style=\"height:100px; width:100px\" /></a></div>\r\n\r\n<div>\r\n<h2><a class=\"paint-title\" href=\"https://talent.sinemart.erloom.id/\">Talent DB</a></h2>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div><br />\r\n<a class=\"paint-title\" href=\"/\"><img alt=\"PM\" id=\"Image3_img\" src=\"https://blogger.googleusercontent.com/img/a/AVvXsEhtAdfNBnjWEH2L-ZFktDBdhWEphq8fZ6pCOYPB38KuGPBC3sj2uMuBZmWGqlXy2nTGv8_jtKS3NrCaEHtJoGhWYGhHHsKYOyTT7g5ww7ReDzOC0hR1bl4AGSkAk3HaF73atewWCf0TF23395NBlY6va3P-X8GUwvCLsSZ66llzvshZmHH_WKX2Y3gpTA=s500\" style=\"height:100px; width:100px\" /></a></div>\r\n\r\n<div>\r\n<h2><a class=\"paint-title\" href=\"https://monday.com/\">PM</a></h2>\r\n</div>\r\n<br />\r\n&nbsp;</div>\r\n\r\n<div>\r\n<div><a class=\"paint-title\" href=\"https://it-qna.blogspot.com/p/biaya-harian-tutorial.html\"><img alt=\"Biaya Harian\" id=\"Image4_img\" src=\"https://blogger.googleusercontent.com/img/a/AVvXsEg9-JbRiETUHQku5_E5eo5RYqa1ITLkF6Ek5bqnql6GeXOsn7b7usVJEVvMJJbBe53wiOQrIwvtfpwJAw6sAurot4F79da4SV-8Bcj7IGw-JonTcWWUdZ2bhHO-InKR6ueyPOe3ehKrh1uboNxCXNp0IB-UYYF-vZIh87taFaJBYgJ48OvNWeUnpNDBKA=s512\" style=\"height:100px; width:100px\" /></a></div>\r\n\r\n<div>\r\n<h2><a class=\"paint-title\" href=\"https://sinemart.com\">Biaya Harian</a></h2>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div><br />\r\n<a class=\"paint-title\" href=\"/\"><img alt=\"Equipment DB\" id=\"Image5_img\" src=\"https://blogger.googleusercontent.com/img/a/AVvXsEgx2VGBjnqHD_KNlKPXp_yvIltZsgfs28J3MTJgOYZNZFtlO2Oc5LBr8Xmrix1lAt09wQqWJXCbjh-be8Qo6cyetNyu-eXtKbg6cJiUMGKKR15rrpLYRHrWxUqHoft3bCOcgzxQy9oJN1kO0hkaIEbTCXejiXnEcgtLbQozomsHaiadLS7snY8xDqCpWQ=s234\" style=\"height:92px; width:100px\" /></a></div>\r\n\r\n<div>\r\n<h2><a class=\"paint-title\" href=\"/\">Equipment DB</a></h2>\r\n</div>\r\n</div>\r\n\r\n<div>&nbsp;\r\n<div><br />\r\n<a class=\"paint-title\" href=\"/\"><img alt=\"ERP\" id=\"Image6_img\" src=\"https://blogger.googleusercontent.com/img/a/AVvXsEgt9QyZqE25_QKhLGOfof3O6QzVPS5S9dlr-noBk6z9v9RKZ-Pz_z6j8zt7QZ7TlTGnJm2RT5Zu9Ou1jZ2bVW4bndVnBZppSRjdbl0U3pzm3uXarfIH5QjRZkZHWBVTv85wVaBUTZ-mDpu09Lre0Eo1JuJOIqXS4Uc6mLm7hj8cNdWNG6rJqiRF-N6n8A=s415\" style=\"height:100px; width:100px\" /></a></div>\r\n\r\n<div>\r\n<h2><a class=\"paint-title\" href=\"https://sandbox.sinemart.prieds.com/\">ERP</a></h2>\r\n</div>\r\n<br />\r\n&nbsp;</div>\r\n', 'wkwkwk.com'),
(7, 'Lokasi', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong>PT SINEMART INDONESIA</strong></span></p>\n\n<hr />\n<p>&nbsp;</p>\n', 'wkwkwk.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_submenu`
--

CREATE TABLE `tb_submenu` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `urutan` int(3) NOT NULL,
  `idmenu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jenkel` enum('L','P') NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nohp` varchar(13) NOT NULL,
  `status` enum('1','0') DEFAULT '1',
  `level` enum('1','2') DEFAULT NULL,
  `register` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `email`, `jenkel`, `username`, `password`, `nohp`, `status`, `level`, `register`, `photo`) VALUES
(7, 'admin', 'admin@gmail.com', 'L', 'admin', '21232f297a57a5a743894a0e4a801fc3', '000000000000', '1', '1', '2023-04-14 04:10:31', 'a58ebace281f2c4a5610bce818f37a69.png'),
(8, 'test', 'test@gmail.com', 'L', 'test', '098f6bcd4621d373cade4e832627b4f6', '081200000000', '1', '1', '2023-04-14 03:28:10', 'bd98ee7f42d3beaf37bc11f46a3ee83f.jpg');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_berita`
-- (See below for the actual view)
--
CREATE TABLE `vw_berita` (
`id` int(11)
,`judul` varchar(150)
,`isi` text
,`tayang` int(11)
,`slug` varchar(200)
,`gambar` varchar(255)
,`kategori` varchar(30)
,`author` varchar(50)
,`tanggal` varchar(78)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_berita`
--
DROP TABLE IF EXISTS `vw_berita`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_berita`  AS SELECT `tb_berita`.`id` AS `id`, `tb_berita`.`judul` AS `judul`, `tb_berita`.`isi` AS `isi`, `tb_berita`.`tayang` AS `tayang`, `tb_berita`.`slug` AS `slug`, `tb_berita`.`gambar` AS `gambar`, `tb_kategori`.`kategori` AS `kategori`, `tb_user`.`nama` AS `author`, date_format(`tb_berita`.`tanggal`,'%d %M %Y %h:%i') AS `tanggal` FROM ((`tb_berita` join `tb_kategori` on(`tb_berita`.`kategoriid` = `tb_kategori`.`id`)) join `tb_user` on(`tb_berita`.`userid` = `tb_user`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_buka`
--
ALTER TABLE `tb_buka`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_files`
--
ALTER TABLE `tb_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_gallery`
--
ALTER TABLE `tb_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_identitas`
--
ALTER TABLE `tb_identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_igfeed`
--
ALTER TABLE `tb_igfeed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_inbox`
--
ALTER TABLE `tb_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jenispelayanan`
--
ALTER TABLE `tb_jenispelayanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengunjung`
--
ALTER TABLE `tb_pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_serialtv`
--
ALTER TABLE `tb_serialtv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_socmed`
--
ALTER TABLE `tb_socmed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_statis`
--
ALTER TABLE `tb_statis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_submenu`
--
ALTER TABLE `tb_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_album`
--
ALTER TABLE `tb_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_buka`
--
ALTER TABLE `tb_buka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_files`
--
ALTER TABLE `tb_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_gallery`
--
ALTER TABLE `tb_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_identitas`
--
ALTER TABLE `tb_identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_igfeed`
--
ALTER TABLE `tb_igfeed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_inbox`
--
ALTER TABLE `tb_inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_jenispelayanan`
--
ALTER TABLE `tb_jenispelayanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_pengunjung`
--
ALTER TABLE `tb_pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1261;

--
-- AUTO_INCREMENT for table `tb_serialtv`
--
ALTER TABLE `tb_serialtv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_socmed`
--
ALTER TABLE `tb_socmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_statis`
--
ALTER TABLE `tb_statis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_submenu`
--
ALTER TABLE `tb_submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
