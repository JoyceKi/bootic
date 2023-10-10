<?php

 $username = "root";
 $password = '';
 $dsn = 'mysql:host=localhost;dbname=dbbootic;port=3306;charset=utf8';
 $db = new PDO($dsn, $username, $password);
 $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
