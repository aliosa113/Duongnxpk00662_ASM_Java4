-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: duongnxpk00662_assignment
-- ------------------------------------------------------
-- Server version	5.7.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chitietgiaodich`
--

DROP TABLE IF EXISTS `chitietgiaodich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chitietgiaodich` (
  `idChiTietGiaoDich` int(11) NOT NULL AUTO_INCREMENT,
  `MaGiaoDich` int(11) NOT NULL,
  `idSanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(15,0) NOT NULL,
  `ThanhTien` decimal(15,0) NOT NULL,
  `TrangThai` bit(3) DEFAULT NULL,
  `GhiChu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idChiTietGiaoDich`),
  UNIQUE KEY `idChitietgiaodich_UNIQUE` (`idChiTietGiaoDich`),
  UNIQUE KEY `Trangthai_UNIQUE` (`TrangThai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietgiaodich`
--

LOCK TABLES `chitietgiaodich` WRITE;
/*!40000 ALTER TABLE `chitietgiaodich` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitietgiaodich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giaodich`
--

DROP TABLE IF EXISTS `giaodich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giaodich` (
  `idGiaoDich` int(11) NOT NULL AUTO_INCREMENT,
  `TrangThai` bit(4) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `SoDienThoai` int(11) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `PhuongThucThanhToan` bit(2) NOT NULL,
  `TongTien` decimal(15,0) NOT NULL,
  `NgayGiaoDich` date NOT NULL,
  PRIMARY KEY (`idGiaoDich`),
  UNIQUE KEY `idgiaodich_UNIQUE` (`idGiaoDich`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giaodich`
--

LOCK TABLES `giaodich` WRITE;
/*!40000 ALTER TABLE `giaodich` DISABLE KEYS */;
/*!40000 ALTER TABLE `giaodich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaisanpham`
--

DROP TABLE IF EXISTS `loaisanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loaisanpham` (
  `idLoaiSanPham` int(11) NOT NULL,
  `TenLoai` varchar(50) NOT NULL,
  `MoTa` varchar(255) NOT NULL,
  PRIMARY KEY (`idLoaiSanPham`),
  UNIQUE KEY `idLoaisanpham_UNIQUE` (`idLoaiSanPham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisanpham`
--

LOCK TABLES `loaisanpham` WRITE;
/*!40000 ALTER TABLE `loaisanpham` DISABLE KEYS */;
/*!40000 ALTER TABLE `loaisanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanpham` (
  `idsanpham` int(11) NOT NULL AUTO_INCREMENT,
  `tensanpham` varchar(45) NOT NULL,
  `idloaisanpham` int(11) NOT NULL,
  `giasanpham` decimal(15,0) NOT NULL,
  `ngaydang` date NOT NULL,
  `hinhanh` varchar(150) DEFAULT '',
  `mota` varchar(255) NOT NULL,
  PRIMARY KEY (`idsanpham`),
  UNIQUE KEY `idSanPham_UNIQUE` (`idsanpham`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (3,'sản phẩm 1',1,250000,'0016-09-05',NULL,'mô tả sản phẩm 1'),(5,'sản phẩm 2',2,200000,'2016-05-08',NULL,'mổ tả sản phẩm 2'),(6,'sản phẩm 3',3,250000,'2016-04-08',NULL,'mô tả sản phẩm 3'),(7,'sản phẩm 4',4,300000,'2016-05-15',NULL,'mô tả sản phẩm 4'),(8,'sản phẩm 5',5,350000,'2015-08-23',NULL,'mô tả sản phẩm 5'),(9,'sanphama',1,1,'2016-01-01',NULL,'daf'),(10,'sanpham',1,200000,'2016-01-01',NULL,'mo ta san');
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuyendung`
--

DROP TABLE IF EXISTS `tuyendung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuyendung` (
  `idtuyendung` int(11) NOT NULL AUTO_INCREMENT,
  `vitrituyendung` varchar(45) NOT NULL,
  `noilamviec` varchar(45) NOT NULL,
  `hantuyendung` date NOT NULL,
  PRIMARY KEY (`idtuyendung`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuyendung`
--

LOCK TABLES `tuyendung` WRITE;
/*!40000 ALTER TABLE `tuyendung` DISABLE KEYS */;
INSERT INTO `tuyendung` VALUES (1,'Cộng Tác Viên','Toàn Quốc','2016-10-30'),(2,'Cửa Hàng Phó','Thành phố HCM','2016-10-25'),(3,'Nhân Viên Marketing','Đà Nẵng','2016-09-30'),(4,'Người Mẫu','Hà Nội','2016-10-30'),(5,'Nhân Viên Bán Hàng Online','Đà Nẵng','2016-10-11'),(6,'Nhân Viên Sửa Áo Quần','Thành phố HCM','2016-09-10'),(7,'Nhân Viên Bán Hàng','Đà Nắng','2016-10-16'),(8,'Nhân Viên Bán Hàng','Hà Nội','2016-10-10'),(9,'Chăm Sóc Khách Hàng','Thành phố HCM','2016-10-08'),(10,'Hỗ Trợ Online','Toàn Quốc','2016-10-10');
/*!40000 ALTER TABLE `tuyendung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `idusers` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `gioitinh` bit(2) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idusers`),
  UNIQUE KEY `idUser_UNIQUE` (`idusers`),
  UNIQUE KEY `UserName_UNIQUE` (`username`),
  UNIQUE KEY `Email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'duongnxpk00662','bcqRR7yEX2Cr9MdGKhGrFg==','duongnxpk00662@fpt.edu.vn','Nguyễn Xuân Dương',NULL,NULL,NULL),(5,'admin','VoFKK8022ArjhqYSghLkBg==','admin@gmail.com','admin fullname',NULL,NULL,NULL),(6,'Abuser','rAHhGGlXvhU=','Ab@gmail.com','Ab Fullname',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-31 22:54:26
