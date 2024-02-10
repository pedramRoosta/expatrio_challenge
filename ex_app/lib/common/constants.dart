import 'package:flutter/material.dart';

enum AssetConstants {
  logo('assets/images/logo.png'),
  cryingGirl('assets/images/crying_girl.svg'),
  studyingGirl('assets/images/studying_girl.png'),
  taxGirl('assets/images/tax_girl.jpg');

  const AssetConstants(this.path);
  final String path;
}

abstract class ColorConstants {
  static const primaryColor = Color.fromARGB(255, 67, 172, 161);
}

abstract class KeyConstants {
  static const loginEmailField = 'login_email';
  static const loginPasswordField = 'login_password';
  static const loginBtn = 'login_btn';
}

abstract class CountriesConstants {
  static const countries = [
    {"code": 'AF', "label": 'Afghanistan', "eueea": false, "phone": '+93'},
    {"code": 'AD', "label": 'Andorra', "eueea": false, "phone": '+376'},
    {
      "code": 'AG',
      "label": 'Antigua and Barbuda',
      "eueea": false,
      "phone": '+1-268'
    },
    {"code": 'AI', "label": 'Anguilla', "eueea": false, "phone": '+1-264'},
    {"code": 'AL', "label": 'Albania', "eueea": false, "phone": '+355'},
    {"code": 'AM', "label": 'Armenia', "eueea": false, "phone": '+374'},
    {"code": 'AO', "label": 'Angola', "eueea": false, "phone": '+244'},
    {"code": 'AQ', "label": 'Antarctica', "eueea": false, "phone": '+672'},
    {"code": 'AR', "label": 'Argentina', "eueea": false, "phone": '+54'},
    {
      "code": 'AS',
      "label": 'American Samoa',
      "eueea": false,
      "phone": '+1-684'
    },
    {"code": 'AT', "label": 'Austria', "eueea": true, "phone": '+43'},
    {
      "code": 'AU',
      "label": 'Australia',
      "eueea": false,
      "phone": '+61',
      "suggested": true
    },
    {"code": 'AW', "label": 'Aruba', "eueea": false, "phone": '+297'},
    {"code": 'AX', "label": 'Alland Islands', "eueea": true, "phone": '+358'},
    {"code": 'AZ', "label": 'Azerbaijan', "eueea": false, "phone": '+994'},
    {
      "code": 'BA',
      "label": 'Bosnia and Herzegovina',
      "eueea": false,
      "phone": '+387'
    },
    {"code": 'BB', "label": 'Barbados', "eueea": false, "phone": '+1-246'},
    {"code": 'BD', "label": 'Bangladesh', "eueea": false, "phone": '+880'},
    {"code": 'BE', "label": 'Belgium', "eueea": true, "phone": '+32'},
    {"code": 'BF', "label": 'Burkina Faso', "eueea": false, "phone": '+226'},
    {"code": 'BG', "label": 'Bulgaria', "eueea": true, "phone": '+359'},
    {"code": 'BH', "label": 'Bahrain', "eueea": false, "phone": '+973'},
    {"code": 'BI', "label": 'Burundi', "eueea": false, "phone": '+257'},
    {"code": 'BJ', "label": 'Benin', "eueea": false, "phone": '+229'},
    {
      "code": 'BL',
      "label": 'Saint Barthelemy',
      "eueea": false,
      "phone": '+590'
    },
    {"code": 'BM', "label": 'Bermuda', "eueea": false, "phone": '+1-441'},
    {
      "code": 'BN',
      "label": 'Brunei Darussalam',
      "eueea": false,
      "phone": '+673'
    },
    {"code": 'BO', "label": 'Bolivia', "eueea": false, "phone": '+591'},
    {"code": 'BR', "label": 'Brazil', "eueea": false, "phone": '+55'},
    {"code": 'BS', "label": 'Bahamas', "eueea": false, "phone": '+1-242'},
    {"code": 'BT', "label": 'Bhutan', "eueea": false, "phone": '+975'},
    {"code": 'BV', "label": 'Bouvet Island', "eueea": false, "phone": '+47'},
    {"code": 'BW', "label": 'Botswana', "eueea": false, "phone": '+267'},
    {"code": 'BY', "label": 'Belarus', "eueea": false, "phone": '+375'},
    {"code": 'BZ', "label": 'Belize', "eueea": false, "phone": '+501'},
    {
      "code": 'CA',
      "label": 'Canada',
      "eueea": true,
      "phone": '+1',
      "suggested": true
    },
    {
      "code": 'CC',
      "label": 'Cocos (Keeling) Islands',
      "eueea": false,
      "phone": '+61'
    },
    {
      "code": 'CG',
      "label": 'Congo, Republic of the',
      "eueea": false,
      "phone": '+242'
    },
    {
      "code": 'CF',
      "label": 'Central African Republic',
      "eueea": false,
      "phone": '+236'
    },
    {
      "code": 'CD',
      "label": 'Congo, Democratic Republic of the',
      "eueea": false,
      "phone": '+243'
    },
    {"code": 'CH', "label": 'Switzerland', "eueea": true, "phone": '+41'},
    {"code": 'CI', "label": 'Cote d\'Ivoire', "eueea": false, "phone": '+225'},
    {"code": 'CK', "label": 'Cook Islands', "eueea": false, "phone": '+682'},
    {"code": 'CL', "label": 'Chile', "eueea": false, "phone": '+56'},
    {"code": 'CM', "label": 'Cameroon', "eueea": false, "phone": '+237'},
    {"code": 'CN', "label": 'China', "eueea": false, "phone": '+86'},
    {"code": 'CO', "label": 'Colombia', "eueea": false, "phone": '+57'},
    {"code": 'CR', "label": 'Costa Rica', "eueea": false, "phone": '+506'},
    {"code": 'CU', "label": 'Cuba', "eueea": false, "phone": '+53'},
    {"code": 'CV', "label": 'Cape Verde', "eueea": false, "phone": '+238'},
    {"code": 'CW', "label": 'Curacao', "eueea": false, "phone": '+599'},
    {"code": 'CX', "label": 'Christmas Island', "eueea": false, "phone": '+61'},
    {"code": 'CY', "label": 'Cyprus', "eueea": true, "phone": '+357'},
    {"code": 'CZ', "label": 'Czech Republic', "eueea": true, "phone": '+420'},
    {
      "code": 'DE',
      "label": 'Germany',
      "eueea": true,
      "phone": '+49',
      "suggested": true
    },
    {"code": 'DJ', "label": 'Djibouti', "eueea": false, "phone": '+253'},
    {"code": 'DK', "label": 'Denmark', "eueea": true, "phone": '+45'},
    {"code": 'DM', "label": 'Dominica', "eueea": false, "phone": '+1-767'},
    {
      "code": 'DO',
      "label": 'Dominican Republic',
      "eueea": false,
      "phone": '+1-809'
    },
    {"code": 'DZ', "label": 'Algeria', "eueea": false, "phone": '+213'},
    {"code": 'EC', "label": 'Ecuador', "eueea": false, "phone": '+593'},
    {"code": 'EE', "label": 'Estonia', "eueea": true, "phone": '+372'},
    {"code": 'EG', "label": 'Egypt', "eueea": false, "phone": '+20'},
    {"code": 'EH', "label": 'Western Sahara', "eueea": false, "phone": '+212'},
    {"code": 'ER', "label": 'Eritrea', "eueea": false, "phone": '+291'},
    {"code": 'ES', "label": 'Spain', "eueea": true, "phone": '+34'},
    {"code": 'ET', "label": 'Ethiopia', "eueea": false, "phone": '+251'},
    {"code": 'FI', "label": 'Finland', "eueea": true, "phone": '+358'},
    {"code": 'FJ', "label": 'Fiji', "eueea": false, "phone": '+679'},
    {
      "code": 'FK',
      "label": 'Falkland Islands (Malvinas)',
      "eueea": false,
      "phone": '+500'
    },
    {
      "code": 'FM',
      "label": 'Micronesia, Federated States of',
      "eueea": false,
      "phone": '+691'
    },
    {"code": 'FO', "label": 'Faroe Islands', "eueea": false, "phone": '+298'},
    {
      "code": 'FR',
      "label": 'France',
      "eueea": true,
      "phone": '+33',
      "suggested": true
    },
    {"code": 'GA', "label": 'Gabon', "eueea": false, "phone": '+241'},
    {"code": 'GB', "label": 'United Kingdom', "eueea": true, "phone": '+44'},
    {"code": 'GD', "label": 'Grenada', "eueea": false, "phone": '+1-473'},
    {"code": 'GE', "label": 'Georgia', "eueea": false, "phone": '+995'},
    {"code": 'GF', "label": 'French Guiana', "eueea": false, "phone": '+594'},
    {"code": 'GG', "label": 'Guernsey', "eueea": false, "phone": '+44'},
    {"code": 'GH', "label": 'Ghana', "eueea": false, "phone": '+233'},
    {"code": 'GI', "label": 'Gibraltar', "eueea": false, "phone": '+350'},
    {"code": 'GL', "label": 'Greenland', "eueea": false, "phone": '+299'},
    {"code": 'GM', "label": 'Gambia', "eueea": false, "phone": '+220'},
    {"code": 'GN', "label": 'Guinea', "eueea": false, "phone": '+224'},
    {"code": 'GP', "label": 'Guadeloupe', "eueea": false, "phone": '+590'},
    {
      "code": 'GQ',
      "label": 'Equatorial Guinea',
      "eueea": false,
      "phone": '+240'
    },
    {"code": 'GR', "label": 'Greece', "eueea": true, "phone": '+30'},
    {
      "code": 'GS',
      "label": 'South Georgia and the South Sandwich Islands',
      "eueea": false,
      "phone": '+500'
    },
    {"code": 'GT', "label": 'Guatemala', "eueea": false, "phone": '+502'},
    {"code": 'GU', "label": 'Guam', "eueea": false, "phone": '+1-671'},
    {"code": 'GW', "label": 'Guinea-Bissau', "eueea": false, "phone": '+245'},
    {"code": 'GY', "label": 'Guyana', "eueea": false, "phone": '+592'},
    {"code": 'HK', "label": 'Hong Kong', "eueea": false, "phone": '+852'},
    {
      "code": 'HM',
      "label": 'Heard Island and McDonald Islands',
      "eueea": false,
      "phone": '+672'
    },
    {"code": 'HN', "label": 'Honduras', "eueea": false, "phone": '+504'},
    {"code": 'HR', "label": 'Croatia', "eueea": true, "phone": '+385'},
    {"code": 'HT', "label": 'Haiti', "eueea": false, "phone": '+509'},
    {"code": 'HU', "label": 'Hungary', "eueea": true, "phone": '+36'},
    {"code": 'ID', "label": 'Indonesia', "eueea": false, "phone": '+62'},
    {"code": 'IE', "label": 'Ireland', "eueea": true, "phone": '+353'},
    {"code": 'NIR', "label": 'Northern Ireland', "eueea": true, "phone": '+44'},
    {"code": 'IL', "label": 'Israel', "eueea": false, "phone": '+972'},
    {"code": 'IM', "label": 'Isle of Man', "eueea": true, "phone": '+44'},
    {"code": 'IN', "label": 'India', "eueea": false, "phone": '+91'},
    {
      "code": 'IO',
      "label": 'British Indian Ocean Territory',
      "eueea": false,
      "phone": '+246'
    },
    {"code": 'IQ', "label": 'Iraq', "eueea": false, "phone": '+964'},
    {
      "code": 'IR',
      "label": 'Iran, Islamic Republic of',
      "eueea": false,
      "phone": '+98'
    },
    {"code": 'IS', "label": 'Iceland', "eueea": true, "phone": '+354'},
    {"code": 'IT', "label": 'Italy', "eueea": true, "phone": '+39'},
    {"code": 'JE', "label": 'Jersey', "eueea": true, "phone": '+44'},
    {"code": 'JM', "label": 'Jamaica', "eueea": false, "phone": '+1-876'},
    {"code": 'JO', "label": 'Jordan', "eueea": false, "phone": '+962'},
    {
      "code": 'JP',
      "label": 'Japan',
      "eueea": false,
      "phone": '+81',
      "suggested": true
    },
    {"code": 'KE', "label": 'Kenya', "eueea": false, "phone": '+254'},
    {"code": 'KG', "label": 'Kyrgyzstan', "eueea": false, "phone": '+996'},
    {"code": 'KH', "label": 'Cambodia', "eueea": false, "phone": '+855'},
    {"code": 'KI', "label": 'Kiribati', "eueea": false, "phone": '+686'},
    {"code": 'KM', "label": 'Comoros', "eueea": false, "phone": '+269'},
    {
      "code": 'KN',
      "label": 'Saint Kitts and Nevis',
      "eueea": false,
      "phone": '+1-869'
    },
    {
      "code": 'KP',
      "label": 'Korea, Democratic People\'s Republic of',
      "eueea": false,
      "phone": '+850'
    },
    {
      "code": 'KR',
      "label": 'Korea, Republic of',
      "eueea": false,
      "phone": '+82'
    },
    {"code": 'KW', "label": 'Kuwait', "eueea": false, "phone": '+965'},
    {
      "code": 'KY',
      "label": 'Cayman Islands',
      "eueea": false,
      "phone": '+1-345'
    },
    {"code": 'KZ', "label": 'Kazakhstan', "eueea": false, "phone": '+7'},
    {
      "code": 'LA',
      "label": 'Lao People\'s Democratic Republic',
      "eueea": false,
      "phone": '+856'
    },
    {"code": 'LB', "label": 'Lebanon', "eueea": false, "phone": '+961'},
    {"code": 'LC', "label": 'Saint Lucia', "eueea": false, "phone": '+1-758'},
    {"code": 'LI', "label": 'Liechtenstein', "eueea": true, "phone": '+423'},
    {"code": 'LK', "label": 'Sri Lanka', "eueea": false, "phone": '+94'},
    {"code": 'LR', "label": 'Liberia', "eueea": false, "phone": '+231'},
    {"code": 'LS', "label": 'Lesotho', "eueea": false, "phone": '+266'},
    {"code": 'LT', "label": 'Lithuania', "eueea": true, "phone": '+370'},
    {"code": 'LU', "label": 'Luxembourg', "eueea": true, "phone": '+352'},
    {"code": 'LV', "label": 'Latvia', "eueea": true, "phone": '+371'},
    {"code": 'LY', "label": 'Libya', "eueea": false, "phone": '+218'},
    {"code": 'MA', "label": 'Morocco', "eueea": false, "phone": '+212'},
    {"code": 'MC', "label": 'Monaco', "eueea": false, "phone": '+377'},
    {
      "code": 'MD',
      "label": 'Moldova, Republic of',
      "eueea": false,
      "phone": '+373'
    },
    {"code": 'ME', "label": 'Montenegro', "eueea": false, "phone": '+382'},
    {
      "code": 'MF',
      "label": 'Saint Martin (French part)',
      "eueea": false,
      "phone": '+590'
    },
    {"code": 'MG', "label": 'Madagascar', "eueea": false, "phone": '+261'},
    {
      "code": 'MH',
      "label": 'Marshall Islands',
      "eueea": false,
      "phone": '+692'
    },
    {
      "code": 'MK',
      "label": 'Macedonia, the Former Yugoslav Republic of',
      "eueea": false,
      "phone": '+389'
    },
    {"code": 'ML', "label": 'Mali', "eueea": false, "phone": '+223'},
    {"code": 'MM', "label": 'Myanmar', "eueea": false, "phone": '+95'},
    {"code": 'MN', "label": 'Mongolia', "eueea": false, "phone": '+976'},
    {"code": 'MO', "label": 'Macao', "eueea": false, "phone": '+853'},
    {
      "code": 'MP',
      "label": 'Northern Mariana Islands',
      "eueea": false,
      "phone": '+1-670'
    },
    {"code": 'MQ', "label": 'Martinique', "eueea": false, "phone": '+596'},
    {"code": 'MR', "label": 'Mauritania', "eueea": false, "phone": '+222'},
    {"code": 'MS', "label": 'Montserrat', "eueea": false, "phone": '+1-664'},
    {"code": 'MT', "label": 'Malta', "eueea": true, "phone": '+356'},
    {"code": 'MU', "label": 'Mauritius', "eueea": false, "phone": '+230'},
    {"code": 'MV', "label": 'Maldives', "eueea": false, "phone": '+960'},
    {"code": 'MW', "label": 'Malawi', "eueea": false, "phone": '+265'},
    {"code": 'MX', "label": 'Mexico', "eueea": false, "phone": '+52'},
    {"code": 'MY', "label": 'Malaysia', "eueea": false, "phone": '+60'},
    {"code": 'MZ', "label": 'Mozambique', "eueea": false, "phone": '+258'},
    {"code": 'NA', "label": 'Namibia', "eueea": false, "phone": '+264'},
    {"code": 'NC', "label": 'New Caledonia', "eueea": false, "phone": '+687'},
    {"code": 'NE', "label": 'Niger', "eueea": false, "phone": '+227'},
    {"code": 'NF', "label": 'Norfolk Island', "eueea": false, "phone": '+672'},
    {"code": 'NG', "label": 'Nigeria', "eueea": false, "phone": '+234'},
    {"code": 'NI', "label": 'Nicaragua', "eueea": false, "phone": '+505'},
    {"code": 'NL', "label": 'Netherlands', "eueea": true, "phone": '+31'},
    {"code": 'NO', "label": 'Norway', "eueea": true, "phone": '+47'},
    {"code": 'NP', "label": 'Nepal', "eueea": false, "phone": '+977'},
    {"code": 'NR', "label": 'Nauru', "eueea": false, "phone": '+674'},
    {"code": 'NU', "label": 'Niue', "eueea": false, "phone": '+683'},
    {"code": 'NZ', "label": 'New Zealand', "eueea": false, "phone": '+64'},
    {"code": 'OM', "label": 'Oman', "eueea": false, "phone": '+968'},
    {"code": 'PA', "label": 'Panama', "eueea": false, "phone": '+507'},
    {"code": 'PE', "label": 'Peru', "eueea": false, "phone": '+51'},
    {
      "code": 'PF',
      "label": 'French Polynesia',
      "eueea": false,
      "phone": '+689'
    },
    {
      "code": 'PG',
      "label": 'Papua New Guinea',
      "eueea": false,
      "phone": '+675'
    },
    {"code": 'PH', "label": 'Philippines', "eueea": false, "phone": '+63'},
    {"code": 'PK', "label": 'Pakistan', "eueea": false, "phone": '+92'},
    {"code": 'PL', "label": 'Poland', "eueea": true, "phone": '+48'},
    {
      "code": 'PM',
      "label": 'Saint Pierre and Miquelon',
      "eueea": false,
      "phone": '+508'
    },
    {"code": 'PN', "label": 'Pitcairn', "eueea": false, "phone": '+870'},
    {"code": 'PR', "label": 'Puerto Rico', "eueea": false, "phone": '+1'},
    {
      "code": 'PS',
      "label": 'Palestine, State of',
      "eueea": false,
      "phone": '+970'
    },
    {"code": 'PT', "label": 'Portugal', "eueea": true, "phone": '+351'},
    {"code": 'PW', "label": 'Palau', "eueea": false, "phone": '+680'},
    {"code": 'PY', "label": 'Paraguay', "eueea": false, "phone": '+595'},
    {"code": 'QA', "label": 'Qatar', "eueea": false, "phone": '+974'},
    {"code": 'RE', "label": 'Reunion', "eueea": false, "phone": '+262'},
    {"code": 'RO', "label": 'Romania', "eueea": true, "phone": '+40'},
    {"code": 'RS', "label": 'Serbia', "eueea": false, "phone": '+381'},
    {
      "code": 'RU',
      "label": 'Russian Federation',
      "eueea": false,
      "phone": '+7'
    },
    {"code": 'RW', "label": 'Rwanda', "eueea": false, "phone": '+250'},
    {"code": 'SA', "label": 'Saudi Arabia', "eueea": false, "phone": '+966'},
    {"code": 'SB', "label": 'Solomon Islands', "eueea": false, "phone": '+677'},
    {"code": 'SC', "label": 'Seychelles', "eueea": false, "phone": '+248'},
    {"code": 'SCO', "label": 'Scotland', "eueea": true, "phone": '+44'},
    {"code": 'SD', "label": 'Sudan', "eueea": false, "phone": '+249'},
    {"code": 'SE', "label": 'Sweden', "eueea": true, "phone": '+46'},
    {"code": 'SG', "label": 'Singapore', "eueea": false, "phone": '+65'},
    {"code": 'SH', "label": 'Saint Helena', "eueea": false, "phone": '+290'},
    {"code": 'SI', "label": 'Slovenia', "eueea": true, "phone": '+386'},
    {
      "code": 'SJ',
      "label": 'Svalbard and Jan Mayen',
      "eueea": false,
      "phone": '+47'
    },
    {"code": 'SK', "label": 'Slovakia', "eueea": true, "phone": '+421'},
    {"code": 'SL', "label": 'Sierra Leone', "eueea": false, "phone": '+232'},
    {"code": 'SM', "label": 'San Marino', "eueea": false, "phone": '+378'},
    {"code": 'SN', "label": 'Senegal', "eueea": false, "phone": '+221'},
    {"code": 'SO', "label": 'Somalia', "eueea": false, "phone": '+252'},
    {"code": 'SR', "label": 'Suriname', "eueea": false, "phone": '+597'},
    {"code": 'SS', "label": 'South Sudan', "eueea": false, "phone": '+211'},
    {
      "code": 'ST',
      "label": 'Sao Tome and Principe',
      "eueea": false,
      "phone": '+239'
    },
    {"code": 'SV', "label": 'El Salvador', "eueea": false, "phone": '+503'},
    {
      "code": 'SX',
      "label": 'Sint Maarten (Dutch part)',
      "eueea": false,
      "phone": '+1-721'
    },
    {
      "code": 'SY',
      "label": 'Syrian Arab Republic',
      "eueea": false,
      "phone": '+963'
    },
    {"code": 'SZ', "label": 'Swaziland', "eueea": false, "phone": '+268'},
    {
      "code": 'TC',
      "label": 'Turks and Caicos Islands',
      "eueea": false,
      "phone": '+1-649'
    },
    {"code": 'TD', "label": 'Chad', "eueea": false, "phone": '+235'},
    {
      "code": 'TF',
      "label": 'French Southern Territories',
      "eueea": false,
      "phone": '+262'
    },
    {"code": 'TG', "label": 'Togo', "eueea": false, "phone": '+228'},
    {"code": 'TH', "label": 'Thailand', "eueea": false, "phone": '+66'},
    {"code": 'TJ', "label": 'Tajikistan', "eueea": false, "phone": '+992'},
    {"code": 'TK', "label": 'Tokelau', "eueea": false, "phone": '+690'},
    {"code": 'TL', "label": 'Timor-Leste', "eueea": false, "phone": '+670'},
    {"code": 'TM', "label": 'Turkmenistan', "eueea": false, "phone": '+993'},
    {"code": 'TN', "label": 'Tunisia', "eueea": false, "phone": '+216'},
    {"code": 'TO', "label": 'Tonga', "eueea": false, "phone": '+676'},
    {"code": 'TR', "label": 'Turkey', "eueea": false, "phone": '+90'},
    {
      "code": 'TT',
      "label": 'Trinidad and Tobago',
      "eueea": false,
      "phone": '+1-868'
    },
    {"code": 'TV', "label": 'Tuvalu', "eueea": false, "phone": '+688'},
    {"code": 'TW', "label": 'Taiwan', "eueea": false, "phone": '+886'},
    {
      "code": 'TZ',
      "label": 'United Republic of Tanzania',
      "eueea": false,
      "phone": '+255'
    },
    {"code": 'UA', "label": 'Ukraine', "eueea": false, "phone": '+380'},
    {"code": 'UG', "label": 'Uganda', "eueea": false, "phone": '+256'},
    {
      "code": 'US',
      "label": 'United States',
      "eueea": false,
      "phone": '+1',
      "suggested": true
    },
    {
      "code": 'AE',
      "label": 'United Arab Emirates',
      "eueea": false,
      "phone": '+971'
    },
    {"code": 'UY', "label": 'Uruguay', "eueea": false, "phone": '+598'},
    {"code": 'UZ', "label": 'Uzbekistan', "eueea": false, "phone": '+998'},
    {
      "code": 'VA',
      "label": 'Holy See (Vatican City State)',
      "eueea": true,
      "phone": '+379'
    },
    {
      "code": 'VC',
      "label": 'Saint Vincent and the Grenadines',
      "eueea": false,
      "phone": '+1-784'
    },
    {"code": 'VE', "label": 'Venezuela', "eueea": false, "phone": '+58'},
    {
      "code": 'VG',
      "label": 'British Virgin Islands',
      "eueea": false,
      "phone": '+1-284'
    },
    {
      "code": 'VI',
      "label": 'US Virgin Islands',
      "eueea": false,
      "phone": '+1-340'
    },
    {"code": 'VN', "label": 'Vietnam', "eueea": false, "phone": '+84'},
    {"code": 'VU', "label": 'Vanuatu', "eueea": false, "phone": '+678'},
    {
      "code": 'WF',
      "label": 'Wallis and Futuna',
      "eueea": false,
      "phone": '+681'
    },
    {"code": 'WAL', "label": 'Wales', "eueea": true, "phone": '+44'},
    {"code": 'WS', "label": 'Samoa', "eueea": false, "phone": '+685'},
    {"code": 'XK', "label": 'Kosovo', "eueea": false, "phone": '+383'},
    {"code": 'YE', "label": 'Yemen', "eueea": false, "phone": '+967'},
    {"code": 'YT', "label": 'Mayotte', "eueea": false, "phone": '+262'},
    {"code": 'ZA', "label": 'South Africa', "eueea": false, "phone": '+27'},
    {"code": 'ZM', "label": 'Zambia', "eueea": false, "phone": '+260'},
    {"code": 'ZW', "label": 'Zimbabwe', "eueea": false, "phone": '+263'},
  ];
}
