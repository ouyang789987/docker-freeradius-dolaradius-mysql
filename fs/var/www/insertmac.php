<?php
 
    



    include 'library/opendb.php';

	 
	$usermac = $_REQUEST['usermac'];
	$username = $_REQUEST['username'];

	$file  = rtrim($_SERVER['DOCUMENT_ROOT'],'/').'/maclog.txt';//要写入文件的文件名（可以是任意文件名），如果文件不存在，将会创建一个
	
    $content = "调用接口添加Mac地址：".$usermac."  ".$username."  ".date("Y-m-d H:i",time());
   
	 
	if($_REQUEST['key']=="027a7a7a5cfa91f2f666f6fdb9b375bc")
	{
	        
	        include 'library/opendb.php'; 

			if (trim($usermac) != "")
			{

				// insert nas details
				$sql = "call insertMacForUser('".$username."','".$usermac."')";
				$res = $dbSocket->query($sql);
				
                if($res==1)
                {
				   $successMsg = '{code:1,msg:"插入成功"}';
				   echo $successMsg;
				   $content =$content.$successMsg."\r\n";
				   file_put_contents($file, $content,FILE_APPEND|LOCK_EX);
				}
				else
				{

					$failureMsg = '{code:0,msg:"插入失败"}';
				    echo $failureMsg;
				    $content =$content.$failureMsg." ".$res."\r\n";
				    file_put_contents($file, $content,FILE_APPEND|LOCK_EX);

				}

                

				
			} else {

				$failureMsg = '{code:0,msg:"插入失败'.$usermac.'"}';
				echo $failureMsg;
				$content =$content.$failureMsg."\r\n";
				file_put_contents($file, $content,FILE_APPEND|LOCK_EX);
				 
			}
			
		 

		  include 'library/closedb.php';
          	
      }
      else
      {
      	 echo '{code:0,msg:"秘钥不对"}';
      }

	 	

	
      //同步插入到另一个库
      
      $opts = array(
    	'http'=>array(
    	'method'=>"GET",
		    'timeout'=>60,
		  )
	  );

	  $context = stream_context_create($opts);

	  $html =file_get_contents('http://192.168.10.7/radius/insertmac.php?key=027a7a7a5cfa91f2f666f6fdb9b375bc&usermac='.$usermac."&username=".$username, false, $context);


 


 

	
?>
 
