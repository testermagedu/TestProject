<?php
 
class dbconn
{
	var $conn; // This is the database connection resource.
	var $host;  //The database hostname.
	var $login;  //The databse server login name.
	var $pass; //The database server password.
	var $dbname;
	function query($query,$method)	{//start method query
		$finArr = array();
		$result = mysqli_query($this->conn,$query) or die("Error".mysqli_error($this->conn));
		
		if (!$error = mysqli_error($this->conn))
		{
			if ($method == 1)
				return $result;
			elseif ($method == 2)	{			
				while ($currObj == mysqli_fetch_assoc($result))
					$resultArray[] = $currObj;
					return $resultArray;//returns the double dimensional array containing all the results
			}
			elseif ($method == 3)	{
				$resArray = mysqli_fetch_assoc($result);		
				return $resArray;//this is for single row results.
			}
			elseif($method == 4) { 
				while($reArray = mysqli_fetch_array($result))
					$finArr[] = $reArray;
				return $finArr;//Added for getting result in a Array with numeric index and column name
			}
			elseif($method == 5) { 
				$nRows	= mysqli_num_rows($result);
				return $nRows;//Added for getting just record count ie number of records fetched by the query 
			}
			elseif($method == 6) { 
				$resObject	= mysqli_fetch_object($result);
				return $resObject;//Added for getting result in a Array as object 
			}
		}
		else
			return $error;
	}//end method query
	//Function to execute only action queries ie  INSERT,UPDATE and DELETE queries which wont return any result.
	function action_query($query,$return_insert_id='')
	{
		$result = mysqli_query($this->conn,$query) or die("Error".mysqli_error($this->conn));
		if($return_insert_id != "")
		{
			return mysqli_insert_id();
		}//end of if
	}//end of action_query
	//This is the constructor of the database object.
	function query1($query)
	{
		$result = mysqli_query($this->conn,$query);	
		if (mysqli_error($this->conn))
		{
			return 0;
		}
		else
		{
			return $result;
		}
	}
	
	function dbconn()  	{	 

		global $dbserver;
		global $dbuser;
		global $dbpass;
		global $dbname;
		
		$this->host = $dbserver;
 		$this->login = $dbuser;
		$this->pass = $dbpass;
		$this->dbname = $dbname;
		if ($this->conn = mysqli_connect($this->host,$this->login,$this->pass,$this->dbname) or die(mysqli_error($this->conn)))
		{
			//mysqli_select_db(,$this->conn) or die(mysqli_error($this->conn)." in line ".__LINE__);
			return $this->conn; 
		}
		else
			die(mysqli_error($this->conn));				
	}
}//end class
?>