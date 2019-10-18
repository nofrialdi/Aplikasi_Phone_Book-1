/*
 Navicat Premium Data Transfer

 Source Server         : local_koneksi
 Source Server Type    : MySQL
 Source Server Version : 100108
 Source Host           : localhost:3306
 Source Schema         : telepon2

 Target Server Type    : MySQL
 Target Server Version : 100108
 File Encoding         : 65001

 Date: 18/10/2019 10:06:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agama
-- ----------------------------
DROP TABLE IF EXISTS `agama`;
CREATE TABLE `agama`  (
  `Agama_id` int(10) NOT NULL AUTO_INCREMENT,
  `Agama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Agama_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of agama
-- ----------------------------
INSERT INTO `agama` VALUES (1, 'Islam');
INSERT INTO `agama` VALUES (2, 'Kristen');
INSERT INTO `agama` VALUES (3, 'Hindu');
INSERT INTO `agama` VALUES (4, 'Budha');
INSERT INTO `agama` VALUES (5, 'Lainnya');

-- ----------------------------
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES (1, 'admin1', '123');
INSERT INTO `pengguna` VALUES (2, 'admin2', '456');
INSERT INTO `pengguna` VALUES (3, 'admin3', NULL);
INSERT INTO `pengguna` VALUES (4, 'admin4', '1111');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `ID` int(11) NOT NULL,
  `Username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Password` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'admin', 'd82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892', 'admin@gmail.com');

-- ----------------------------
-- Table structure for telepon
-- ----------------------------
DROP TABLE IF EXISTS `telepon`;
CREATE TABLE `telepon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Jabatan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Foto` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Nama` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Pangkat_korps` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Agama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Kesatuan` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Matra` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Alamat_kantor` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `No_telepon_kantor_1` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `No_telepon_kantor_2` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `No_fax` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Alamat_Rumah` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `No_telepon_rumah` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `No_hp` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Email` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of telepon
-- ----------------------------
INSERT INTO `telepon` VALUES (1, 'Panglima TNI', '', 'Hadi Tjahjanto    S.I.P', 'Marsekal TNI', 'Islam', 'Mabes TNI', 'TNI AU', 'Cilangkap', '021-84595007', '02131938033', '0218456805', 'JL.Taman Suropati No. 10 Menteng Jakarta Pusat', '', '', '');
INSERT INTO `telepon` VALUES (2, 'Kasum TNI', '', 'Joni Supriyanto', 'Letjen TNI', 'Islam', 'Mabes TNI', 'TNI AD', 'Cilangkap', '021-3813227', '0213813227', '', 'Kelapa Dua Wetan Rt.05/08 Ciracas Jakarta TIMUR', '', '', '');
INSERT INTO `telepon` VALUES (3, 'Irjen TNI', '', 'Muhamad Herindra     M.A. M.Sc', 'Letjen TNI', 'Islam', 'Mabes TNI', 'TNI AD', 'Cilangkap', '021-84591240', '', '', 'jl.Garuda Mas Blok D 5 No.3 Tanjung barat Jakarta Selata', '', '', '');
INSERT INTO `telepon` VALUES (4, 'Aslog Panglima TNI', '', 'KuKuh Sudibyanto', 'Lasda TNI', 'Islam', 'Mabes TNI', 'TNI-AL', 'Cilangkap', '021-84591270', '', '', 'Kompklek pati Jl.mawar 3 no.3 Jati karya Jati sampurna Bekasi', '', '', '');
INSERT INTO `telepon` VALUES (5, 'Koorsahli Panglima TNI', '', 'Nono Suharsono', 'Mayjen TNI', 'Islam', 'Mabes TNI', 'TNI-AD', 'Cilangkap', '021-84595044', '02184595097', '02184595097', 'Perumahan Permata Palem Blok F No. 22-23.jl.Kayu Manis Kel.Cirimekar Cibinong-Bogor', '', '', '');
INSERT INTO `telepon` VALUES (6, 'Asrenum Panglima TNI', '', 'Agung prasetiawan     M.A.P', 'Laksdya TNI', 'Islam', 'Mabes TNI', 'TNI-AL', 'Cilangkap', '021-84595057', '', '0218700165', 'perumahan Sakura Regency J.16 Jati Asih Bekasi', '', '081330098814', '');
INSERT INTO `telepon` VALUES (7, 'Asintel Panglima TNI', '', 'Andjar Wiratma', 'Mayjen TNI', 'Islam', 'Mabes TNI', 'TNI-AD', 'Cilangkap', '021-84595420', '02184595440', '02184591647', 'Perumahan Bukit permai Jl.Tidar No.8 B-2 Cibubur- ciracas jakarta-timur', '', '', '');
INSERT INTO `telepon` VALUES (8, 'Asops Panglima TNI', '', 'Ganip Warsito     S.E.  M.M.', 'Mayjen TNI', 'Islam', 'Mabes TNI', 'TNIAD', 'Cilangkap', '021-84595068', '', '0218700163', 'Jl.Otista III komp.I 17-17 RT.2 Cipinang-cempedak Jatinegara', '', '', '');
INSERT INTO `telepon` VALUES (9, 'Aspers Panglima TNI', '', 'Dedy perandi', 'Marsda TNI', 'Islam', 'Mabes TNI', 'TNI-AU', 'Cilangkap', '021-84591240', '', '0218718801', 'Jl.Suhandi no.1 Komplek trikora Halim PK jakarta-timur', '', '081319941985', '');
INSERT INTO `telepon` VALUES (10, 'Aster Panglima TNI', '', 'Geoge Elnadus Supit     S.Sos', 'Mayjen TNI', 'Islam', 'Mabes TNI', 'TNI-AD', 'Cilangkap', '021-84595075', '02184595077', '', 'Jl.Otista III Blok G1 no.331 Cimpewdak. Jakarta-Timur', '', '0811459696', '');
INSERT INTO `telepon` VALUES (11, 'Danjen Akademi TNI', '', 'Aan Kurnia    S.Sos', 'Lasksdya TNI', 'Islam', 'Mabes TNI', 'TNI-AL', 'Cilangkap', '021-8718640', '0218718648', '', 'Kebayora Garden. Jl. Gandaria II Blok C No.18 Pondok Aren Kota Tangeran Selatan.Banten', '', '', '');
INSERT INTO `telepon` VALUES (12, 'Komandan Kodiklat TNI', '', 'Benny indra Pujihastono    S.I.P', 'Mayjen TNI', 'Islam', 'Mabes TNI', 'TNI-AD', 'Tangerang Selatan', '021-75884584', '0217563995', '', 'Jl.Jatiluhur II.Perumahan Baranangsiang Indah Blok D2 No.25. bogor', '', '', '');
INSERT INTO `telepon` VALUES (13, 'Kabais TNI', '', 'Kisenda Wiranatakusumah    M.A', 'Marsada TNI', 'Islam', 'Mabes TNI', 'TNI-AU', 'Kalibata', '021-7983145', '', '', 'Komp TNI Au Jl.Triloka VI Blok H-5 Pancoran Jakarta-Selatan', '', '08121055354', '');
INSERT INTO `telepon` VALUES (14, 'Kapuspen TNI ', '', 'Sisriadi', 'Mayjen TNI', 'Islam', 'Mabes TNI', 'TNI-AD', 'Cilangkap', '021-8451273', '', '', 'Komplek Pati Jl.melati raya III No.24 Jati Karya. Berkasi', '', '0818820113', '');
INSERT INTO `telepon` VALUES (15, 'Danpom TNI', '', 'Dedy Iswanto   S.E.   S.H.', 'Mayjen TNI', 'Kristen', 'Mabes TNI', 'TNI-AD', 'Cilangkap', '021-84591185', '', '', 'komplek Perumahan Puspomad Jl.Raya Ceger No.F1 cip ayung Jakarta-timur', '', '08122007822', '');
INSERT INTO `telepon` VALUES (16, 'Kapusku TNI', '', 'Drs.Imam Baidhowi   M.M.', 'Brigjen TNI', 'Islam', 'Mabes TNI', 'TNI-AD', 'Cilangkap', '021-84595551', '', '', 'Perum raffles hills M1 No.10 Jl.alternatif Cibubur', '0218010725', '081295513578', '');
INSERT INTO `telepon` VALUES (17, 'Kapusinfolahta TNI ', '', 'Pujiyanto S.   S.I.P', 'Marsma TNI', 'Islam', 'Mabes TNI', 'TNI-AU', 'Cilangkap', '021-84595416', '02184595416', '', 'Komplek TNI AU Rajawali Jl.Cendrawasih Baru d10 Halim PK Jaktim', '', '08129066302', '');
INSERT INTO `telepon` VALUES (18, 'Kapuskersin TNI ', '', 'Didik Kurniawan     S.T.  M.Si', 'Laksma TNI', 'Islam', 'Mabes TNI', 'TNI-AL', 'Cilangkap', '021-8452734', '', '0218455169', 'Green malaka Resindence Jl.Malaka No.27 Blok B-16 Mujul.Cipayung Jakarta-timr 13850', '', '081932837919', '');
INSERT INTO `telepon` VALUES (19, 'Dansatsiber TNI', '', 'Markos', 'Brigjen TNI', 'Islam', 'Mabes TNI', 'TNI-AD', 'Cilangkap', '021-8459913', '', '', 'Jl.Branjangan II No. 27 RT.011/010 Kel.Halim PK Makasar-Jaktim', '', '081360672006', '');
INSERT INTO `telepon` VALUES (20, 'Kasetum TNI', 'upload/images/7848-2019-10-17.jpg', 'Kukuh Surya   S.S.   M.Tr.(Han)', 'Brigjen TNI', 'Islam', 'Mabes TNI', 'TNI-AD', 'Cilangkap', '021-84591272', '0218457556', '-', 'Jl.Kiajang No.38 A Rt. 003 Rw.009 Gandaria Utara . Kebayoran Baru', '-', '-', '-');

SET FOREIGN_KEY_CHECKS = 1;
