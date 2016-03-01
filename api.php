<?php
    
	require_once('application/config/global.php');
	require_once("Rest.inc.php");	
	require_once("application/controllers/log_c.php");
    require_once("application/controllers/db_c.php");
    //require_once("application/controllers/SockConnection.Class.php");


		
	
	class API extends REST {
	
	   public $data = "";		
	   private $db = NULL;
		
	
		public function __construct(){
		    $dbcon = new Db();  //		    		
			parent::__construct();				// Init parent contructor			
			//$this->dbConnect();					// Initiate Database connection			
			$this->db = $dbcon->dbConnect();   // Initiate Database connection	
		}
		
				
		
		protected function validateHash(){
           $request = file_get_contents('php://input');
           $requestHeaders = apache_request_headers();
           //if (!isset($requestHeaders['X-Auth']) || !isset($requestHeaders['X-Auth-Hash'])) {           
           if (!isset($requestHeaders['X-Signature']) ) {                      
                 $this->response('fail!',401);
           } else {          
                 $userid = "clientIsan";
                 $secretKey = "7788";        
                 // Computes the timestamp
                 date_default_timezone_set('UTC');
                 $tStamp = strval(time()-strtotime('1970-01-01 00:00:00'));             
                 $signature = hash_hmac('sha256', $userid."&".$secretKey, $secretKey, true);
                 $encodedSignature = base64_encode($signature);                                
                 //$hash = hash_hmac('sha256',$request,$user->private_key);
                 return ($encodedSignature == $requestHeaders['X-Signature']) ? true : false;
           }
        } //end function
			
		
	
		
		private function transfer_bank(){
		    $CLog = new ClassLog(); 	 	
		    $hsl= $this->validateHash();		        
		    //echo " hasil : " . $hsl . "<br>" ;				
		    if($hsl){
		
		        //----------------- get post data --------------------------
		    	$username            = $this->_request['username'];		
			    $product_code        = $this->_request['product_code'];
			    $merchant_code       = $this->_request['merchant_code'];
			    $terminal_code       = $this->_request['terminal_code'];
                $dest_refnumber      = $this->_request['dest_refnumber'];
                $dest_bankcode       = $this->_request['dest_bankcode'];		
			    $dest_bankacc        = $this->_request['dest_bankacc'];
			    $dest_amount         = $this->_request['dest_amount'];
			    $purpose             = $this->_request['purpose'];
              	$relationship        = $this->_request['relationship'];		
              	
			    $recipient_name      = $this->_request['recipient_name'];
			    $recipient_address   = $this->_request['recipient_address'];
			    $recipient_city      = $this->_request['recipient_city'];
                $recipient_postcode  = $this->_request['recipient_postcode'];
                $recipient_country   = $this->_request['recipient_country'];		
			    $recipient_telepon   = $this->_request['recipient_telepon'];
			    $recipient_email     = $this->_request['recipient_email'];
			    
                $sender_name         = $this->_request['sender_name'];
			    $sender_address      = $this->_request['sender_address'];
			    $sender_city         = $this->_request['sender_city'];
                $sender_postcode     = $this->_request['sender_postcode'];
                $sender_country      = $this->_request['sender_country'];		
			    $sender_telepon      = $this->_request['sender_telepon'];
			    $sender_email        = $this->_request['sender_email'];
			    
			    $sender_idcardcode   = $this->_request['sender_idcardcode'];
			    $sender_idcardnumber = $this->_request['sender_idcardnumber'];			    			    
			    $timestamp     = $this->_request['timestamp'];			        
			    $signature     = $this->_request['signature'];		
			    //---------------------------------------------------------------	
			    
                $postdata = file_get_contents("php://input");			    
			    //print_r($postdata);			    
                $this->insert_trx($postdata);	  

               $timestamp = date("Y-m-d H:i:s");


               $datacheck = array('username'      => $username, 
			                  "product_code"      => $product_code,
			                  "merchant_code"     => $merchant_code,
			                  "terminal_code"     => $terminal_code,
			                  "dest_refnumber"    => $dest_refnumber,
			                  "dest_bankcode"     => $dest_bankcode,
			                  "dest_bankacc"      => $dest_bankacc,
			                  "dest_amount"       => $dest_amount,			                 
			                  "timestamp"         => $timestamp,
			                  "action"            => "check_account"	
			                  );
	
                   
			    //----------------------- create check log ---------------------------------
			    $methode     =     "check_account" ;      
                $logfilename  =    "log.check_account";  			    
                $CLog->createFileLogAddX( $this->json($datacheck),$logfilename , $methode); 
                //---------------------------------------------------------------------	 
                $msg  = $this->sendToSocket($this->json($datacheck));
			    $datares = json_decode($msg,true);	// jadikan array

               	//---- next to transfer if check success    
			    if($datares["err_code"] == "00"){	
   			    			    
			       $timestamp = date("Y-m-d H:i:s");

			       $datatrf = array('username'          => $username, 
			                  "product_code"      => $product_code,
			                  "merchant_code"     => $merchant_code,
			                  "terminal_code"     => $terminal_code,
			                  "dest_refnumber"    => $dest_refnumber,
			                  "dest_bankcode"     => $dest_bankcode,
			                  "dest_bankacc"      => $dest_bankacc,
			                  "dest_amount"       => $dest_amount,
			                  "purpose"           => $purpose,
			                  "relationship"      => $relationship,
			                  "recipient_name"    => $recipient_name,
			                  "recipient_address" => $recipient_address,
			                  "recipient_city"    => $recipient_city,
			                  "recipient_postcode"=> $recipient_postcode,
			                  "recipient_country" => $recipient_country,
			                  "recipient_telepon" => $recipient_telepon,
			                  "recipient_email"   => $recipient_email,
			                  "sender_name"       => $sender_name,
			                  "sender_address"    => $sender_address,
			                  "sender_city"       => $sender_city,
			                  "sender_postcode"   => $sender_postcode,
			                  "sender_country"    => $sender_country,
			                  "sender_telepon"    => $sender_telepon,
			                  "sender_email"      => $sender_email,
			                  "sender_idcardcode" => $sender_idcardcode,
			                  "sender_idcardnumber" => $sender_idcardnumber,
			                  "timestamp"           => $timestamp,
			                  "action"              => "transfer_money"	
			                  );
				            			    
			        //----------------------- create transfer log ---------------------------------
				    $methode     =     "transfer_bank" ;      
	                $logfilename  =    "log.transfer_bank";  			    
	                $CLog->createFileLogAddX( $this->json($datatrf),$logfilename , $methode); 
	                //---------------------------------------------------------------------	  	    
				    //$this->responsex($this->json($data), 200 ,"Data has been received ");	
			       			    
				   		    
				       $msg = $this->sendToSocket($this->json($datatrf));			    
				       echo $msg ."<br>";			    
				       $datares       = json_decode($msg,true);	// jadikan array	 
				       print_r($datares);
			       
			    }else{		
			       print_r($datares);
			    }
			    			    
			 }else{
			     $data = array('msg' => 'signature not valid !');				 
			     $this->response($this->json($data), 201);	

			 }
		
		}
		
		
		public function sendToSocket($data){		
		
		    $data = $data ."\n";
		
            $host         = "127.0.0.1";

            $port       = 19888;   
            $socket     = socket_create(AF_INET, SOCK_STREAM, 0) or die("[".date('Y-m-d H:i:s')."]from Client: Could not create socket\n");
            $result     = socket_connect($socket, $host, $port) or die("[".date('Y-m-d H:i:s')."]from Client: Unable to connect to server\n");
  
            
            //sent msg to server
            socket_write($socket, $data, strlen($data)) or die("from Client: Unable to send data to server\n");
            
            //read return msg from server
            $resultread   = socket_read($socket, 1024) or die("from client: Could not read response from server \n");
      
            $resultread   = trim($resultread);
            //echo "\n Message returned : ".$resultread   ;
            
            
            return $resultread ;

            socket_close($socket);

                        
            
            
		}
		
		
			
		
		
			
			
		public function insert_trx($data){
            $micro_date = microtime();     
	        $date_array = explode(" ",$micro_date);  
	        $date = date("Y-m-d H:i:s",$date_array[1]);  
	        $currDate = date("Y-m-d H:i:s");
	        
	        $temp = explode(".",$date_array[0]);  
            $ms = $temp[1] ;
		    $trxid  = $date = date("Ymd") . Date(His) . substr($ms,0,4)  ;      
            $status = "0"; // query            
            $qry = "INSERT INTO  t_remittance (trxid,data,status,last_update,last_user) VALUES ('".$trxid."','".$data."','".$status."','".$currDate."','admin')";
					
			$rst = mysql_query($qry);
		    return $rst ;		
		}		
			
				
				
		public function responsex($datapar,$kd,$msg){				  	  
		    $data1        = json_decode($datapar,true);	// jadikan array	    
		    //print_r($data1);
			$data["kd"]  = $kd;		   	
			$data["msg"]  = $msg;
			$data["data"] = $data1;
			
		    //array_push($data,$data1);				   
		    print_r($this->json($data));		
		}
		
				
				
		
		public function response($datamsg,$kd){				  	  
		    $data        = json_decode($datamsg,true);	// jadikan array	
			$data["kd"]  = $kd;		   	
		    //array_push($data,$data2);				   
		    print_r($this->json($data));		
		}
		
						
		
		/*
		 * Public method for access api.
		 * This method dynmically call the method based on the query string
		 *
		 */
		public function processApi(){
			$func = strtolower(trim(str_replace("/","",$_REQUEST['rquest'])));						
			//print_r ($_REQUEST['rquest']);			
			//echo method_exists($this,$func) . '<br>' ;			
			$exist = method_exists($this,$func) ;			
			$exist = $exist * 1;			
			//echo $exist;
						
			//if((int)method_exists($this,$func) > 0){
			if( $exist > 0){			   				
				$this->$func();  //run method/function 				
			}else{													    
			    $data = array('msg' => 'Function not exists ...!');		    
				$this->response($this->json($data),404);				// If the method not exist with in this class, response would be "Page not found".
		    }
		}
		
		/*
		 *	Encode array into JSON
		*/
		private function json($data){
			if(is_array($data)){
				return json_encode($data);
			}
		}
	}
	
	
	
	
	// Initiiate Library	
	$api = new API;
	$api->processApi();
?>