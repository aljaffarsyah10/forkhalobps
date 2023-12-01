<?php
class DB extends DBmysql
{
   public $dbhost = 'localhost';
   // public $dbuser = 'halosisw_halodev';
   public $dbuser = 'root';
   // public $dbpassword = 'bh!nneKa1';
   public $dbpassword = '';
   // public $dbdefault = 'halosisw_dev';
   public $dbdefault = 'halobps';
   public $use_timezones = true;
   public $use_utf8mb4 = true;
   public $allow_myisam = false;
   public $allow_datetime = false;
   public $allow_signed_keys = false;
}
