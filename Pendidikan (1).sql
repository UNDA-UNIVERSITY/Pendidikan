CREATE TABLE `pengajar` (
  `no_pengajar` char(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `status` char(1) DEFAULT "0"
);

CREATE TABLE `fakultas` (
  `idjurusan` char(5) NOT NULL DEFAULT "",
  `fakultassingkat` varchar(10) DEFAULT NULL,
  `prodi` varchar(50) DEFAULT NULL,
  `jurusan` varchar(200) DEFAULT NULL,
  `krs` varchar(5) DEFAULT NULL,
  `prs` varchar(5) DEFAULT NULL,
  `tglkrs` varchar(20) DEFAULT NULL,
  `tglkhs` varchar(20) DEFAULT NULL,
  `tgltranskrip` varchar(20) DEFAULT NULL,
  `namafakultas` varchar(200) DEFAULT NULL,
  `dekan` varchar(50) DEFAULT NULL,
  `no_pengajardekan` varchar(30) DEFAULT NULL,
  `kaprodi` varchar(50) DEFAULT NULL,
  `no_pengajarkaprodi` varchar(10) DEFAULT NULL,
  `status` varchar(300) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL
);

CREATE TABLE `rencana_studi` (
  `id` int(11) NOT NULL,
  `no_siswa` char(15) DEFAULT NULL,
  `kode` char(15) DEFAULT NULL,
  `nilai` varchar(2) DEFAULT NULL,
  `angka` double DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `semesterdaftar` varchar(20) DEFAULT NULL,
  `idnamamata` int(11) DEFAULT NULL,
  `transkrip` varchar(2) DEFAULT NULL,
  `uas` varchar(1) DEFAULT NULL
);

CREATE TABLE `siswa` (
  `no_siswa` char(15) NOT NULL DEFAULT "",
  `nama` varchar(60) DEFAULT NULL,
  `tempatlahir` varchar(50) DEFAULT NULL,
  `tanggallahir` varchar(20) DEFAULT "",
  `agama` varchar(30) DEFAULT "",
  `jeniskelamin` varchar(50) DEFAULT NULL,
  `pa` varchar(200) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `tglyudisium` varchar(20) DEFAULT NULL,
  `judulta` varchar(500) DEFAULT "-",
  `ortu` varchar(60) DEFAULT NULL,
  `pekerjaanortu` varchar(30) DEFAULT NULL,
  `alamatortu` varchar(200) DEFAULT NULL,
  `noyudisium` varchar(3) DEFAULT NULL,
  `notranskrip` varchar(20) DEFAULT NULL,
  `noskl` varchar(4) DEFAULT NULL,
  `semestermasuk` varchar(11) DEFAULT NULL,
  `photo` varchar(15) DEFAULT NULL,
  `status` varchar(18) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `keterangan` varchar(10)
);

CREATE TABLE `matapelajaran` (
  `id` int(11) NOT NULL,
  `kode` char(15) NOT NULL,
  `namamata` varchar(60) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `idjurusan` char(5) DEFAULT "57201",
  `semester` varchar(20) DEFAULT NULL,
  `kelas` varchar(15) DEFAULT NULL,
  `status` varchar(1) DEFAULT "0",
  `pengajar` varchar(30) DEFAULT NULL,
  `no_pengajar` char(10) DEFAULT NULL,
  `kapasitas` int(3) DEFAULT 999,
  `full` varchar(1) DEFAULT "0",
  `tanggalujian` varchar(50) DEFAULT NULL,
  `hariujian` varchar(20) DEFAULT NULL,
  `jamujian` varchar(60) DEFAULT NULL,
  `haringajar` varchar(20) DEFAULT NULL,
  `jamngajar` varchar(20) DEFAULT NULL
);

CREATE TABLE `nilai` (
  `nilai` varchar(4) DEFAULT NULL,
  `angka` float NOT NULL
);

CREATE TABLE `semesteraktif` (
  `id` int(11) NOT NULL,
  `tahunajaran` varchar(20) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `tahun` varchar(9) DEFAULT NULL,
  `ganjilgenap` varchar(20) DEFAULT NULL
);

CREATE TABLE `setting` (
  `kepala_sekolah` varchar(50) DEFAULT NULL,
  `sks` int(3) NOT NULL DEFAULT 0,
  `no_pengajarkepala_sekolah` varchar(10) DEFAULT NULL,
  `set_semesteraktif` varchar(20) DEFAULT NULL,
  `set_semesterlalu` varchar(20) NOT NULL,
  `user` varchar(10) DEFAULT NULL
);

CREATE TABLE `user` (
  `username` varchar(15) NOT NULL DEFAULT "",
  `password` varchar(20) DEFAULT NULL,
  `tingkat` varchar(10) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `photo` varchar(10) DEFAULT NULL,
  `idjurusan` varchar(20) DEFAULT NULL
);
