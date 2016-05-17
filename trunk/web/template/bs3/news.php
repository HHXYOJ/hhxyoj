<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title><?php echo $news_title?></title>  
    <?php include("template/$OJ_TEMPLATE/css.php");require_once('./include/setlang.php');?>	

</head>
<body>
<div class="container">
    <?php include("template/$OJ_TEMPLATE/nav.php");?>	    
      <div class="jumbotron">
<hr>
<center>
  <font size="+3"><?php echo $news_title?></font>
  <?php echo $news_content?>
</center>
<hr>
<?php require_once("oj-footer.php");?>
<?php include("template/$OJ_TEMPLATE/js.php");?>
</body>
</html>
