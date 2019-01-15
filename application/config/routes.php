<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$route['default_controller'] = 'welcome';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['categories-list'] = 'categories/list';
$route['categories-create'] = 'categories/create';
$route['categories-detail/(:any)'] = 'categories/detail/$1';
$route['categories-update/(:any)'] = 'categories/update/$1';
$route['categories-delete/(:any)'] = 'categories/delete/$1';

//$route['USER-DELETE/(:any)'] = 'user/user_delete/$1';
