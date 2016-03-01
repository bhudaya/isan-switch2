<?php

  class Db{  
  
     protected $glob;     
     private $db = NULL;
     
     const DB_SERVER = "";
	 const DB_USER = "";
	 const DB_PASSWORD = "";
	 const DB = "";



     public function __construct() {
         global $GLOBALS;
         $this->glob =& $GLOBALS;                           
         
         //print_r ($this->glob);
         
         //Array ( [upFolder] => 3 [server] => localhost [dbname] => db_isanremitt [user] => root [password] => 1234 ) 
         
         $this->DB_SERVER    = $this->glob["server"];
         $this->DB_USER      = $this->glob["user"];
         $this->DB_PASSWORD  = $this->glob["password"];
         $this->DB           = $this->glob["dbname"];         
         $this->dbConnect();	// Initiate Database connection         
     }
          
     	
	  /*
	  *  Database connection 
	  */		
	  public function dbConnect(){
			$this->db = mysql_connect($this->DB_SERVER,$this->DB_USER,$this->DB_PASSWORD);
			if($this->db)
				mysql_select_db($this->DB,$this->db);
	  }


     
  }

?>
