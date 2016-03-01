<?php

  class ClassLog{  
  

     protected $glob;




  
  
     public function __construct() {
        global $GLOBALS;
        $this->glob =& $GLOBALS;
    }
  
  
  
   
  
  
  
  
     Function createFileLogAddX($data,$logfilename, $methode){
     
          // $_SERVER['PHP_SELF']   
      
          #  /bo-cooppay/application/gate/getDataFilter.php = 5 countfolder = 2 folder dr web folder      
          #  /bo-cooppay/getDataFilter.php = 3 countfolder = 1 folder dr root/localhost = 0 folder dr web folder      
          $temp = explode("/", $_SERVER['PHP_SELF']);   // $_SERVER['PHP_SELF']   URL PAGE CALL
          $countfolder = count($temp);
          $up=""; 
          for($z=1;$z<= $countfolder - $this->glob['upFolder']; $z++){     
             $up .= "../";
          }
      
          $pFileName =  $up . "application/_log/".  $logfilename . "-". Date('Y-m-d')  .".txt" ;          
          $callFrom   = " Called by : " . $_SERVER['PHP_SELF'] ;               
          $ipClient  = ' IP Client : ' . $_SERVER["REMOTE_ADDR"] ;     
          
          $time =  Date('H:i:s');
                          
          $micro_date = microtime();  
          //echo $micro_date . "<br>";
          $date_array = explode(" ",$micro_date);  
          $date = Date("Y-m-d H:i:s",$date_array[1]);  

          
          $jam = "trx date : " . $date ;
                  
          
          $ctn =   $jam  .   " | " . $ipClient  .   " | " .  $callFrom .   " | " .   $countfolder .    " |  methode : " .  $methode   . "\n" . "Data:" . $data  . "\n\n"; 
          
    
          
          //$pFileVariabel = "application/_log/".$pFileName . ".txt";         
          $newFile = fopen($pFileName, 'a');
          fwrite($newFile, $ctn);
          fclose($newFile);       
     }  
  
  
  
  
  
  
  
     
   Function createFileLog($pFileName,$ctn){
          //$pFileVariabel = "application/_log/".$pFileName . ".txt";         
          $newFile = fopen($pFileName, 'w');
          fwrite($newFile, $ctn);
          fclose($newFile);       
   }       
   

   Function createFileLogAdd($pFileName,$ctn){
          //$pFileVariabel = "application/_log/".$pFileName . ".txt";         
          $newFile = fopen($pFileName, 'a');
          fwrite($newFile, $ctn);
          fclose($newFile);       
   }  

 
     
  }

?>
