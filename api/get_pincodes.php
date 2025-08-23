<?php

require("db.php");

$sql = "SELECT DISTINCT pincode, PostOfficeName, District FROM location ORDER BY pincode";
$result = $con->query($sql);

$pincodes = [];
if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $pincodes[] = [
            'pincode'   => $row['pincode'],
            'postlname' => $row['PostOfficeName'],
            'district' => $row['District'],
        ];
    }
}

echo json_encode($pincodes);
?>
