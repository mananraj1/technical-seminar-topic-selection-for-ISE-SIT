<?php

include 'config.php';

header("Access-Control-Allow-Origin: * ");
header("Content-Type: *");
header("Access-Control-Allow-Methods: *");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: *");

$sqlcount="SELECT * FROM `topics`;";
$resultcount = mysqli_query($conn,$sqlcount);

$i=0;
$output="";
while($row=mysqli_fetch_assoc($resultcount))
{
    $output.=
    '<tr><td>'.$row["id"].'</td>
        <td>'.$row["topic_name"].'</td>';
        
        if($row["usn"]!="")
            $opt= "SELECTED BY ".$row["usn"];
        else
            $opt= '<button class="btn btn-primary" onclick="select_subject('.$row["id"].')">Select</button>';
        //$opt="Opens At 1:00 Pm (21/12/22)";
    $output.='<td>'.$opt.'</td>
    </tr>';
} 

echo $output;

?>