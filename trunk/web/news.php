<?php 
    require_once("./include/db_info.inc.php");
	$news_content="";
	$news_title="";
    if(isset($_GET['news_id'])) {
		
		$sql="SELECT * "
			."FROM `news` "
			."WHERE `news_id`='".trim($_GET['news_id'])."'";
	$result=mysqli_query($mysqli,$sql);//mysql_escape_string($sql));
	if (!$result){
		$news_content= "<h3>No Content!</h3>";
		$news_content.= mysql_error();
	}else{
		while ($row=mysqli_fetch_object($result)){
                        $news_content.= $row->content;
						$news_title.=$row->title;
		}
		mysqli_free_result($result);
	}
	}

	require("template/".$OJ_TEMPLATE."/news.php");
   
?>
