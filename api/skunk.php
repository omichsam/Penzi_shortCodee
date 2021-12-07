<?php

   include_once('db.php');
         session_start();
          //=$_SESSION['message']

         if (isset($_SESSION['message'])) {
       	$message = $_SESSION['message'];
       	// $sender = $_SESSION['sender']; 
                  
         	$data = array("status"=>"success","data" => "DEAD");
                           echo json_encode($data);
         }





          



           // if(isset($_SESSION['message']))
           //     {
                     
           //           $sender = $_SESSION['sender']; 
           //           $receiver= $_SESSION['receiver']; 
                  
                    
           //                     $sql = "INSERT INTO `message`( `sender`, `receiver`, `message`)
           //                         VALUES ('$sender', '$receiver', '$message')";
           //                     if (mysqli_query($conn,$sql))
           //                     {

		         //                             $data = array("status"=>"success","data" => $message ."+".$receiver ."+". $sender );
		        	// 								 echo json_encode($data);


           //                        }
           //                         else {
           //                                   $data = array("status"=>"error","data" => "Error: " . $sql . "<br>" . $conn->error);
           //                                           echo json_encode($data);
                                                                 
           //                              }
           //        }
?>




<!-- 


  $query = "SELECT * FROM users WHERE code = '$sender'";
															$result = mysql_query($query);
															if ($result)
															 {
																				if (mysql_num_rows($result) > 0) 
																				  {

																				  	///user registered
																				    $data = array("status"=>"success","data" => "data found" );
					      																  echo json_encode($data);
																				  } 
																			 else 
																				  {
																				  	user not registered
																				    $data = array("status"=>"success","data" => "Data not found" );
					      																  echo json_encode($data);
																				  }
															}
															 else
															  {
															        echo 'Error: '.mysql_error();
															         $data = array("status"=>"error","data" => "Error: " . $sql . "<br>" . $conn->error);
                                                                    echo json_encode($data);
                                                                 
															  } -->



<!-- 




															  $query = "SELECT * FROM users WHERE `county` = '$county' AND `gender` = '$gender'  "; 
					
									// Execute the query and store the result set 
									$result = mysqli_query($conn, $query); 
																
												if ($result) { 
													// it return number of rows in the table. 
													$row = mysqli_num_rows($result); 
													if ($row > 0) { 
														       $messa = "There are ".$row." in number";
														 	$data = array("status"=>"success","data" => $messa);
										                 			 echo json_encode($data);
														} else{

														}
											// close the result. 
									mysqli_free_result($result); 
						}  -->




<!-- check_reg
 < ?php 

		// 	include_once('db.php');


        //  if (isset($_SESSION['message'])) {

        //  	$message   = $_SESSION['message'];
        //  	$receiver  = $_SESSION['receiver'];
        //  	$sender    = $_SESSION['sender'];
        //  	$messa1    =  $_SESSION['$message2'];
        //  	$messa2    =  $_SESSION['$message2'];



  		// $sql = "INSERT INTO `message` (`sender`,`receiver`,`message`) VALUES('$sender', '$receiver', '$message')";

  		//            if (mysqli_query($conn, $sql)) 
		// 	  		           {

		// 								$data = array("status"=>"success","data" => "DATA Inserted" );
        //                  				  echo json_encode($data);	
                       

  		//            	        			$sql1 = "SELECT * FROM `users` WHERE `phone_no` = '$sender'";
  		//            	        			$result = mysqli_query($conn, $sql1);
  		//            	        			if ($result) {

		// 	                                        if(mysqli_num_rows($result) > 0)
		// 	  		           	        			{
			  		           	        						


        //                                                         $sql3  = "INSERT INTO `message` (`sender`,`receiver`,`message`) VALUES( '$receiver', '$sender', '$message')";
        //                                                         if (mysqli_query($conn, $sql)) {
        //                                                         	 $data = array("status"=>"success","data" => $_SESSION['message1'] );
		// 	                 								          echo json_encode($data);  
        //                                                         }

		// 	  		           	        			}
		// 	  		           	        			else
		// 	  		           	        			{
		// 	  		           	        						$data = array("status"=>"success","data" => $_SESSION['message2'] );
		// 	                 								      echo json_encode($data);
		// 	  		           	        			}
  		//            	        			}else{
		// 			                       $data = array("status"=>"error","data" => "Error: " . $sql . "<br>" . $conn->error);
		// 			                         echo json_encode($data);
		// 			                    }
					  		           	        			
  		//            }
  		//            else 
  		//            {
        //                $data = array("status"=>"error","data" => "Error: " . $sql . "<br>" . $conn->error);
        //                  echo json_encode($data);
        //             } -->


         	
          // }
// 




<!-- $sql = "SELECT * FROM `users` WHERE `phone_no`='$sender'";
				$result = mysqli_query($conn, $sql);
				$check = mysqli_num_rows($result);
							if ($check > 0) {
									while ($row = mysqli_fetch_assoc($result)) {
											
											$gender = $row["gender"];
											
									}
									$data = array("status"=>"success","data"=>$sender);
								     echo json_encode($data);
							} -->



							

<!-- if ($result) { 
					// it return number of rows in the table. 
													$row = mysqli_num_rows($result); 
													if ($row > 0) { 
														       $messa = matchs($row, $gender1);
														 	  $data = array("status"=>"success","data" => $messa);
										                 								   echo json_encode($data);
													
														} else{

														}
											// close the result. 
									mysqli_free_result($result); 
						} 
	if ($result) { 
					// it return number of rows in the table. 
													$row = mysqli_num_rows($result); 
													if ($row > 0) { 
														       $messa = matchs($row, $gender1);
														 	  $data = array("status"=>"success","data" => $messa);
										                 								   echo json_encode($data);
													
														} else{

														}
											// close the result. 
									mysqli_free_result($result); 
						} 

	===========================================================================
$query = "SELECT * FROM `users` WHERE `phone_no`='$sender'";

		            $results = mysqli_query($conn, $query);
					      while($row = mysqli_fetch_array($results, MYSQLI_ASSOC))
							{
							     $gender = ($row['gender']);

							      if ($gender == "Female") 
							 {
							 	$gender1 = "Male";

						                    include_once('getAll_match.php'); 
						       }
						       else
						       {          $gender1 = "Female";
						                   include_once('getAll_match.php'); 
						         }

							} -->



							<!-- ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
							ddddddddddddddddddddddddddddd -->


<!-- $sql3  = "INSERT INTO `message` (`sender`,`receiver`,`message`) VALUES( '$receiver', '$sender', '$messa')";
							                                           if (mysqli_query($conn, $sql3)) 
							                                                      {
							                                                            $data = array("status"=>"success","data" => $messa);
										                 								   echo json_encode($data);  
							                                                       }
							                                                             else
							                                                          {
							                                                            	$data = array("status"=>"error","data" => "Error: " . $sql . "<br>" . $conn->error);
                         																			echo json_encode($data);
							                                                          } 
																					-->