<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("localhost", "root", "", "samochody");

if ($conn->connect_error) {
    die(json_encode(["error" => "Błąd połączenia z bazą"]));
}

$sql = "SELECT * FROM auta";
$result = $conn->query($sql);

$auta = [];

while ($row = $result->fetch_assoc()) {
    $auta[] = $row;
}

echo json_encode($auta);
$conn->close();
