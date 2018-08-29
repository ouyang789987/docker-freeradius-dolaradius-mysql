<?php
  
/*

     // setsebool -P httpd_enable_cgi on;
     // setsebool -P httpd_unified on;
     // setsebool -P httpd_builtin_scripting on;

*/

    include 'library/opendb.php';

	 
	$usermac = $_REQUEST['usermac'];
	$file  = rtrim($_SERVER['DOCUMENT_ROOT'],'/').'/maclog.txt';//要写入文件的文件名（可以是任意文件名），如果文件不存在，将会创建一个
	 
    $content = "调用接口删除Mac地址：".$usermac."  ".date("Y-m-d H:i",time());
 
    // echo $file;
  
	 
	if($_REQUEST['key']=="027a7a7a5cfa91f2f666f6fdb9b375bc")
	{
	        
	        include 'library/opendb.php'; 

			if (trim($usermac) != "")
			{

				// insert nas details
				$sql = "call deletemac('".$usermac."')";

				$dbSocket->query($sql);
				
                if($res==1 || $res=="")
                {
				   $successMsg = '{code:1,msg:"删除成功'.$usermac.'"}';
				   echo $successMsg;
				   $content =$content.$successMsg."\r\n";
				   file_put_contents($file, $content,FILE_APPEND|LOCK_EX);

				}
				else
				{

					$failureMsg = '{code:0,msg:"删除失败'.$usermac.'"}';
				    echo $failureMsg;
				    $content =$content.$failureMsg." result:".$res."\r\n";
				    file_put_contents($file, $content,FILE_APPEND|LOCK_EX);

				}


				
			} else {

				$failureMsg = '{code:0,msg:"删除失败'.$usermac.'"}';
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

	  $html =file_get_contents('http://192.168.10.7/radius/delmac.php?key=027a7a7a5cfa91f2f666f6fdb9b375bc&usermac='.$usermac, false, $context);


 

	
?>
 
