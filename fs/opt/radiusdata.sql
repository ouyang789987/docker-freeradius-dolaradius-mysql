/*
 Navicat Premium Data Transfer

 Source Server         : tyl
 Source Server Type    : MySQL
 Source Server Version : 50628
 Source Host           : 10.66.116.61:3306
 Source Schema         : radius

 Target Server Type    : MySQL
 Target Server Version : 50628
 File Encoding         : 65001

 Date: 28/08/2018 17:12:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for batch_history
-- ----------------------------
DROP TABLE IF EXISTS `batch_history`;
CREATE TABLE `batch_history`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `batch_name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'an identifier name of the batch instance',
  `batch_description` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'general description of the entry',
  `hotspot_id` int(32) NULL DEFAULT 0 COMMENT 'the hotspot business id associated with this batch instance',
  `batch_status` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Pending' COMMENT 'the batch status',
  `creationdate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `batch_name`(`batch_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for billing_history
-- ----------------------------
DROP TABLE IF EXISTS `billing_history`;
CREATE TABLE `billing_history`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planId` int(32) NULL DEFAULT NULL,
  `billAmount` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `billAction` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Unavailable',
  `billPerformer` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `billReason` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `paymentmethod` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cash` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creditcardname` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creditcardnumber` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creditcardverification` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creditcardtype` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creditcardexp` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `coupon` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `discount` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `notes` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creationdate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for billing_merchant
-- ----------------------------
DROP TABLE IF EXISTS `billing_merchant`;
CREATE TABLE `billing_merchant`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `password` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mac` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `pin` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `txnId` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `planName` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `planId` int(32) NOT NULL,
  `quantity` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `business_email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `business_id` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `txn_type` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `txn_id` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payment_type` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payment_tax` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payment_cost` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payment_fee` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payment_total` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payment_currency` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `first_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `last_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payer_email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payer_address_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payer_address_street` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payer_address_country` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payer_address_country_code` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payer_address_city` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payer_address_state` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payer_address_zip` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payment_date` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment_status` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `pending_reason` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `reason_code` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `receipt_ID` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payment_address_status` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `vendor_type` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `payer_status` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for billing_paypal
-- ----------------------------
DROP TABLE IF EXISTS `billing_paypal`;
CREATE TABLE `billing_paypal`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mac` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pin` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `txnId` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planName` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planId` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `quantity` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `receiver_email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `business` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tax` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mc_gross` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mc_fee` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mc_currency` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `first_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payer_email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address_street` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address_country` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address_country_code` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address_city` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address_state` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address_zip` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payment_date` datetime(0) NULL DEFAULT NULL,
  `payment_status` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payment_address_status` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payer_status` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for billing_plans
-- ----------------------------
DROP TABLE IF EXISTS `billing_plans`;
CREATE TABLE `billing_plans`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `planName` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planId` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planType` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planTimeBank` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planTimeType` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planTimeRefillCost` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planBandwidthUp` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planBandwidthDown` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planTrafficTotal` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planTrafficUp` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planTrafficDown` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planTrafficRefillCost` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planRecurring` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planRecurringPeriod` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planRecurringBillingSchedule` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Fixed',
  `planCost` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planSetupCost` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planTax` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planCurrency` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planGroup` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planActive` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'yes',
  `creationdate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `planName`(`planName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for billing_plans_profiles
-- ----------------------------
DROP TABLE IF EXISTS `billing_plans_profiles`;
CREATE TABLE `billing_plans_profiles`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'the name of the plan',
  `profile_name` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'the profile/group name',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for billing_rates
-- ----------------------------
DROP TABLE IF EXISTS `billing_rates`;
CREATE TABLE `billing_rates`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rateName` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `rateType` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `rateCost` int(32) NOT NULL DEFAULT 0,
  `creationdate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rateName`(`rateName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Type` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Attribute` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Value` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Format` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Vendor` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `RecommendedOP` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `RecommendedTable` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `RecommendedHelper` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `RecommendedTooltip` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9726 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'ipaddr', 'AAT-Client-Primary-DNS', NULL, NULL, 'Alcatel', NULL, NULL, NULL, NULL);
INSERT INTO `dictionary` VALUES (9716, 'integer', 'WiMAX-vDHCP-RK-Lifetime', NULL, NULL, 'dictionary.wimax.wichorus', NULL, NULL, NULL, NULL);
INSERT INTO `dictionary` VALUES (9717, 'ipaddr', 'CS-Total-Octets', NULL, NULL, 'dictionary.daloradius', ':=', 'check', 'volumebytes', 'ChilliSpot Total Octets attribute for limiting the total (up/down) traffic of a user. The counter never reset.');
INSERT INTO `dictionary` VALUES (9718, 'integer', 'Qos-Lr-Inbound-Cir', NULL, NULL, 'H3C', '=', 'reply', NULL, '');
INSERT INTO `dictionary` VALUES (9719, 'integer', 'Qos-Lr-Outbound-Cir', NULL, NULL, 'H3C', '=', 'reply', NULL, '');
INSERT INTO `dictionary` VALUES (9720, 'integer', 'H3C-Input-Peak-Rate', NULL, NULL, 'H3C', '=', 'reply', NULL, '');
INSERT INTO `dictionary` VALUES (9721, 'integer', 'H3C-Input-Average-Rate', NULL, NULL, 'H3C', '=', 'reply', NULL, '');
INSERT INTO `dictionary` VALUES (9722, 'integer', 'H3C-Input-Basic-Rate', NULL, NULL, 'H3C', '=', 'reply', NULL, '');
INSERT INTO `dictionary` VALUES (9723, 'integer', 'H3C-Output-Peak-Rate', NULL, NULL, 'H3C', '=', 'reply', NULL, '');
INSERT INTO `dictionary` VALUES (9724, 'integer', 'H3C-Output-Average-Rate', NULL, NULL, 'H3C', '=', 'reply', NULL, '');
INSERT INTO `dictionary` VALUES (9725, 'integer', 'H3C-Output-Basic-Rate', NULL, NULL, 'H3C', '=', 'reply', NULL, '');
INSERT INTO `dictionary` VALUES (3392, 'ipaddr', 'Client-Id', NULL, NULL, 'dictionary.compat', NULL, NULL, NULL, NULL);
INSERT INTO `dictionary` VALUES (3393, 'integer', 'Client-Port-Id', NULL, NULL, 'dictionary.compat', NULL, NULL, NULL, NULL);
INSERT INTO `dictionary` VALUES (3394, 'integer', 'User-Service-Type', NULL, NULL, 'dictionary.compat', NULL, NULL, NULL, NULL);
INSERT INTO `dictionary` VALUES (3395, 'ipaddr', 'Framed-Address', NULL, NULL, 'dictionary.compat', NULL, NULL, NULL, NULL);
INSERT INTO `dictionary` VALUES (3396, 'ipaddr', 'Framed-Netmask', NULL, NULL, 'dictionary.compat', NULL, NULL, NULL, NULL);
INSERT INTO `dictionary` VALUES (3397, 'string', 'Framed-Filter-Id', NULL, NULL, 'dictionary.compat', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for hotspots
-- ----------------------------
DROP TABLE IF EXISTS `hotspots`;
CREATE TABLE `hotspots`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mac` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `geocode` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `owner` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_owner` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `manager` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_manager` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `company` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone1` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone2` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `companywebsite` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `companyemail` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `companycontact` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `companyphone` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creationdate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `mac`(`mac`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for invoice
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NULL DEFAULT NULL COMMENT 'user id of the userbillinfo table',
  `batch_id` int(32) NULL DEFAULT NULL COMMENT 'batch id of the batch_history table',
  `date` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status_id` int(10) NOT NULL DEFAULT 1 COMMENT 'the status of the invoice from invoice_status',
  `type_id` int(10) NOT NULL DEFAULT 1 COMMENT 'the type of the invoice from invoice_type',
  `notes` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'general notes/description',
  `creationdate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for invoice_items
-- ----------------------------
DROP TABLE IF EXISTS `invoice_items`;
CREATE TABLE `invoice_items`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(32) NOT NULL COMMENT 'invoice id of the invoices table',
  `plan_id` int(32) NULL DEFAULT NULL COMMENT 'the plan_id of the billing_plans table',
  `amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT 'the amount cost of an item',
  `tax_amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT 'the tax amount for an item',
  `total` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT 'the total amount',
  `notes` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'general notes/description',
  `creationdate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for invoice_status
-- ----------------------------
DROP TABLE IF EXISTS `invoice_status`;
CREATE TABLE `invoice_status`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `value` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT 'status value',
  `notes` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'general notes/description',
  `creationdate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of invoice_status
-- ----------------------------
INSERT INTO `invoice_status` VALUES (1, 'open', '', '2010-05-27 00:00:00', 'operator', '2010-05-27 00:00:00', 'operator');
INSERT INTO `invoice_status` VALUES (2, 'disputed', '', '2010-05-27 00:00:00', 'operator', '2010-05-27 00:00:00', 'operator');
INSERT INTO `invoice_status` VALUES (3, 'draft', '', '2010-05-27 00:00:00', 'operator', '2010-05-27 00:00:00', 'operator');
INSERT INTO `invoice_status` VALUES (4, 'sent', '', '2010-05-27 00:00:00', 'operator', '2010-05-27 00:00:00', 'operator');
INSERT INTO `invoice_status` VALUES (5, 'paid', '', '2010-05-27 00:00:00', 'operator', '2010-05-27 00:00:00', 'operator');
INSERT INTO `invoice_status` VALUES (6, 'partial', '', '2010-05-27 00:00:00', 'operator', '2010-05-27 00:00:00', 'operator');

-- ----------------------------
-- Table structure for invoice_type
-- ----------------------------
DROP TABLE IF EXISTS `invoice_type`;
CREATE TABLE `invoice_type`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `value` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT 'type value',
  `notes` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'general notes/description',
  `creationdate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of invoice_type
-- ----------------------------
INSERT INTO `invoice_type` VALUES (1, 'Plans', '', '2010-05-27 00:00:00', 'operator', '2010-05-27 00:00:00', 'operator');
INSERT INTO `invoice_type` VALUES (2, 'Services', '', '2010-05-27 00:00:00', 'operator', '2010-05-27 00:00:00', 'operator');
INSERT INTO `invoice_type` VALUES (3, 'Consulting', '', '2010-05-27 00:00:00', 'operator', '2010-05-27 00:00:00', 'operator');

-- ----------------------------
-- Table structure for nas
-- ----------------------------
DROP TABLE IF EXISTS `nas`;
CREATE TABLE `nas`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nasname` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shortname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'other',
  `ports` int(5) NULL DEFAULT NULL,
  `secret` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'secret',
  `server` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `community` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'RADIUS Client',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `nasname`(`nasname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nas
-- ----------------------------
INSERT INTO `nas` VALUES (2, '120.234.29.211', '120.234.29.211', 'other', 0, 'radius', NULL, '', '');
INSERT INTO `nas` VALUES (4, '170734pw34.iok.la', '170734pw34.iok.la', 'other', 0, 'radius', NULL, '', '');



-- ----------------------------
-- Table structure for node
-- ----------------------------
DROP TABLE IF EXISTS `node`;
CREATE TABLE `node`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Time of last checkin',
  `netid` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `latitude` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `longitude` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `owner_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'node owner\'s name',
  `owner_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'node owner\'s email address',
  `owner_phone` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'node owner\'s phone number',
  `owner_address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'node owner\'s address',
  `approval_status` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'approval status: A (accepted), R (rejected), P (pending)',
  `ip` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN',
  `mac` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN',
  `uptime` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN',
  `robin` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN: robin version',
  `batman` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN: batman version',
  `memfree` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN',
  `nbs` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN: neighbor list',
  `gateway` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN: nearest gateway',
  `gw-qual` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN: quality of nearest gateway',
  `routes` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN: route to nearest gateway',
  `users` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN: current number of users',
  `kbdown` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN: downloaded kb',
  `kbup` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN: uploaded kb',
  `hops` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN: hops to gateway',
  `rank` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN: ???, not currently used for anything',
  `ssid` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN: ssid, not currently used for anything',
  `pssid` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN: pssid, not currently used for anything',
  `gateway_bit` tinyint(1) NOT NULL COMMENT 'ROBIN derivation: is this node a gateway?',
  `memlow` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN derivation: lowest reported memory on the node',
  `usershi` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'ROBIN derivation: highest number of users',
  `cpu` float NOT NULL DEFAULT 0,
  `wan_iface` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `wan_ip` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `wan_mac` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `wan_gateway` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `wifi_iface` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `wifi_ip` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `wifi_mac` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `wifi_ssid` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `wifi_key` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `wifi_channel` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lan_iface` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lan_mac` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lan_ip` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `wan_bup` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `wan_bdown` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `firmware` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `firmware_revision` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mac`(`mac`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'node database' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for operators
-- ----------------------------
DROP TABLE IF EXISTS `operators`;
CREATE TABLE `operators`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `firstname` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastname` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `title` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `department` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `company` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone1` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone2` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email1` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email2` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `messenger1` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `messenger2` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `notes` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastlogin` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationdate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operators
-- ----------------------------
INSERT INTO `operators` VALUES (6, 'administrator', 'yh82922868~', '', '', '', '', '', '', '', '', '', '', '', '', '2018-08-27 20:24:48', '2009-12-07 20:12:33', 'admin', '2017-04-28 07:04:04', 'administrator');

-- ----------------------------
-- Table structure for operators_acl
-- ----------------------------
DROP TABLE IF EXISTS `operators_acl`;
CREATE TABLE `operators_acl`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `operator_id` int(32) NOT NULL,
  `file` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `access` tinyint(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 252 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operators_acl
-- ----------------------------
INSERT INTO `operators_acl` VALUES (114, 6, 'acct_custom_query', 1);
INSERT INTO `operators_acl` VALUES (115, 6, 'acct_active', 1);
INSERT INTO `operators_acl` VALUES (116, 6, 'acct_all', 1);
INSERT INTO `operators_acl` VALUES (117, 6, 'acct_ipaddress', 1);
INSERT INTO `operators_acl` VALUES (118, 6, 'acct_username', 1);
INSERT INTO `operators_acl` VALUES (119, 6, 'acct_date', 1);
INSERT INTO `operators_acl` VALUES (120, 6, 'acct_nasipaddress', 1);
INSERT INTO `operators_acl` VALUES (121, 6, 'acct_hotspot_accounting', 1);
INSERT INTO `operators_acl` VALUES (122, 6, 'acct_hotspot_compare', 1);
INSERT INTO `operators_acl` VALUES (123, 6, 'acct_maintenance_cleanup', 1);
INSERT INTO `operators_acl` VALUES (124, 6, 'acct_maintenance_delete', 1);
INSERT INTO `operators_acl` VALUES (125, 6, 'acct_plans_usage', 1);
INSERT INTO `operators_acl` VALUES (126, 6, 'bill_history_query', 1);
INSERT INTO `operators_acl` VALUES (127, 6, 'bill_merchant_transactions', 1);
INSERT INTO `operators_acl` VALUES (128, 6, 'bill_plans_list', 1);
INSERT INTO `operators_acl` VALUES (129, 6, 'bill_plans_del', 1);
INSERT INTO `operators_acl` VALUES (130, 6, 'bill_plans_edit', 1);
INSERT INTO `operators_acl` VALUES (131, 6, 'bill_plans_new', 1);
INSERT INTO `operators_acl` VALUES (132, 6, 'bill_pos_del', 1);
INSERT INTO `operators_acl` VALUES (133, 6, 'bill_pos_list', 1);
INSERT INTO `operators_acl` VALUES (134, 6, 'bill_pos_new', 1);
INSERT INTO `operators_acl` VALUES (135, 6, 'bill_pos_edit', 1);
INSERT INTO `operators_acl` VALUES (136, 6, 'bill_rates_date', 1);
INSERT INTO `operators_acl` VALUES (137, 6, 'bill_rates_new', 1);
INSERT INTO `operators_acl` VALUES (138, 6, 'bill_rates_list', 1);
INSERT INTO `operators_acl` VALUES (139, 6, 'bill_rates_del', 1);
INSERT INTO `operators_acl` VALUES (140, 6, 'bill_rates_edit', 1);
INSERT INTO `operators_acl` VALUES (141, 6, 'config_backup_managebackups', 1);
INSERT INTO `operators_acl` VALUES (142, 6, 'config_backup_createbackups', 1);
INSERT INTO `operators_acl` VALUES (143, 6, 'config_user', 1);
INSERT INTO `operators_acl` VALUES (144, 6, 'config_db', 1);
INSERT INTO `operators_acl` VALUES (145, 6, 'config_lang', 1);
INSERT INTO `operators_acl` VALUES (146, 6, 'config_interface', 1);
INSERT INTO `operators_acl` VALUES (147, 6, 'config_logging', 1);
INSERT INTO `operators_acl` VALUES (148, 6, 'config_maint_test_user', 1);
INSERT INTO `operators_acl` VALUES (149, 6, 'config_maint_disconnect_user', 1);
INSERT INTO `operators_acl` VALUES (150, 6, 'config_operators_list', 1);
INSERT INTO `operators_acl` VALUES (151, 6, 'config_operators_new', 1);
INSERT INTO `operators_acl` VALUES (152, 6, 'config_operators_del', 1);
INSERT INTO `operators_acl` VALUES (153, 6, 'config_operators_edit', 1);
INSERT INTO `operators_acl` VALUES (154, 6, 'gis_editmap', 1);
INSERT INTO `operators_acl` VALUES (155, 6, 'gis_viewmap', 1);
INSERT INTO `operators_acl` VALUES (156, 6, 'graphs_alltime_logins', 1);
INSERT INTO `operators_acl` VALUES (157, 6, 'graphs_overall_download', 1);
INSERT INTO `operators_acl` VALUES (158, 6, 'graphs_overall_logins', 1);
INSERT INTO `operators_acl` VALUES (159, 6, 'graphs_alltime_traffic_compare', 1);
INSERT INTO `operators_acl` VALUES (160, 6, 'graphs_overall_upload', 1);
INSERT INTO `operators_acl` VALUES (161, 6, 'graphs_logged_users', 1);
INSERT INTO `operators_acl` VALUES (162, 6, 'mng_rad_attributes_import', 1);
INSERT INTO `operators_acl` VALUES (163, 6, 'mng_rad_attributes_list', 1);
INSERT INTO `operators_acl` VALUES (164, 6, 'mng_rad_attributes_edit', 1);
INSERT INTO `operators_acl` VALUES (165, 6, 'mng_rad_attributes_del', 1);
INSERT INTO `operators_acl` VALUES (166, 6, 'mng_rad_attributes_new', 1);
INSERT INTO `operators_acl` VALUES (167, 6, 'mng_rad_attributes_search', 1);
INSERT INTO `operators_acl` VALUES (168, 6, 'mng_rad_groupcheck_new', 1);
INSERT INTO `operators_acl` VALUES (169, 6, 'mng_rad_groupreply_search', 1);
INSERT INTO `operators_acl` VALUES (170, 6, 'mng_rad_groupreply_list', 1);
INSERT INTO `operators_acl` VALUES (171, 6, 'mng_rad_groupreply_edit', 1);
INSERT INTO `operators_acl` VALUES (172, 6, 'mng_rad_groupcheck_search', 1);
INSERT INTO `operators_acl` VALUES (173, 6, 'mng_rad_groupcheck_list', 1);
INSERT INTO `operators_acl` VALUES (174, 6, 'mng_rad_groupcheck_edit', 1);
INSERT INTO `operators_acl` VALUES (175, 6, 'mng_rad_groupreply_del', 1);
INSERT INTO `operators_acl` VALUES (176, 6, 'mng_rad_groupreply_new', 1);
INSERT INTO `operators_acl` VALUES (177, 6, 'mng_rad_groupcheck_del', 1);
INSERT INTO `operators_acl` VALUES (178, 6, 'mng_hs_edit', 1);
INSERT INTO `operators_acl` VALUES (179, 6, 'mng_hs_list', 1);
INSERT INTO `operators_acl` VALUES (180, 6, 'mng_hs_del', 1);
INSERT INTO `operators_acl` VALUES (181, 6, 'mng_hs_new', 1);
INSERT INTO `operators_acl` VALUES (182, 6, 'mng_rad_ippool_new', 1);
INSERT INTO `operators_acl` VALUES (183, 6, 'mng_rad_ippool_del', 1);
INSERT INTO `operators_acl` VALUES (184, 6, 'mng_rad_ippool_list', 1);
INSERT INTO `operators_acl` VALUES (185, 6, 'mng_rad_ippool_edit', 1);
INSERT INTO `operators_acl` VALUES (186, 6, 'mng_rad_nas_edit', 1);
INSERT INTO `operators_acl` VALUES (187, 6, 'mng_rad_nas_list', 1);
INSERT INTO `operators_acl` VALUES (188, 6, 'mng_rad_nas_del', 1);
INSERT INTO `operators_acl` VALUES (189, 6, 'mng_rad_nas_new', 1);
INSERT INTO `operators_acl` VALUES (190, 6, 'mng_rad_profiles_edit', 1);
INSERT INTO `operators_acl` VALUES (191, 6, 'mng_rad_profiles_del', 1);
INSERT INTO `operators_acl` VALUES (192, 6, 'mng_rad_profiles_new', 1);
INSERT INTO `operators_acl` VALUES (193, 6, 'mng_rad_profiles_duplicate', 1);
INSERT INTO `operators_acl` VALUES (194, 6, 'mng_rad_profiles_list', 1);
INSERT INTO `operators_acl` VALUES (195, 6, 'mng_rad_proxys_new', 1);
INSERT INTO `operators_acl` VALUES (196, 6, 'mng_rad_proxys_del', 1);
INSERT INTO `operators_acl` VALUES (197, 6, 'mng_rad_proxys_list', 1);
INSERT INTO `operators_acl` VALUES (198, 6, 'mng_rad_proxys_edit', 1);
INSERT INTO `operators_acl` VALUES (199, 6, 'mng_rad_realms_new', 1);
INSERT INTO `operators_acl` VALUES (200, 6, 'mng_rad_realms_del', 1);
INSERT INTO `operators_acl` VALUES (201, 6, 'mng_rad_realms_list', 1);
INSERT INTO `operators_acl` VALUES (202, 6, 'mng_rad_realms_edit', 1);
INSERT INTO `operators_acl` VALUES (203, 6, 'mng_rad_usergroup_edit', 1);
INSERT INTO `operators_acl` VALUES (204, 6, 'mng_rad_usergroup_list_user', 1);
INSERT INTO `operators_acl` VALUES (205, 6, 'mng_rad_usergroup_del', 1);
INSERT INTO `operators_acl` VALUES (206, 6, 'mng_rad_usergroup_new', 1);
INSERT INTO `operators_acl` VALUES (207, 6, 'mng_rad_usergroup_list', 1);
INSERT INTO `operators_acl` VALUES (208, 6, 'mng_search', 1);
INSERT INTO `operators_acl` VALUES (209, 6, 'mng_del', 1);
INSERT INTO `operators_acl` VALUES (210, 6, 'mng_new', 1);
INSERT INTO `operators_acl` VALUES (211, 6, 'mng_import_users', 1);
INSERT INTO `operators_acl` VALUES (212, 6, 'mng_batch', 1);
INSERT INTO `operators_acl` VALUES (213, 6, 'mng_edit', 1);
INSERT INTO `operators_acl` VALUES (214, 6, 'mng_new_quick', 1);
INSERT INTO `operators_acl` VALUES (215, 6, 'mng_list_all', 1);
INSERT INTO `operators_acl` VALUES (216, 6, 'rep_lastconnect', 1);
INSERT INTO `operators_acl` VALUES (217, 6, 'rep_online', 1);
INSERT INTO `operators_acl` VALUES (218, 6, 'rep_history', 1);
INSERT INTO `operators_acl` VALUES (219, 6, 'rep_topusers', 1);
INSERT INTO `operators_acl` VALUES (220, 6, 'rep_logs_radius', 1);
INSERT INTO `operators_acl` VALUES (221, 6, 'rep_logs_boot', 1);
INSERT INTO `operators_acl` VALUES (222, 6, 'rep_logs_system', 1);
INSERT INTO `operators_acl` VALUES (223, 6, 'rep_logs_daloradius', 1);
INSERT INTO `operators_acl` VALUES (224, 6, 'rep_stat_services', 1);
INSERT INTO `operators_acl` VALUES (225, 6, 'rep_stat_server', 1);
INSERT INTO `operators_acl` VALUES (226, 6, 'mng_rad_hunt_del', 1);
INSERT INTO `operators_acl` VALUES (227, 6, 'mng_rad_hunt_edit', 1);
INSERT INTO `operators_acl` VALUES (228, 6, 'mng_rad_hunt_list', 1);
INSERT INTO `operators_acl` VALUES (229, 6, 'mng_rad_hunt_new', 1);
INSERT INTO `operators_acl` VALUES (230, 6, 'config_mail', 1);
INSERT INTO `operators_acl` VALUES (231, 6, 'mng_batch_add', 1);
INSERT INTO `operators_acl` VALUES (232, 6, 'mng_batch_list', 1);
INSERT INTO `operators_acl` VALUES (233, 6, 'mng_batch_del', 1);
INSERT INTO `operators_acl` VALUES (234, 6, 'bill_invoice_list', 1);
INSERT INTO `operators_acl` VALUES (235, 6, 'bill_invoice_new', 1);
INSERT INTO `operators_acl` VALUES (236, 6, 'bill_invoice_edit', 1);
INSERT INTO `operators_acl` VALUES (237, 6, 'bill_invoice_del', 1);
INSERT INTO `operators_acl` VALUES (238, 6, 'bill_payment_types_new', 1);
INSERT INTO `operators_acl` VALUES (239, 6, 'bill_payment_types_edit', 1);
INSERT INTO `operators_acl` VALUES (240, 6, 'bill_payment_types_list', 1);
INSERT INTO `operators_acl` VALUES (241, 6, 'bill_payment_types_del', 1);
INSERT INTO `operators_acl` VALUES (242, 6, 'bill_payments_list', 1);
INSERT INTO `operators_acl` VALUES (243, 6, 'bill_payments_edit', 1);
INSERT INTO `operators_acl` VALUES (244, 6, 'bill_payments_new', 1);
INSERT INTO `operators_acl` VALUES (245, 6, 'bill_payments_del', 1);
INSERT INTO `operators_acl` VALUES (246, 6, 'rep_newusers', 1);
INSERT INTO `operators_acl` VALUES (247, 6, 'bill_invoice_report', 1);
INSERT INTO `operators_acl` VALUES (248, 6, 'config_reports_dashboard', 1);
INSERT INTO `operators_acl` VALUES (249, 6, 'rep_stat_ups', 1);
INSERT INTO `operators_acl` VALUES (250, 6, 'rep_stat_raid', 1);
INSERT INTO `operators_acl` VALUES (251, 6, 'rep_stat_cron', 1);

-- ----------------------------
-- Table structure for operators_acl_files
-- ----------------------------
DROP TABLE IF EXISTS `operators_acl_files`;
CREATE TABLE `operators_acl_files`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `file` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `category` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `section` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operators_acl_files
-- ----------------------------
INSERT INTO `operators_acl_files` VALUES (2, 'mng_search', 'Management', 'Users');
INSERT INTO `operators_acl_files` VALUES (3, 'mng_batch', 'Management', 'Users');
INSERT INTO `operators_acl_files` VALUES (4, 'mng_del', 'Management', 'Users');
INSERT INTO `operators_acl_files` VALUES (5, 'mng_edit', 'Management', 'Users');
INSERT INTO `operators_acl_files` VALUES (6, 'mng_new', 'Management', 'Users');
INSERT INTO `operators_acl_files` VALUES (7, 'mng_new_quick', 'Management', 'Users');
INSERT INTO `operators_acl_files` VALUES (8, 'mng_import_users', 'Management', 'Users');
INSERT INTO `operators_acl_files` VALUES (9, 'mng_list_all', 'Management', 'Users');
INSERT INTO `operators_acl_files` VALUES (10, 'mng_hs_del', 'Management', 'Hotspot');
INSERT INTO `operators_acl_files` VALUES (11, 'mng_hs_edit', 'Management', 'Hotspot');
INSERT INTO `operators_acl_files` VALUES (12, 'mng_hs_new', 'Management', 'Hotspot');
INSERT INTO `operators_acl_files` VALUES (13, 'mng_hs_list', 'Management', 'Hotspot');
INSERT INTO `operators_acl_files` VALUES (14, 'mng_rad_nas_del', 'Management', 'NAS');
INSERT INTO `operators_acl_files` VALUES (15, 'mng_rad_nas_edit', 'Management', 'NAS');
INSERT INTO `operators_acl_files` VALUES (16, 'mng_rad_nas_new', 'Management', 'NAS');
INSERT INTO `operators_acl_files` VALUES (17, 'mng_rad_nas_list', 'Management', 'NAS');
INSERT INTO `operators_acl_files` VALUES (18, 'mng_rad_usergroup_del', 'Management', 'UserGroup');
INSERT INTO `operators_acl_files` VALUES (19, 'mng_rad_usergroup_edit', 'Management', 'UserGroup');
INSERT INTO `operators_acl_files` VALUES (20, 'mng_rad_usergroup_new', 'Management', 'UserGroup');
INSERT INTO `operators_acl_files` VALUES (21, 'mng_rad_usergroup_list_user', 'Management', 'UserGroup');
INSERT INTO `operators_acl_files` VALUES (22, 'mng_rad_usergroup_list', 'Management', 'UserGroup');
INSERT INTO `operators_acl_files` VALUES (23, 'mng_rad_groupcheck_search', 'Management', 'Groups');
INSERT INTO `operators_acl_files` VALUES (24, 'mng_rad_groupcheck_del', 'Management', 'Groups');
INSERT INTO `operators_acl_files` VALUES (25, 'mng_rad_groupcheck_list', 'Management', 'Groups');
INSERT INTO `operators_acl_files` VALUES (26, 'mng_rad_groupcheck_new', 'Management', 'Groups');
INSERT INTO `operators_acl_files` VALUES (27, 'mng_rad_groupcheck_edit', 'Management', 'Groups');
INSERT INTO `operators_acl_files` VALUES (28, 'mng_rad_groupreply_search', 'Management', 'Groups');
INSERT INTO `operators_acl_files` VALUES (29, 'mng_rad_groupreply_del', 'Management', 'Groups');
INSERT INTO `operators_acl_files` VALUES (30, 'mng_rad_groupreply_list', 'Management', 'Groups');
INSERT INTO `operators_acl_files` VALUES (31, 'mng_rad_groupreply_new', 'Management', 'Groups');
INSERT INTO `operators_acl_files` VALUES (32, 'mng_rad_groupreply_edit', 'Management', 'Groups');
INSERT INTO `operators_acl_files` VALUES (33, 'mng_rad_profiles_new', 'Management', 'Profiles');
INSERT INTO `operators_acl_files` VALUES (34, 'mng_rad_profiles_edit', 'Management', 'Profiles');
INSERT INTO `operators_acl_files` VALUES (35, 'mng_rad_profiles_duplicate', 'Management', 'Profiles');
INSERT INTO `operators_acl_files` VALUES (36, 'mng_rad_profiles_del', 'Management', 'Profiles');
INSERT INTO `operators_acl_files` VALUES (37, 'mng_rad_profiles_list', 'Management', 'Profiles');
INSERT INTO `operators_acl_files` VALUES (38, 'mng_rad_attributes_list', 'Management', 'Attributes');
INSERT INTO `operators_acl_files` VALUES (39, 'mng_rad_attributes_new', 'Management', 'Attributes');
INSERT INTO `operators_acl_files` VALUES (40, 'mng_rad_attributes_edit', 'Management', 'Attributes');
INSERT INTO `operators_acl_files` VALUES (41, 'mng_rad_attributes_search', 'Management', 'Attributes');
INSERT INTO `operators_acl_files` VALUES (42, 'mng_rad_attributes_del', 'Management', 'Attributes');
INSERT INTO `operators_acl_files` VALUES (43, 'mng_rad_attributes_import', 'Management', 'Attributes');
INSERT INTO `operators_acl_files` VALUES (44, 'mng_rad_realms_list', 'Management', 'Realms');
INSERT INTO `operators_acl_files` VALUES (45, 'mng_rad_realms_new', 'Management', 'Realms');
INSERT INTO `operators_acl_files` VALUES (46, 'mng_rad_realms_edit', 'Management', 'Realms');
INSERT INTO `operators_acl_files` VALUES (47, 'mng_rad_realms_del', 'Management', 'Realms');
INSERT INTO `operators_acl_files` VALUES (48, 'mng_rad_proxys_list', 'Management', 'Proxys');
INSERT INTO `operators_acl_files` VALUES (49, 'mng_rad_proxys_new', 'Management', 'Proxys');
INSERT INTO `operators_acl_files` VALUES (50, 'mng_rad_proxys_edit', 'Management', 'Proxys');
INSERT INTO `operators_acl_files` VALUES (51, 'mng_rad_proxys_del', 'Management', 'Proxys');
INSERT INTO `operators_acl_files` VALUES (52, 'mng_rad_ippool_list', 'Management', 'IPPool');
INSERT INTO `operators_acl_files` VALUES (53, 'mng_rad_ippool_new', 'Management', 'IPPool');
INSERT INTO `operators_acl_files` VALUES (54, 'mng_rad_ippool_edit', 'Management', 'IPPool');
INSERT INTO `operators_acl_files` VALUES (55, 'mng_rad_ippool_del', 'Management', 'IPPool');
INSERT INTO `operators_acl_files` VALUES (56, 'rep_topusers', 'Reporting', 'Core');
INSERT INTO `operators_acl_files` VALUES (57, 'rep_online', 'Reporting', 'Core');
INSERT INTO `operators_acl_files` VALUES (58, 'rep_lastconnect', 'Reporting', 'Core');
INSERT INTO `operators_acl_files` VALUES (59, 'rep_history', 'Reporting', 'Core');
INSERT INTO `operators_acl_files` VALUES (60, 'rep_logs_radius', 'Reporting', 'Logs');
INSERT INTO `operators_acl_files` VALUES (61, 'rep_logs_system', 'Reporting', 'Logs');
INSERT INTO `operators_acl_files` VALUES (62, 'rep_logs_boot', 'Reporting', 'Logs');
INSERT INTO `operators_acl_files` VALUES (63, 'rep_logs_daloradius', 'Reporting', 'Logs');
INSERT INTO `operators_acl_files` VALUES (64, 'rep_stat_services', 'Reporting', 'Status');
INSERT INTO `operators_acl_files` VALUES (65, 'rep_stat_server', 'Reporting', 'Status');
INSERT INTO `operators_acl_files` VALUES (66, 'acct_active', 'Accounting', 'General');
INSERT INTO `operators_acl_files` VALUES (67, 'acct_username', 'Accounting', 'General');
INSERT INTO `operators_acl_files` VALUES (68, 'acct_all', 'Accounting', 'General');
INSERT INTO `operators_acl_files` VALUES (69, 'acct_date', 'Accounting', 'General');
INSERT INTO `operators_acl_files` VALUES (70, 'acct_ipaddress', 'Accounting', 'General');
INSERT INTO `operators_acl_files` VALUES (71, 'acct_nasipaddress', 'Accounting', 'General');
INSERT INTO `operators_acl_files` VALUES (72, 'acct_hotspot_accounting', 'Accounting', 'Hotspot');
INSERT INTO `operators_acl_files` VALUES (73, 'acct_hotspot_compare', 'Accounting', 'Hotspot');
INSERT INTO `operators_acl_files` VALUES (74, 'acct_custom_query', 'Accounting', 'Custom');
INSERT INTO `operators_acl_files` VALUES (75, 'acct_maintenance_cleanup', 'Accounting', 'Maintenance');
INSERT INTO `operators_acl_files` VALUES (76, 'acct_maintenance_delete', 'Accounting', 'Maintenance');
INSERT INTO `operators_acl_files` VALUES (77, 'bill_pos_del', 'Billing', 'POS');
INSERT INTO `operators_acl_files` VALUES (78, 'bill_pos_new', 'Billing', 'POS');
INSERT INTO `operators_acl_files` VALUES (79, 'bill_pos_list', 'Billing', 'POS');
INSERT INTO `operators_acl_files` VALUES (80, 'bill_pos_edit', 'Billing', 'POS');
INSERT INTO `operators_acl_files` VALUES (81, 'bill_rates_date', 'Billing', 'Rates');
INSERT INTO `operators_acl_files` VALUES (82, 'bill_rates_del', 'Billing', 'Rates');
INSERT INTO `operators_acl_files` VALUES (83, 'bill_rates_new', 'Billing', 'Rates');
INSERT INTO `operators_acl_files` VALUES (84, 'bill_rates_edit', 'Billing', 'Rates');
INSERT INTO `operators_acl_files` VALUES (85, 'bill_rates_list', 'Billing', 'Rates');
INSERT INTO `operators_acl_files` VALUES (86, 'bill_merchant_transactions', 'Billing', 'Merchant');
INSERT INTO `operators_acl_files` VALUES (87, 'bill_plans_del', 'Billing', 'Plans');
INSERT INTO `operators_acl_files` VALUES (88, 'bill_plans_new', 'Billing', 'Plans');
INSERT INTO `operators_acl_files` VALUES (89, 'bill_plans_edit', 'Billing', 'Plans');
INSERT INTO `operators_acl_files` VALUES (90, 'bill_plans_list', 'Billing', 'Plans');
INSERT INTO `operators_acl_files` VALUES (91, 'bill_history_query', 'Billing', 'History');
INSERT INTO `operators_acl_files` VALUES (92, 'gis_editmap', 'GIS', 'General');
INSERT INTO `operators_acl_files` VALUES (93, 'gis_viewmap', 'GIS', 'General');
INSERT INTO `operators_acl_files` VALUES (94, 'graphs_alltime_logins', 'Graphs', 'General');
INSERT INTO `operators_acl_files` VALUES (95, 'graphs_alltime_traffic_compare', 'Graphs', 'General');
INSERT INTO `operators_acl_files` VALUES (96, 'graphs_overall_download', 'Graphs', 'General');
INSERT INTO `operators_acl_files` VALUES (97, 'graphs_overall_upload', 'Graphs', 'General');
INSERT INTO `operators_acl_files` VALUES (98, 'graphs_overall_logins', 'Graphs', 'General');
INSERT INTO `operators_acl_files` VALUES (99, 'graphs_logged_users', 'Graphs', 'General');
INSERT INTO `operators_acl_files` VALUES (100, 'config_db', 'Configuration', 'Core');
INSERT INTO `operators_acl_files` VALUES (101, 'config_interface', 'Configuration', 'Core');
INSERT INTO `operators_acl_files` VALUES (102, 'config_lang', 'Configuration', 'Core');
INSERT INTO `operators_acl_files` VALUES (103, 'config_logging', 'Configuration', 'Core');
INSERT INTO `operators_acl_files` VALUES (104, 'config_maint_test_user', 'Configuration', 'Maintenance');
INSERT INTO `operators_acl_files` VALUES (105, 'config_maint_disconnect_user', 'Configuration', 'Maintenance');
INSERT INTO `operators_acl_files` VALUES (106, 'config_operators_del', 'Configuration', 'Operators');
INSERT INTO `operators_acl_files` VALUES (107, 'config_operators_list', 'Configuration', 'Operators');
INSERT INTO `operators_acl_files` VALUES (108, 'config_operators_edit', 'Configuration', 'Operators');
INSERT INTO `operators_acl_files` VALUES (109, 'config_operators_new', 'Configuration', 'Operators');
INSERT INTO `operators_acl_files` VALUES (110, 'config_backup_createbackups', 'Configuration', 'Backup');
INSERT INTO `operators_acl_files` VALUES (111, 'config_backup_managebackups', 'Configuration', 'Backup');
INSERT INTO `operators_acl_files` VALUES (112, 'acct_plans_usage', 'Accounting', 'Plans');
INSERT INTO `operators_acl_files` VALUES (113, 'config_user', 'Configuration', 'Core');
INSERT INTO `operators_acl_files` VALUES (114, 'mng_rad_hunt_del', 'Management', 'HuntGroups');
INSERT INTO `operators_acl_files` VALUES (115, 'mng_rad_hunt_edit', 'Management', 'HuntGroups');
INSERT INTO `operators_acl_files` VALUES (116, 'mng_rad_hunt_list', 'Management', 'HuntGroups');
INSERT INTO `operators_acl_files` VALUES (117, 'mng_rad_hunt_new', 'Management', 'HuntGroups');
INSERT INTO `operators_acl_files` VALUES (118, 'config_mail', 'Configuration', 'Core');
INSERT INTO `operators_acl_files` VALUES (119, 'mng_batch_add', 'Management', 'Batch');
INSERT INTO `operators_acl_files` VALUES (120, 'mng_batch_list', 'Management', 'Batch');
INSERT INTO `operators_acl_files` VALUES (121, 'mng_batch_del', 'Management', 'Batch');
INSERT INTO `operators_acl_files` VALUES (122, 'bill_invoice_list', 'Billing', 'Invoice');
INSERT INTO `operators_acl_files` VALUES (123, 'bill_invoice_new', 'Billing', 'Invoice');
INSERT INTO `operators_acl_files` VALUES (124, 'bill_invoice_edit', 'Billing', 'Invoice');
INSERT INTO `operators_acl_files` VALUES (125, 'bill_invoice_del', 'Billing', 'Invoice');
INSERT INTO `operators_acl_files` VALUES (126, 'bill_payment_types_new', 'Billing', 'Payment Types');
INSERT INTO `operators_acl_files` VALUES (127, 'bill_payment_types_edit', 'Billing', 'Payment Types');
INSERT INTO `operators_acl_files` VALUES (128, 'bill_payment_types_list', 'Billing', 'Payment Types');
INSERT INTO `operators_acl_files` VALUES (129, 'bill_payment_types_del', 'Billing', 'Payment Types');
INSERT INTO `operators_acl_files` VALUES (130, 'bill_payments_list', 'Billing', 'Payments');
INSERT INTO `operators_acl_files` VALUES (131, 'bill_payments_edit', 'Billing', 'Payments');
INSERT INTO `operators_acl_files` VALUES (132, 'bill_payments_new', 'Billing', 'Payments');
INSERT INTO `operators_acl_files` VALUES (133, 'bill_payments_del', 'Billing', 'Payments');
INSERT INTO `operators_acl_files` VALUES (134, 'rep_newusers', 'Reporting', 'Core');
INSERT INTO `operators_acl_files` VALUES (135, 'bill_invoice_report', 'Billing', 'Invoice');
INSERT INTO `operators_acl_files` VALUES (136, 'config_reports_dashboard', 'Configuration', 'Reporting');
INSERT INTO `operators_acl_files` VALUES (137, 'rep_stat_ups', 'Reporting', 'Status');
INSERT INTO `operators_acl_files` VALUES (138, 'rep_stat_raid', 'Reporting', 'Status');
INSERT INTO `operators_acl_files` VALUES (139, 'rep_stat_cron', 'Reporting', 'Status');

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(32) NOT NULL COMMENT 'invoice id of the invoices table',
  `amount` decimal(10, 2) NOT NULL COMMENT 'the amount paid',
  `date` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type_id` int(10) NOT NULL DEFAULT 1 COMMENT 'the type of the payment from payment_type',
  `notes` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'general notes/description',
  `creationdate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for payment_type
-- ----------------------------
DROP TABLE IF EXISTS `payment_type`;
CREATE TABLE `payment_type`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `value` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT 'type value',
  `notes` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'general notes/description',
  `creationdate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of payment_type
-- ----------------------------
INSERT INTO `payment_type` VALUES (1, 'Cash', '', '2010-05-27 00:00:00', 'operator', '2010-05-27 00:00:00', 'operator');
INSERT INTO `payment_type` VALUES (2, 'Check', '', '2010-05-27 00:00:00', 'operator', '2010-05-27 00:00:00', 'operator');
INSERT INTO `payment_type` VALUES (3, 'Bank Transfer', '', '2010-05-27 00:00:00', 'operator', '2010-05-27 00:00:00', 'operator');

-- ----------------------------
-- Table structure for proxys
-- ----------------------------
DROP TABLE IF EXISTS `proxys`;
CREATE TABLE `proxys`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `proxyname` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `retry_delay` int(8) NULL DEFAULT NULL,
  `retry_count` int(8) NULL DEFAULT NULL,
  `dead_time` int(8) NULL DEFAULT NULL,
  `default_fallback` int(8) NULL DEFAULT NULL,
  `creationdate` datetime(0) NULL DEFAULT NULL,
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT NULL,
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for radacct
-- ----------------------------
DROP TABLE IF EXISTS `radacct`;
CREATE TABLE `radacct`  (
  `radacctid` bigint(21) NOT NULL AUTO_INCREMENT,
  `acctsessionid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `acctuniqueid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `realm` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `nasipaddress` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nasportid` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nasporttype` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `acctstarttime` datetime(0) NULL DEFAULT NULL,
  `acctupdatetime` datetime(0) NULL DEFAULT NULL,
  `acctstoptime` datetime(0) NULL DEFAULT NULL,
  `acctinterval` int(12) NULL DEFAULT NULL,
  `acctsessiontime` int(12) UNSIGNED NULL DEFAULT NULL,
  `acctauthentic` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `connectinfo_start` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `connectinfo_stop` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `acctinputoctets` bigint(20) NULL DEFAULT NULL,
  `acctoutputoctets` bigint(20) NULL DEFAULT NULL,
  `calledstationid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `callingstationid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `acctterminatecause` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `servicetype` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `framedprotocol` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `framedipaddress` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`radacctid`) USING BTREE,
  UNIQUE INDEX `acctuniqueid`(`acctuniqueid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `framedipaddress`(`framedipaddress`) USING BTREE,
  INDEX `acctsessionid`(`acctsessionid`) USING BTREE,
  INDEX `acctsessiontime`(`acctsessiontime`) USING BTREE,
  INDEX `acctstarttime`(`acctstarttime`) USING BTREE,
  INDEX `acctinterval`(`acctinterval`) USING BTREE,
  INDEX `acctstoptime`(`acctstoptime`) USING BTREE,
  INDEX `nasipaddress`(`nasipaddress`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11883657 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of radacct
-- ----------------------------
INSERT INTO `radacct` VALUES (11883581, '0000000420180828162659001bdb7408100301', 'ccc85dd9a694fd5190f78c2972ab32e3', '50-01-d9-6e-d2-d5', '', '', '10.0.0.2', 'VLANID=3D3D301=', 'Wireless-802.11', '2018-08-29 00:28:36', '2018-08-29 01:04:37', NULL, NULL, 2161, 'RADIUS', '', '', 12594211, 158761723, '30-7B-AC-0B-B1-E0:MZ_FREE', '50-01-D9-6E-D2-D5', '', 'Framed-User', 'PPP', '192.168.250.223');
INSERT INTO `radacct` VALUES (11883582, '0000000720180828143013000076a016100326', '30a701ddae89a0cf8d5b752b7e3a9688', 'test901', '', '', '192.168.100.3', '020000000000002', 'Wireless-802.11', '2018-08-28 22:30:13', '2018-08-29 01:06:13', NULL, NULL, 9360, 'RADIUS', '', '', 1697125, 28062739, '48-BD-3D-D4-F2-20:NHBG', '54-AE-27-01-FE-F1', '', 'Framed-User', 'Ascend-ARA', '172.16.28.71');

-- ----------------------------
-- Table structure for radcheck
-- ----------------------------
DROP TABLE IF EXISTS `radcheck`;
CREATE TABLE `radcheck`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attribute` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `op` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '==',
  `value` varchar(253) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addTime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '无感知添加时间',
  `endTime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '到期时间',
  `areaId` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_2`(`username`) USING BTREE,
  INDEX `username`(`username`(32)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 285705 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of radcheck
-- ----------------------------
INSERT INTO `radcheck` VALUES (4, '0001', 'Cleartext-Password', ':=', '0001', '2018-02-26 16:25:48', NULL, NULL);
INSERT INTO `radcheck` VALUES (5, 'test901', 'Cleartext-Password', ':=', '123', '2018-02-26 16:25:48', NULL, NULL);
INSERT INTO `radcheck` VALUES (7, 'u2m', 'Cleartext-Password', ':=', '13524678', '2018-02-26 16:25:48', NULL, NULL);
INSERT INTO `radcheck` VALUES (8, 'u4m', 'Cleartext-Password', ':=', '13524678', '2018-02-26 16:25:48', NULL, NULL);
INSERT INTO `radcheck` VALUES (9, 'u6m', 'Cleartext-Password', ':=', '13524678', '2018-02-26 16:25:48', NULL, NULL);
INSERT INTO `radcheck` VALUES (10, 'u8m', 'Cleartext-Password', ':=', '13524678', '2018-02-26 16:25:48', NULL, NULL);
INSERT INTO `radcheck` VALUES (11, 'u10m', 'Cleartext-Password', ':=', '13524678', '2018-02-26 16:25:48', NULL, NULL);

-- ----------------------------
-- Table structure for radgroupcheck
-- ----------------------------
DROP TABLE IF EXISTS `radgroupcheck`;
CREATE TABLE `radgroupcheck`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `groupname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attribute` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `op` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '==',
  `value` varchar(253) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `groupname`(`groupname`(32)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of radgroupcheck
-- ----------------------------
INSERT INTO `radgroupcheck` VALUES (1, 'daloRADIUS-Disabled-Users', 'Auth-Type', ':=', 'Reject');

-- ----------------------------
-- Table structure for radgroupreply
-- ----------------------------
DROP TABLE IF EXISTS `radgroupreply`;
CREATE TABLE `radgroupreply`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `groupname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attribute` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `op` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '=',
  `value` varchar(253) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `groupname`(`groupname`(32)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of radgroupreply
-- ----------------------------

INSERT INTO `radgroupreply` VALUES (35, 'U4M', 'Framed-Filter-Id', ':=', 'U4M');
INSERT INTO `radgroupreply` VALUES (37, 'U1M', 'Framed-Filter-Id', ':=', 'U1M');
INSERT INTO `radgroupreply` VALUES (38, 'U6M', 'Framed-Filter-Id', ':=', 'U6M');
INSERT INTO `radgroupreply` VALUES (39, 'U10M', 'Framed-Filter-Id', ':=', 'U10M');
INSERT INTO `radgroupreply` VALUES (40, 'U8M', 'Framed-Filter-Id', ':=', 'U8M');
INSERT INTO `radgroupreply` VALUES (41, 'U15M', 'Framed-Filter-Id', ':=', 'U15M');
INSERT INTO `radgroupreply` VALUES (42, 'U20M', 'Framed-Filter-Id', ':=', 'U20M');

-- ----------------------------
-- Table structure for radhuntgroup
-- ----------------------------
DROP TABLE IF EXISTS `radhuntgroup`;
CREATE TABLE `radhuntgroup`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `groupname` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nasipaddress` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nasportid` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `nasipaddress`(`nasipaddress`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for radippool
-- ----------------------------
DROP TABLE IF EXISTS `radippool`;
CREATE TABLE `radippool`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pool_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `framedipaddress` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nasipaddress` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `calledstationid` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `callingstationid` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expiry_time` datetime(0) NULL DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pool_key` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `radippool_poolname_expire`(`pool_name`, `expiry_time`) USING BTREE,
  INDEX `framedipaddress`(`framedipaddress`) USING BTREE,
  INDEX `radippool_nasip_poolkey_ipaddress`(`nasipaddress`, `pool_key`, `framedipaddress`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for radpostauth
-- ----------------------------
DROP TABLE IF EXISTS `radpostauth`;
CREATE TABLE `radpostauth`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pass` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reply` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `authdate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14015032 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of radpostauth
-- ----------------------------
INSERT INTO `radpostauth` VALUES (1, 'e8-80-2e-ef-5e-56', 'E8-80-2E-EF-5E-56', 'Access-Accept', '2018-08-28 16:19:44');



-- ----------------------------
-- Table structure for radreply
-- ----------------------------
DROP TABLE IF EXISTS `radreply`;
CREATE TABLE `radreply`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attribute` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `op` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '=',
  `value` varchar(253) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`(32)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for radusergroup
-- ----------------------------
DROP TABLE IF EXISTS `radusergroup`;
CREATE TABLE `radusergroup`  (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT 1,
  UNIQUE INDEX `username_2`(`username`) USING BTREE,
  UNIQUE INDEX `username_3`(`username`) USING BTREE,
  INDEX `username`(`username`(32)) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of radusergroup
-- ----------------------------
INSERT INTO `radusergroup` VALUES ('00-08-22-08-E8-FB_U6M_WGZ', 'U6M', 0); 
INSERT INTO `radusergroup` VALUES ('null_U8M_WGZ', 'U8M', 0);
INSERT INTO `radusergroup` VALUES ('test901', 'U4M', 0);
INSERT INTO `radusergroup` VALUES ('u10m', 'g10m', 0);
INSERT INTO `radusergroup` VALUES ('U10M_WGZ', 'g10m', 0);
INSERT INTO `radusergroup` VALUES ('u4m', 'g4m', 0);
INSERT INTO `radusergroup` VALUES ('U4M_WGZ', 'g4m', 0);
INSERT INTO `radusergroup` VALUES ('u6m', 'g6m', 0);
INSERT INTO `radusergroup` VALUES ('U6M_WGZ', 'g6m', 0);
INSERT INTO `radusergroup` VALUES ('u8m', 'g8m', 0);
INSERT INTO `radusergroup` VALUES ('U8M_WGZ', 'g8m', 0);

-- ----------------------------
-- Table structure for realms
-- ----------------------------
DROP TABLE IF EXISTS `realms`;
CREATE TABLE `realms`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `realmname` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `authhost` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `accthost` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `secret` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ldflag` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nostrip` int(8) NULL DEFAULT NULL,
  `hints` int(8) NULL DEFAULT NULL,
  `notrealm` int(8) NULL DEFAULT NULL,
  `creationdate` datetime(0) NULL DEFAULT NULL,
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT NULL,
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for userbillinfo
-- ----------------------------
DROP TABLE IF EXISTS `userbillinfo`;
CREATE TABLE `userbillinfo`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `planName` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hotspot_id` int(32) NULL DEFAULT NULL,
  `hotspotlocation` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `contactperson` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `company` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `city` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `state` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `country` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `zip` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `paymentmethod` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cash` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creditcardname` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creditcardnumber` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creditcardverification` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creditcardtype` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `creditcardexp` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `notes` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `changeuserbillinfo` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lead` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `coupon` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ordertaker` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `billstatus` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lastbill` date NOT NULL DEFAULT '0000-00-00',
  `nextbill` date NOT NULL DEFAULT '0000-00-00',
  `nextinvoicedue` int(32) NULL DEFAULT NULL,
  `billdue` int(32) NULL DEFAULT NULL,
  `postalinvoice` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `faxinvoice` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `emailinvoice` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `batch_id` int(32) NULL DEFAULT NULL,
  `creationdate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `creationby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime(0) NULL DEFAULT '0000-00-00 00:00:00',
  `updateby` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `planname`(`planName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47695 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userbillinfo
-- ----------------------------
INSERT INTO `userbillinfo` VALUES (1, '0001', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '2017-04-27 07:25:51', 'administrator', NULL, NULL);
INSERT INTO `userbillinfo` VALUES (2, 'test901', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', '', '', NULL, '2017-04-27 07:26:08', 'administrator', '2018-07-23 17:56:37', 'administrator');
INSERT INTO `userbillinfo` VALUES (4, 'u2m', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', '', '', NULL, '2017-07-06 10:28:32', 'administrator', '2017-09-06 09:18:33', 'administrator');
INSERT INTO `userbillinfo` VALUES (5, 'u4m', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', '', '', NULL, '2017-07-06 10:28:48', 'administrator', '2017-09-06 09:18:48', 'administrator');
INSERT INTO `userbillinfo` VALUES (6, 'u6m', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', '', '', NULL, '2017-07-06 10:29:01', 'administrator', '2017-09-06 09:21:06', 'administrator');
INSERT INTO `userbillinfo` VALUES (7, 'u8m', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', '', '', NULL, '2017-07-06 10:29:13', 'administrator', '2017-09-06 09:21:17', 'administrator');
INSERT INTO `userbillinfo` VALUES (8, 'u10m', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', '', '', NULL, '2017-07-06 10:29:56', 'administrator', '2017-09-06 09:26:27', 'administrator');
 
-- ----------------------------
-- Procedure structure for autoDeleteMac
-- ----------------------------
DROP PROCEDURE IF EXISTS `autoDeleteMac`;
delimiter ;;
CREATE DEFINER=`root`@`%` PROCEDURE `autoDeleteMac`()
BEGIN
 
  delete from radcheck where  endTime<now() and  LENGTH(endTime)>6;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for deletemac
-- ----------------------------
DROP PROCEDURE IF EXISTS `deletemac`;
delimiter ;;
CREATE DEFINER=`root`@`%` PROCEDURE `deletemac`(IN `usermac` varchar(30))
BEGIN
	
DELETE from radcheck where `value`='Accept' and username=usermac;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertMacForUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertMacForUser`;
delimiter ;;
CREATE DEFINER=`root`@`%` PROCEDURE `insertMacForUser`(IN `uname` varchar(30),IN `usermac` varchar(30),IN `endTime` varchar(30),IN `areaId` varchar(10))
BEGIN 
     if(LOCATE('_WGZ',uname)>0 or uname='aaa' or uname='test901' or uname='0001')THEN   
      INSERT IGNORE INTO radcheck ( `username`, `attribute`, `op`, `value`,`endTime`,`areaId`)
        VALUES (usermac, 'Auth-Type', ':=', 'Accept',endTime,areaId);
     end if;

      if length(uname>17) then

			INSERT IGNORE  into radcheck (`username`,`attribute`,`op`,`value`,`endTime`,`areaId`)values(uname,'Cleartext-Password',':=','13524678',endTime,areaId);
			INSERT IGNORE  into radusergroup (`username`,`groupname`,`priority`)values(uname,replace(substring(uname,19),'_WGZ',''),'0');
			INSERT IGNORE  into radusergroup (`username`,`groupname`,`priority`)values(usermac,replace(substring(uname,19),'_WGZ',''),'0');

			end if;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insertMacForUser_old
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertMacForUser_old`;
delimiter ;;
CREATE DEFINER=`root`@`%` PROCEDURE `insertMacForUser_old`(IN `uname` varchar(30),IN `usermac` varchar(30))
BEGIN 
     if(LOCATE('_WGZ',uname)>0 or uname='aaa' or uname='test901' or uname='0001')THEN   
      INSERT IGNORE INTO radcheck ( `username`, `attribute`, `op`, `value`)
        VALUES (usermac, 'Auth-Type', ':=', 'Accept');
     end if;

      if length(uname>17) then

			INSERT IGNORE  into radcheck (`username`,`attribute`,`op`,`value`)values(uname,'Cleartext-Password',':=','13524678');
			INSERT IGNORE  into radusergroup (`username`,`groupname`,`priority`)values(uname,replace(substring(uname,19),'_WGZ',''),'0');

			end if;


END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table radcheck
-- ----------------------------
DROP TRIGGER IF EXISTS `insertUserInfo`;
delimiter ;;
CREATE TRIGGER `insertUserInfo` AFTER INSERT ON `radcheck` FOR EACH ROW begin

INSERT IGNORE INTO userinfo(`username`) VALUES (new.username);

INSERT IGNORE INTO userbillinfo(`username`) VALUES (new.username);

end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
