<?php

/*
   ------------------------------------------------------------------------
   Barcode
   Copyright (C) 2009-2016 by the Barcode plugin Development Team.

   https://forge.indepnet.net/projects/barscode
   ------------------------------------------------------------------------

   LICENSE

   This file is part of barcode plugin project.

   Plugin Barcode is free software: you can redistribute it and/or modify
   it under the terms of the GNU Affero General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   Plugin Barcode is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
   GNU Affero General Public License for more details.

   You should have received a copy of the GNU Affero General Public License
   along with Plugin Barcode. If not, see <http://www.gnu.org/licenses/>.

   ------------------------------------------------------------------------

   @package   Plugin Barcode
   @author    David Durieux
   @co-author
   @copyright Copyright (c) 2009-2016 Barcode plugin Development team
   @license   AGPL License 3.0 or (at your option) any later version
              http://www.gnu.org/licenses/agpl-3.0-standalone.html
   @link      https://forge.indepnet.net/projects/barscode
   @since     2009

   ------------------------------------------------------------------------
 */

// Non menu entry case
//header("Location:../../central.php");

include ('../../../inc/includes.php');

Session::checkRight("config", UPDATE);

// To be available when plugin is not activated
Plugin::load('phpsaml');

Html::header(__('PHP SAML', 'phpsaml'), $_SERVER['PHP_SELF'], "config", "plugins");

$phpSamlConfig = new PluginPhpsamlConfig();

if (isset($_POST["update"])) {
	$messages = $phpSamlConfig->validate($_POST);
	if(empty($messages['errors'])){
		$phpSamlConfig->update($_POST);
	} 
	$_SESSION['phpsaml_messages'] = $messages;
	
	Html::back();
} else {
   Html::header(__('PHP SAML', 'phpsaml'), $_SERVER['PHP_SELF'], "config", "plugins");
   
   Session::checkRight("config", UPDATE);
   $phpSamlConfig->showForm((isset($_POST["id"]) ? $_POST["id"] : ''));
	
   Html::footer();

}