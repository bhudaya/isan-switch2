<?php    
    ini_set('display_errors', '1');
    //date_default_timezone_set('Asia/Jakarta');    
    //error_reporting(E_ALL & ~E_NOTICE); 
     error_reporting(E_ERROR);
    //error_reporting(E_CORE_ERROR);

    
     $GLOBALS = array(
         'upFolder' => 3,   # folder dikurang 3 jika satu folder di bawah root ->   rootfolder/webapp ;
         'server'=> 'localhost',
         'dbname'=> 'db_isanremitt',
         'user'=> 'root',
         'password'=> '1234',

     );    
    
    
    #------------------- set dinamis folder from called page ---------------------------------    
          //echo $_SERVER['PHP_SELF']  . "<br>";  ;          
          $temp = explode("/", $_SERVER['PHP_SELF']);   // $_SERVER['PHP_SELF']   URL PAGE CALL
          $countfolder = count($temp);
          $up=""; 
          for($z=1;$z<= $countfolder - $GLOBALS["upFolder"] ; $z++){
             $up .= "../";
          }

         // echo " up : " . $up . "<br>";
    #-----------------------------------------------------------------------------------    
    
    
 ?> 
