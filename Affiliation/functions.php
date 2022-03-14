<?php
/**
 * @author anandh
 * @copyright 2019
 */ 
require_once("../lib/config.php"); 

        if(isset($_REQUEST["degl"]))
        {
           // $sem_res   =   $dbObject->query("SELECT * FROM `paper` WHERE `dept`=4",4);
		   $sql = "SELECT * FROM `courses` WHERE `SEC` ='".$_REQUEST["degl"]."'"; 
		   	echo "<script type='text/javascript'>alert('$sql');</script>";
			
             $sem_res   =   $dbObject->query($sql,4);
        ?> 
        
        <option value="0">Select Dept</option>
        <?php
        foreach($sem_res as  $value)
        {
        ?>
        <option value="<?php echo  $value[1];?>"><?php echo $value[1];?></option>
        <?php
        }
        } 
		
         if(isset($_REQUEST["dept"]))
        {
			$sql = " SELECT * FROM ".$_REQUEST["table"] ." WHERE dept = '".$_REQUEST["dept"]."'";
			echo "<script type='text/javascript'>alert('$sql');</script>";
			
			$stu_attendence   =   $dbObject->query($sql,4);
			$i=1;
			echo "<table class='table table-bordered'>"; 
			echo "<tr><td><strong>S.No</strong></td><td><strong>Fund. Agency </strong></td><td><strong>Name</strong></td><td> <strong>Dept</strong> </td><td> <strong>Title </strong> </td><td> <strong>Date</strong> </td><td> <strong>Sanctioned Month-Year</strong> </td><td> <strong>Sanctioned Amount</strong> </td></tr>";
			foreach($stu_attendence as $st){
			
			echo "<tr><td>".$i++."</td><td>".$st[1]."</td><td>".$st[2]."</td><td>".$st[3]."</td><td>".$st[4]."</td><td>".$st[5]."</td><td>".$st[6]."</td><td>".$st[6]."</td></tr>";
			}
			echo "</table>"; 
		}
       
?>