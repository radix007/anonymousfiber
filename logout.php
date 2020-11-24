 
<?php
#LOGOUT PHP FILE : OWNED BY RADIX007
session_start();
session_destroy();
header("Location: index.php");
?> 
