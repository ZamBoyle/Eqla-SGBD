/* On utilise l'encodage UTF8 */
charset utf8;

/*
CREATION DE LA DB ON LA SUPPRIME SI ELLE EXISTE DEJA
Ca permettra de vite relancer le script de création et vous permettre de corriger ici.
Le plus simple est donc de supprimer la base de données pour vous faire gagner du temps.
*/
DROP DATABASE IF EXISTS Pays;
CREATE DATABASE Pays;

/* On Change de base de données */
use Pays;

/**
 * Continents and Countries MySQL Tables compiled from Wikipedia, Braintree Payments documentation 
 * and a couple other places I don't recall at the moment.  This data is compatible with the Braintree
 * Payment API as of Dec 2011
 *
 * Compiled by Steve Kamerman, 2011
 */

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `continent`
-- ----------------------------
DROP TABLE IF EXISTS `continent`;
CREATE TABLE `continent` (
  `code` char(2) NOT NULL COMMENT 'Continent code',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of continents
-- ----------------------------
INSERT INTO `continent` VALUES ('AF', 'Africa');
INSERT INTO `continent` VALUES ('AN', 'Antarctica');
INSERT INTO `continent` VALUES ('AS', 'Asia');
INSERT INTO `continent` VALUES ('EU', 'Europe');
INSERT INTO `continent` VALUES ('NA', 'North America');
INSERT INTO `continent` VALUES ('OC', 'Oceania');
INSERT INTO `continent` VALUES ('SA', 'South America');

DROP TABLE IF EXISTS `Pays`;
CREATE TABLE `Pays` (
  `Id_Pays` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL COMMENT 'Two-letter country code (ISO 3166-1 alpha-2)',
  `name` varchar(64) NOT NULL COMMENT 'English country name',
  `full_name` varchar(128) NOT NULL COMMENT 'Full English country name',
  `iso3` char(3) NOT NULL COMMENT 'Three-letter country code (ISO 3166-1 alpha-3)',
  `number` smallint(3) unsigned zerofill NOT NULL COMMENT 'Three-digit country number (ISO 3166-1 numeric)',
  `continent` char(2) NOT NULL,
  `display_order` int(3) NOT NULL DEFAULT '900',
  PRIMARY KEY (`Id_Pays`),
  UNIQUE KEY `idx_code` (`code`) USING BTREE,
  KEY `idx_continent_code` (`continent`) USING BTREE,
  CONSTRAINT `countries_ibfk_1` FOREIGN KEY (`continent`) REFERENCES `continent` (`code`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `Pays` VALUES ('1', 'AD', 'Andorra', 'Principality of Andorra', 'AND', '020', 'EU', '7');
INSERT INTO `Pays` VALUES ('2', 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', '784', 'AS', '232');
INSERT INTO `Pays` VALUES ('3', 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', '004', 'AS', '3');
INSERT INTO `Pays` VALUES ('4', 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', '028', 'NA', '11');
INSERT INTO `Pays` VALUES ('5', 'AI', 'Anguilla', 'Anguilla', 'AIA', '660', 'NA', '9');
INSERT INTO `Pays` VALUES ('6', 'AL', 'Albania', 'Republic of Albania', 'ALB', '008', 'EU', '4');
INSERT INTO `Pays` VALUES ('7', 'AM', 'Armenia', 'Republic of Armenia', 'ARM', '051', 'AS', '13');
INSERT INTO `Pays` VALUES ('8', 'AN', 'Netherlands Antilles', 'Netherlands Antilles', 'ANT', '530', 'NA', '157');
INSERT INTO `Pays` VALUES ('9', 'AO', 'Angola', 'Republic of Angola', 'AGO', '024', 'AF', '8');
INSERT INTO `Pays` VALUES ('10', 'AQ', 'Antarctica', 'Antarctica (the territory South of 60 deg S)', 'ATA', '010', 'AN', '10');
INSERT INTO `Pays` VALUES ('11', 'AR', 'Argentina', 'Argentine Republic', 'ARG', '032', 'SA', '12');
INSERT INTO `Pays` VALUES ('12', 'AS', 'American Samoa', 'American Samoa', 'ASM', '016', 'OC', '6');
INSERT INTO `Pays` VALUES ('13', 'AT', 'Austria', 'Republic of Austria', 'AUT', '040', 'EU', '16');
INSERT INTO `Pays` VALUES ('14', 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', '036', 'OC', '15');
INSERT INTO `Pays` VALUES ('15', 'AW', 'Aruba', 'Aruba', 'ABW', '533', 'NA', '14');
INSERT INTO `Pays` VALUES ('16', 'AX', 'Åland', 'Åland Islands', 'ALA', '248', 'EU', '246');
INSERT INTO `Pays` VALUES ('17', 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', '031', 'AS', '17');
INSERT INTO `Pays` VALUES ('18', 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', '070', 'EU', '29');
INSERT INTO `Pays` VALUES ('19', 'BB', 'Barbados', 'Barbados', 'BRB', '052', 'NA', '21');
INSERT INTO `Pays` VALUES ('20', 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', '050', 'AS', '20');
INSERT INTO `Pays` VALUES ('21', 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', '056', 'EU', '23');
INSERT INTO `Pays` VALUES ('22', 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', '854', 'AF', '37');
INSERT INTO `Pays` VALUES ('23', 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', '100', 'EU', '36');
INSERT INTO `Pays` VALUES ('24', 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', '048', 'AS', '19');
INSERT INTO `Pays` VALUES ('25', 'BI', 'Burundi', 'Republic of Burundi', 'BDI', '108', 'AF', '38');
INSERT INTO `Pays` VALUES ('26', 'BJ', 'Benin', 'Republic of Benin', 'BEN', '204', 'AF', '25');
INSERT INTO `Pays` VALUES ('27', 'BL', 'Saint Barthélemy', 'Saint Barthelemy', 'BLM', '652', 'NA', '185');
INSERT INTO `Pays` VALUES ('28', 'BM', 'Bermuda', 'Bermuda', 'BMU', '060', 'NA', '26');
INSERT INTO `Pays` VALUES ('29', 'BN', 'Brunei Darussalam', 'Brunei Darussalam', 'BRN', '096', 'AS', '35');
INSERT INTO `Pays` VALUES ('30', 'BO', 'Bolivia', 'Republic of Bolivia', 'BOL', '068', 'SA', '28');
INSERT INTO `Pays` VALUES ('31', 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', '076', 'SA', '32');
INSERT INTO `Pays` VALUES ('32', 'BS', 'Bahamas', 'Commonwealth of the Bahamas', 'BHS', '044', 'NA', '18');
INSERT INTO `Pays` VALUES ('33', 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', '064', 'AS', '27');
INSERT INTO `Pays` VALUES ('34', 'BV', 'Bouvet Island', 'Bouvet Island (Bouvetoya)', 'BVT', '074', 'AN', '31');
INSERT INTO `Pays` VALUES ('35', 'BW', 'Botswana', 'Republic of Botswana', 'BWA', '072', 'AF', '30');
INSERT INTO `Pays` VALUES ('36', 'BY', 'Belarus', 'Republic of Belarus', 'BLR', '112', 'EU', '22');
INSERT INTO `Pays` VALUES ('37', 'BZ', 'Belize', 'Belize', 'BLZ', '084', 'NA', '24');
INSERT INTO `Pays` VALUES ('38', 'CA', 'Canada', 'Canada', 'CAN', '124', 'NA', '2');
INSERT INTO `Pays` VALUES ('39', 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', '166', 'AS', '48');
INSERT INTO `Pays` VALUES ('40', 'CD', 'Congo (Kinshasa)', 'Democratic Republic of the Congo', 'COD', '180', 'AF', '51');
INSERT INTO `Pays` VALUES ('41', 'CF', 'Central African Republic', 'Central African Republic', 'CAF', '140', 'AF', '43');
INSERT INTO `Pays` VALUES ('42', 'CG', 'Congo (Brazzaville)', 'Republic of the Congo', 'COG', '178', 'AF', '52');
INSERT INTO `Pays` VALUES ('43', 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', '756', 'EU', '214');
INSERT INTO `Pays` VALUES ('44', 'CI', 'Côte d\'Ivoire', 'Republic of Cote d\'Ivoire', 'CIV', '384', 'AF', '55');
INSERT INTO `Pays` VALUES ('45', 'CK', 'Cook Islands', 'Cook Islands', 'COK', '184', 'OC', '53');
INSERT INTO `Pays` VALUES ('46', 'CL', 'Chile', 'Republic of Chile', 'CHL', '152', 'SA', '45');
INSERT INTO `Pays` VALUES ('47', 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', '120', 'AF', '40');
INSERT INTO `Pays` VALUES ('48', 'CN', 'China', 'People\'s Republic of China', 'CHN', '156', 'AS', '46');
INSERT INTO `Pays` VALUES ('49', 'CO', 'Colombia', 'Republic of Colombia', 'COL', '170', 'SA', '49');
INSERT INTO `Pays` VALUES ('50', 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', '188', 'NA', '54');
INSERT INTO `Pays` VALUES ('51', 'CU', 'Cuba', 'Republic of Cuba', 'CUB', '192', 'NA', '57');
INSERT INTO `Pays` VALUES ('52', 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', '132', 'AF', '41');
INSERT INTO `Pays` VALUES ('53', 'CX', 'Christmas Island', 'Christmas Island', 'CXR', '162', 'AS', '47');
INSERT INTO `Pays` VALUES ('54', 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', '196', 'AS', '58');
INSERT INTO `Pays` VALUES ('55', 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', '203', 'EU', '59');
INSERT INTO `Pays` VALUES ('56', 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', '276', 'EU', '82');
INSERT INTO `Pays` VALUES ('57', 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', '262', 'AF', '61');
INSERT INTO `Pays` VALUES ('58', 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', '208', 'EU', '60');
INSERT INTO `Pays` VALUES ('59', 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', '212', 'NA', '62');
INSERT INTO `Pays` VALUES ('60', 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', '214', 'NA', '63');
INSERT INTO `Pays` VALUES ('61', 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', '012', 'AF', '5');
INSERT INTO `Pays` VALUES ('62', 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', '218', 'SA', '64');
INSERT INTO `Pays` VALUES ('63', 'EE', 'Estonia', 'Republic of Estonia', 'EST', '233', 'EU', '69');
INSERT INTO `Pays` VALUES ('64', 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', '818', 'AF', '65');
INSERT INTO `Pays` VALUES ('65', 'EH', 'Western Sahara', 'Western Sahara', 'ESH', '732', 'AF', '242');
INSERT INTO `Pays` VALUES ('66', 'ER', 'Eritrea', 'State of Eritrea', 'ERI', '232', 'AF', '68');
INSERT INTO `Pays` VALUES ('67', 'ES', 'Spain', 'Kingdom of Spain', 'ESP', '724', 'EU', '207');
INSERT INTO `Pays` VALUES ('68', 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', '231', 'AF', '70');
INSERT INTO `Pays` VALUES ('69', 'FI', 'Finland', 'Republic of Finland', 'FIN', '246', 'EU', '74');
INSERT INTO `Pays` VALUES ('70', 'FJ', 'Fiji', 'Republic of the Fiji Islands', 'FJI', '242', 'OC', '73');
INSERT INTO `Pays` VALUES ('71', 'FK', 'Falkland Islands', 'Falkland Islands (Malvinas)', 'FLK', '238', 'SA', '71');
INSERT INTO `Pays` VALUES ('72', 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', '583', 'OC', '144');
INSERT INTO `Pays` VALUES ('73', 'FO', 'Faroe Islands', 'Faroe Islands', 'FRO', '234', 'EU', '72');
INSERT INTO `Pays` VALUES ('74', 'FR', 'France', 'French Republic', 'FRA', '250', 'EU', '75');
INSERT INTO `Pays` VALUES ('75', 'GA', 'Gabon', 'Gabonese Republic', 'GAB', '266', 'AF', '79');
INSERT INTO `Pays` VALUES ('76', 'GB', 'United Kingdom', 'United Kingdom of Great Britain & Northern Ireland', 'GBR', '826', 'EU', '233');
INSERT INTO `Pays` VALUES ('77', 'GD', 'Grenada', 'Grenada', 'GRD', '308', 'NA', '87');
INSERT INTO `Pays` VALUES ('78', 'GE', 'Georgia', 'Georgia', 'GEO', '268', 'AS', '81');
INSERT INTO `Pays` VALUES ('79', 'GF', 'French Guiana', 'French Guiana', 'GUF', '254', 'SA', '76');
INSERT INTO `Pays` VALUES ('80', 'GG', 'Guernsey', 'Bailiwick of Guernsey', 'GGY', '831', 'EU', '91');
INSERT INTO `Pays` VALUES ('81', 'GH', 'Ghana', 'Republic of Ghana', 'GHA', '288', 'AF', '83');
INSERT INTO `Pays` VALUES ('82', 'GI', 'Gibraltar', 'Gibraltar', 'GIB', '292', 'EU', '84');
INSERT INTO `Pays` VALUES ('83', 'GL', 'Greenland', 'Greenland', 'GRL', '304', 'NA', '86');
INSERT INTO `Pays` VALUES ('84', 'GM', 'Gambia', 'Republic of the Gambia', 'GMB', '270', 'AF', '80');
INSERT INTO `Pays` VALUES ('85', 'GN', 'Guinea', 'Republic of Guinea', 'GIN', '324', 'AF', '92');
INSERT INTO `Pays` VALUES ('86', 'GP', 'Guadeloupe', 'Guadeloupe', 'GLP', '312', 'NA', '88');
INSERT INTO `Pays` VALUES ('87', 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', '226', 'AF', '67');
INSERT INTO `Pays` VALUES ('88', 'GR', 'Greece', 'Hellenic Republic Greece', 'GRC', '300', 'EU', '85');
INSERT INTO `Pays` VALUES ('89', 'GS', 'South Georgia and South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'AN', '206');
INSERT INTO `Pays` VALUES ('90', 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', '320', 'NA', '90');
INSERT INTO `Pays` VALUES ('91', 'GU', 'Guam', 'Guam', 'GUM', '316', 'OC', '89');
INSERT INTO `Pays` VALUES ('92', 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', '624', 'AF', '93');
INSERT INTO `Pays` VALUES ('93', 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', '328', 'SA', '94');
INSERT INTO `Pays` VALUES ('94', 'HK', 'Hong Kong', 'Hong Kong Special Administrative Region of China', 'HKG', '344', 'AS', '99');
INSERT INTO `Pays` VALUES ('95', 'HM', 'Heard and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', '334', 'AN', '96');
INSERT INTO `Pays` VALUES ('96', 'HN', 'Honduras', 'Republic of Honduras', 'HND', '340', 'NA', '98');
INSERT INTO `Pays` VALUES ('97', 'HR', 'Croatia', 'Republic of Croatia', 'HRV', '191', 'EU', '56');
INSERT INTO `Pays` VALUES ('98', 'HT', 'Haiti', 'Republic of Haiti', 'HTI', '332', 'NA', '95');
INSERT INTO `Pays` VALUES ('99', 'HU', 'Hungary', 'Republic of Hungary', 'HUN', '348', 'EU', '100');
INSERT INTO `Pays` VALUES ('100', 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', '360', 'AS', '103');
INSERT INTO `Pays` VALUES ('101', 'IE', 'Ireland', 'Ireland', 'IRL', '372', 'EU', '106');
INSERT INTO `Pays` VALUES ('102', 'IL', 'Israel', 'State of Israel', 'ISR', '376', 'AS', '108');
INSERT INTO `Pays` VALUES ('103', 'IM', 'Isle of Man', 'Isle of Man', 'IMN', '833', 'EU', '107');
INSERT INTO `Pays` VALUES ('104', 'IN', 'India', 'Republic of India', 'IND', '356', 'AS', '102');
INSERT INTO `Pays` VALUES ('105', 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory (Chagos Archipelago)', 'IOT', '086', 'AS', '33');
INSERT INTO `Pays` VALUES ('106', 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', '368', 'AS', '105');
INSERT INTO `Pays` VALUES ('107', 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', '364', 'AS', '104');
INSERT INTO `Pays` VALUES ('108', 'IS', 'Iceland', 'Republic of Iceland', 'ISL', '352', 'EU', '101');
INSERT INTO `Pays` VALUES ('109', 'IT', 'Italy', 'Italian Republic', 'ITA', '380', 'EU', '109');
INSERT INTO `Pays` VALUES ('110', 'JE', 'Jersey', 'Bailiwick of Jersey', 'JEY', '832', 'EU', '112');
INSERT INTO `Pays` VALUES ('111', 'JM', 'Jamaica', 'Jamaica', 'JAM', '388', 'NA', '110');
INSERT INTO `Pays` VALUES ('112', 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', '400', 'AS', '113');
INSERT INTO `Pays` VALUES ('113', 'JP', 'Japan', 'Japan', 'JPN', '392', 'AS', '111');
INSERT INTO `Pays` VALUES ('114', 'KE', 'Kenya', 'Republic of Kenya', 'KEN', '404', 'AF', '115');
INSERT INTO `Pays` VALUES ('115', 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', '417', 'AS', '120');
INSERT INTO `Pays` VALUES ('116', 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', '116', 'AS', '39');
INSERT INTO `Pays` VALUES ('117', 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', '296', 'OC', '116');
INSERT INTO `Pays` VALUES ('118', 'KM', 'Comoros', 'Union of the Comoros', 'COM', '174', 'AF', '50');
INSERT INTO `Pays` VALUES ('119', 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Kitts and Nevis', 'KNA', '659', 'NA', '187');
INSERT INTO `Pays` VALUES ('120', 'KP', 'Korea, North', 'Democratic People\'s Republic of Korea', 'PRK', '408', 'AS', '117');
INSERT INTO `Pays` VALUES ('121', 'KR', 'Korea, South', 'Republic of Korea', 'KOR', '410', 'AS', '118');
INSERT INTO `Pays` VALUES ('122', 'KW', 'Kuwait', 'State of Kuwait', 'KWT', '414', 'AS', '119');
INSERT INTO `Pays` VALUES ('123', 'KY', 'Cayman Islands', 'Cayman Islands', 'CYM', '136', 'NA', '42');
INSERT INTO `Pays` VALUES ('124', 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', '398', 'AS', '114');
INSERT INTO `Pays` VALUES ('125', 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', '418', 'AS', '121');
INSERT INTO `Pays` VALUES ('126', 'LB', 'Lebanon', 'Lebanese Republic', 'LBN', '422', 'AS', '123');
INSERT INTO `Pays` VALUES ('127', 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', '662', 'NA', '188');
INSERT INTO `Pays` VALUES ('128', 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', '438', 'EU', '127');
INSERT INTO `Pays` VALUES ('129', 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', '144', 'AS', '208');
INSERT INTO `Pays` VALUES ('130', 'LR', 'Liberia', 'Republic of Liberia', 'LBR', '430', 'AF', '125');
INSERT INTO `Pays` VALUES ('131', 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', '426', 'AF', '124');
INSERT INTO `Pays` VALUES ('132', 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', '440', 'EU', '128');
INSERT INTO `Pays` VALUES ('133', 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', '442', 'EU', '129');
INSERT INTO `Pays` VALUES ('134', 'LV', 'Latvia', 'Republic of Latvia', 'LVA', '428', 'EU', '122');
INSERT INTO `Pays` VALUES ('135', 'LY', 'Libya', 'Libyan Arab Jamahiriya', 'LBY', '434', 'AF', '126');
INSERT INTO `Pays` VALUES ('136', 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', '504', 'AF', '150');
INSERT INTO `Pays` VALUES ('137', 'MC', 'Monaco', 'Principality of Monaco', 'MCO', '492', 'EU', '146');
INSERT INTO `Pays` VALUES ('138', 'MD', 'Moldova', 'Republic of Moldova', 'MDA', '498', 'EU', '145');
INSERT INTO `Pays` VALUES ('139', 'ME', 'Montenegro', 'Republic of Montenegro', 'MNE', '499', 'EU', '148');
INSERT INTO `Pays` VALUES ('140', 'MF', 'Saint Martin (French part)', 'Saint Martin', 'MAF', '663', 'NA', '189');
INSERT INTO `Pays` VALUES ('141', 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', '450', 'AF', '132');
INSERT INTO `Pays` VALUES ('142', 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', '584', 'OC', '138');
INSERT INTO `Pays` VALUES ('143', 'MK', 'Macedonia', 'Republic of Macedonia', 'MKD', '807', 'EU', '131');
INSERT INTO `Pays` VALUES ('144', 'ML', 'Mali', 'Republic of Mali', 'MLI', '466', 'AF', '136');
INSERT INTO `Pays` VALUES ('145', 'MM', 'Myanmar', 'Union of Myanmar', 'MMR', '104', 'AS', '152');
INSERT INTO `Pays` VALUES ('146', 'MN', 'Mongolia', 'Mongolia', 'MNG', '496', 'AS', '147');
INSERT INTO `Pays` VALUES ('147', 'MO', 'Macau', 'Macao Special Administrative Region of China', 'MAC', '446', 'AS', '130');
INSERT INTO `Pays` VALUES ('148', 'MP', 'Northern Mariana Islands', 'Commonwealth of the Northern Mariana Islands', 'MNP', '580', 'OC', '165');
INSERT INTO `Pays` VALUES ('149', 'MQ', 'Martinique', 'Martinique', 'MTQ', '474', 'NA', '139');
INSERT INTO `Pays` VALUES ('150', 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', '478', 'AF', '140');
INSERT INTO `Pays` VALUES ('151', 'MS', 'Montserrat', 'Montserrat', 'MSR', '500', 'NA', '149');
INSERT INTO `Pays` VALUES ('152', 'MT', 'Malta', 'Republic of Malta', 'MLT', '470', 'EU', '137');
INSERT INTO `Pays` VALUES ('153', 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', '480', 'AF', '141');
INSERT INTO `Pays` VALUES ('154', 'MV', 'Maldives', 'Republic of Maldives', 'MDV', '462', 'AS', '135');
INSERT INTO `Pays` VALUES ('155', 'MW', 'Malawi', 'Republic of Malawi', 'MWI', '454', 'AF', '133');
INSERT INTO `Pays` VALUES ('156', 'MX', 'Mexico', 'United Mexican States', 'MEX', '484', 'NA', '143');
INSERT INTO `Pays` VALUES ('157', 'MY', 'Malaysia', 'Malaysia', 'MYS', '458', 'AS', '134');
INSERT INTO `Pays` VALUES ('158', 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', '508', 'AF', '151');
INSERT INTO `Pays` VALUES ('159', 'NA', 'Namibia', 'Republic of Namibia', 'NAM', '516', 'AF', '153');
INSERT INTO `Pays` VALUES ('160', 'NC', 'New Caledonia', 'New Caledonia', 'NCL', '540', 'OC', '158');
INSERT INTO `Pays` VALUES ('161', 'NE', 'Niger', 'Republic of Niger', 'NER', '562', 'AF', '161');
INSERT INTO `Pays` VALUES ('162', 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', '574', 'OC', '164');
INSERT INTO `Pays` VALUES ('163', 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', '566', 'AF', '162');
INSERT INTO `Pays` VALUES ('164', 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', '558', 'NA', '160');
INSERT INTO `Pays` VALUES ('165', 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', '528', 'EU', '156');
INSERT INTO `Pays` VALUES ('166', 'NO', 'Norway', 'Kingdom of Norway', 'NOR', '578', 'EU', '166');
INSERT INTO `Pays` VALUES ('167', 'NP', 'Nepal', 'State of Nepal', 'NPL', '524', 'AS', '155');
INSERT INTO `Pays` VALUES ('168', 'NR', 'Nauru', 'Republic of Nauru', 'NRU', '520', 'OC', '154');
INSERT INTO `Pays` VALUES ('169', 'NU', 'Niue', 'Niue', 'NIU', '570', 'OC', '163');
INSERT INTO `Pays` VALUES ('170', 'NZ', 'New Zealand', 'New Zealand', 'NZL', '554', 'OC', '159');
INSERT INTO `Pays` VALUES ('171', 'OM', 'Oman', 'Sultanate of Oman', 'OMN', '512', 'AS', '167');
INSERT INTO `Pays` VALUES ('172', 'PA', 'Panama', 'Republic of Panama', 'PAN', '591', 'NA', '171');
INSERT INTO `Pays` VALUES ('173', 'PE', 'Peru', 'Republic of Peru', 'PER', '604', 'SA', '174');
INSERT INTO `Pays` VALUES ('174', 'PF', 'French Polynesia', 'French Polynesia', 'PYF', '258', 'OC', '77');
INSERT INTO `Pays` VALUES ('175', 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', '598', 'OC', '172');
INSERT INTO `Pays` VALUES ('176', 'PH', 'Philippines', 'Republic of the Philippines', 'PHL', '608', 'AS', '175');
INSERT INTO `Pays` VALUES ('177', 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', '586', 'AS', '168');
INSERT INTO `Pays` VALUES ('178', 'PL', 'Poland', 'Republic of Poland', 'POL', '616', 'EU', '177');
INSERT INTO `Pays` VALUES ('179', 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', '666', 'NA', '190');
INSERT INTO `Pays` VALUES ('180', 'PN', 'Pitcairn', 'Pitcairn Islands', 'PCN', '612', 'OC', '176');
INSERT INTO `Pays` VALUES ('181', 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', '630', 'NA', '179');
INSERT INTO `Pays` VALUES ('182', 'PS', 'Palestine', 'Occupied Palestinian Territory', 'PSE', '275', 'AS', '170');
INSERT INTO `Pays` VALUES ('183', 'PT', 'Portugal', 'Portuguese Republic', 'PRT', '620', 'EU', '178');
INSERT INTO `Pays` VALUES ('184', 'PW', 'Palau', 'Republic of Palau', 'PLW', '585', 'OC', '169');
INSERT INTO `Pays` VALUES ('185', 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', '600', 'SA', '173');
INSERT INTO `Pays` VALUES ('186', 'QA', 'Qatar', 'State of Qatar', 'QAT', '634', 'AS', '180');
INSERT INTO `Pays` VALUES ('187', 'RE', 'Reunion', 'Reunion', 'REU', '638', 'AF', '181');
INSERT INTO `Pays` VALUES ('188', 'RO', 'Romania', 'Romania', 'ROU', '642', 'EU', '182');
INSERT INTO `Pays` VALUES ('189', 'RS', 'Serbia', 'Republic of Serbia', 'SRB', '688', 'EU', '197');
INSERT INTO `Pays` VALUES ('190', 'RU', 'Russian Federation', 'Russian Federation', 'RUS', '643', 'EU', '183');
INSERT INTO `Pays` VALUES ('191', 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', '646', 'AF', '184');
INSERT INTO `Pays` VALUES ('192', 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', '682', 'AS', '195');
INSERT INTO `Pays` VALUES ('193', 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', '090', 'OC', '203');
INSERT INTO `Pays` VALUES ('194', 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', '690', 'AF', '198');
INSERT INTO `Pays` VALUES ('195', 'SD', 'Sudan', 'Republic of Sudan', 'SDN', '736', 'AF', '209');
INSERT INTO `Pays` VALUES ('196', 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', '752', 'EU', '213');
INSERT INTO `Pays` VALUES ('197', 'SG', 'Singapore', 'Republic of Singapore', 'SGP', '702', 'AS', '200');
INSERT INTO `Pays` VALUES ('198', 'SH', 'Saint Helena', 'Saint Helena', 'SHN', '654', 'AF', '186');
INSERT INTO `Pays` VALUES ('199', 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', '705', 'EU', '202');
INSERT INTO `Pays` VALUES ('200', 'SJ', 'Svalbard and Jan Mayen Islands', 'Svalbard & Jan Mayen Islands', 'SJM', '744', 'EU', '211');
INSERT INTO `Pays` VALUES ('201', 'SK', 'Slovakia', 'Slovakia (Slovak Republic)', 'SVK', '703', 'EU', '201');
INSERT INTO `Pays` VALUES ('202', 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', '694', 'AF', '199');
INSERT INTO `Pays` VALUES ('203', 'SM', 'San Marino', 'Republic of San Marino', 'SMR', '674', 'EU', '193');
INSERT INTO `Pays` VALUES ('204', 'SN', 'Senegal', 'Republic of Senegal', 'SEN', '686', 'AF', '196');
INSERT INTO `Pays` VALUES ('205', 'SO', 'Somalia', 'Somali Republic', 'SOM', '706', 'AF', '204');
INSERT INTO `Pays` VALUES ('206', 'SR', 'Suriname', 'Republic of Suriname', 'SUR', '740', 'SA', '210');
INSERT INTO `Pays` VALUES ('207', 'ST', 'Sao Tome and Principe', 'Democratic Republic of Sao Tome and Principe', 'STP', '678', 'AF', '194');
INSERT INTO `Pays` VALUES ('208', 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', '222', 'NA', '66');
INSERT INTO `Pays` VALUES ('209', 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', '760', 'AS', '215');
INSERT INTO `Pays` VALUES ('210', 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', '748', 'AF', '212');
INSERT INTO `Pays` VALUES ('211', 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', '796', 'NA', '228');
INSERT INTO `Pays` VALUES ('212', 'TD', 'Chad', 'Republic of Chad', 'TCD', '148', 'AF', '44');
INSERT INTO `Pays` VALUES ('213', 'TF', 'French Southern Lands', 'French Southern Territories', 'ATF', '260', 'AN', '78');
INSERT INTO `Pays` VALUES ('214', 'TG', 'Togo', 'Togolese Republic', 'TGO', '768', 'AF', '221');
INSERT INTO `Pays` VALUES ('215', 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', '764', 'AS', '219');
INSERT INTO `Pays` VALUES ('216', 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', '762', 'AS', '217');
INSERT INTO `Pays` VALUES ('217', 'TK', 'Tokelau', 'Tokelau', 'TKL', '772', 'OC', '222');
INSERT INTO `Pays` VALUES ('218', 'TL', 'Timor-Leste', 'Democratic Republic of Timor-Leste', 'TLS', '626', 'AS', '220');
INSERT INTO `Pays` VALUES ('219', 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', '795', 'AS', '227');
INSERT INTO `Pays` VALUES ('220', 'TN', 'Tunisia', 'Tunisian Republic', 'TUN', '788', 'AF', '225');
INSERT INTO `Pays` VALUES ('221', 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', '776', 'OC', '223');
INSERT INTO `Pays` VALUES ('222', 'TR', 'Turkey', 'Republic of Turkey', 'TUR', '792', 'AS', '226');
INSERT INTO `Pays` VALUES ('223', 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', '780', 'NA', '224');
INSERT INTO `Pays` VALUES ('224', 'TV', 'Tuvalu', 'Tuvalu', 'TUV', '798', 'OC', '229');
INSERT INTO `Pays` VALUES ('225', 'TW', 'Taiwan', 'Taiwan', 'TWN', '158', 'AS', '216');
INSERT INTO `Pays` VALUES ('226', 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', '834', 'AF', '218');
INSERT INTO `Pays` VALUES ('227', 'UA', 'Ukraine', 'Ukraine', 'UKR', '804', 'EU', '231');
INSERT INTO `Pays` VALUES ('228', 'UG', 'Uganda', 'Republic of Uganda', 'UGA', '800', 'AF', '230');
INSERT INTO `Pays` VALUES ('229', 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', '581', 'OC', '234');
INSERT INTO `Pays` VALUES ('230', 'US', 'United States of America', 'United States of America', 'USA', '840', 'NA', '1');
INSERT INTO `Pays` VALUES ('231', 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', '858', 'SA', '236');
INSERT INTO `Pays` VALUES ('232', 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', '860', 'AS', '237');
INSERT INTO `Pays` VALUES ('233', 'VA', 'Vatican City', 'Holy See (Vatican City State)', 'VAT', '336', 'EU', '97');
INSERT INTO `Pays` VALUES ('234', 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', '670', 'NA', '191');
INSERT INTO `Pays` VALUES ('235', 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', '862', 'SA', '239');
INSERT INTO `Pays` VALUES ('236', 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', '092', 'NA', '34');
INSERT INTO `Pays` VALUES ('237', 'VI', 'Virgin Islands, U.S.', 'United States Virgin Islands', 'VIR', '850', 'NA', '235');
INSERT INTO `Pays` VALUES ('238', 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', '704', 'AS', '240');
INSERT INTO `Pays` VALUES ('239', 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', '548', 'OC', '238');
INSERT INTO `Pays` VALUES ('240', 'WF', 'Wallis and Futuna Islands', 'Wallis and Futuna', 'WLF', '876', 'OC', '241');
INSERT INTO `Pays` VALUES ('241', 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', '882', 'OC', '192');
INSERT INTO `Pays` VALUES ('242', 'YE', 'Yemen', 'Yemen', 'YEM', '887', 'AS', '243');
INSERT INTO `Pays` VALUES ('243', 'YT', 'Mayotte', 'Mayotte', 'MYT', '175', 'AF', '142');
INSERT INTO `Pays` VALUES ('244', 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', '710', 'AF', '205');
INSERT INTO `Pays` VALUES ('245', 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', '894', 'AF', '244');
INSERT INTO `Pays` VALUES ('246', 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', '716', 'AF', '245');