<html>
<head>
<meta charset="UTF-8" />
<style>
tr:nth-child(even) {background: #CCC}
tr:nth-child(odd) {background: #FFF}
</style>
</head>

<body>


<?php 
include 'index.php';
$tbname= $_GET['name'];

$con = mysql_connect("localhost","user","passw");

     if(!$con){
           die("Database Connection failed".mysql_error());
}else{
$db_select = mysql_select_db("testdb", $con);
     if(!$db_select){
           die("Database selection failed".mysql_error());
		}
}

if (!mysql_set_charset('utf8', $con)) {
    echo "Error: Unable to set the character set.\n";
    exit;
}

?>


    <table width="900" border="1" cellpadding="1" cellspacing="1">
        <tr>
			<th width="100">Datum</th>
			<th>Temp 7h</th>
			<th>Vlaga 7h</th>
			<th>Temp 12h</th>
			<th>Vlaga 12h</th>
			<th>Temp 17h</th>
			<th>Vlaga 17h</th>
			<th>Bilješke</th>
        </tr>
 
	

<?php
		
		if (isset($_GET['search'])) {
		
		$result = mysql_query("SELECT * FROM $tbname");	
        while ($tbname = mysql_fetch_assoc($result)){
			echo "<tr>";
                echo "<td>".$tbname['Datum']."</td>";
                echo "<td>".$tbname['Temp_7h']."</td>";
                echo "<td>".$tbname['Vlaga_7h']."</td>";
                echo "<td>".$tbname['Temp_12h']."</td>";
				echo "<td>".$tbname['Vlaga_12h']."</td>";
                echo "<td>".$tbname['Temp_17h']."</td>";
                echo "<td>".$tbname['Vlaga_17h']."</td>";
                echo "<td>".$tbname['Biljeske']."</td>";
            echo "</tr>";
		}
		}
?>

	</table>
	
</body>
</html>
