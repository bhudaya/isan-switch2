<?php
/*
	- SockConnection - PHP Socket Connection - TCP/IP
	- NOTE: Designed for use with PHP version 5 and up
	- @author : Muhsin Shodiq
	- @copyright 2008 - Software Laboratory Center, BINUS University
	
	All Method :
	- Connect - bool, IsConnect - bool, Close - void
	- ReadMessage - string, SendMessage - bool
	- SetPort - void, SetHostname - void, SetTimeout - void
	- GetPort = integer, GetHostname - string, GetTimeout - integer, GetErrorMessage - string
*/

class SockConnection
{
	private $port; // port number
	
	private $hostname; // server name
	
	private $errorMessage; // error message
	
	private $timeout; // timeout time for connection
	
	private $socket; // socket connection
	
	// this constructor method	
	public function SockConnection($hostname,$port,$timeout=30)
	{
		$this->port = $port;
		$this->hostname = $hostname;
		$this->timeout = $timeout;
		$this->errorMessage = "";
	}
	
	/*
		- Connect to the server specified on the port specified.
		- @return bool	
	*/
	public function Connect()
	{
		$this->socket = fsockopen($this->hostname,$this->port,$errno,$errstr,$this->timeout);
		if(empty($this->socket))
		{
			$this->errorMessage = "$errno : $errstr";
			return false;
		}
		
		return true;
	}
	
	/*
		- Returns true if connected to a server otherwise false
   		- @return bool
	*/
	public function IsConnected()
	{
		if(empty($this->socket))
			return false;
			
		return true;
	}
	
	/*
		- Closed Socket Connection
   		- @return void
	*/
	public function Close()
	{
		$this->errorMessage = "";
		if(!empty($this->socket))
		{
			fclose($this->socket);
			$this->socket = 0;
		}
	}
	
	/*
		- Send Message to Server
		- @return bool
	*/
	public function SendMessage($message)
	{
		if($this->IsConnected())
			if(fwrite($this->socket,$message))
				return true;
							
		return false;
	}
	
	/*
		- Read Message from Server
		- @return string
	*/
	public function ReadMessage()
	{
		$message = "";
		if($this->IsConnected())
			$message = fgets($this->socket);
		return $message;
	}
	
	/*
		- All Setter and Getter Method for Property
		- Setter : hostname, port, timeout
		- Getter : hostname, port, timeout, errorMessage
	*/
	public function SetHostname($host)		{ $this->hostname = $host; }
	public function SetPort($port)			{ $this->port = $port; }
	public function SetTimeout($timeout)	{ $this->timeout = $timeout; }
	public function GetHostname()			{ return $this->hostname; }
	public function GetPort()				{ return $this->port; }
	public function GetTimeout()			{ return $this->timeout; }
	public function GetErrorMessage()		{ return $this->errorMessage; }
}

?>