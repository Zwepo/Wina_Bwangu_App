<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);
include('db_connect.php');

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    die('Invalid access.');
}


$booth_id = intval($_POST['booth_id'] ?? 0);
$service_id = intval($_POST['service_id'] ?? 0);
$amount = floatval($_POST['amount'] ?? 0);
$tax_rate = floatval($_POST['taxrate'] ?? 0);

if ($booth_id <= 0 || $service_id <= 0 || $amount <= 0) {
    die('Missing or invalid input.');
}

//pulls the revenue per kwacha  
$stmt = $conn->prepare(
    "SELECT revenue_per_kwacha FROM services WHERE service_id = ?"
);
$stmt->bind_param("i", $service_id);
$stmt->execute();
$stmt->bind_result($rev_per_kwacha);

if (!$stmt->fetch()) {
    $stmt->close();
    die('Service not found.');
}
$stmt->close();

//booth code given 
$stmt = $conn->prepare("
SELECT booth_code FROM booths WHERE booth_id = ?"
);
$stmt->bind_param("i", $booth_id);
$stmt->execute();
$stmt->bind_result($booth_code);

if (!$stmt->fetch()) {
    $stmt->close();
    die('Booth not found.');
}
$stmt->close();


// runs calculations
$tax_amount = round($amount * ($tax_rate/100));
$taxed_amount= round ($amount - $tax_amount);
$revenue =round ($taxed_amount*$rev_per_kwacha);

//creates the transaction ID
$datePart = date('Ymd');
$stmt = $conn->prepare(
    "SELECT COUNT(*) FROM transactions WHERE DATE(txn_date) = CURDATE()"
);
$stmt->execute();
$stmt->bind_result($countToday);
$stmt->fetch();
$stmt->close();

$seq = $countToday + 1;
$transaction_id = sprintf("TXN-%s-%s-%04d", $booth_code, $datePart, $seq);

// inserts the transaction
$insert = $conn->prepare("INSERT INTO transactions (transaction_id, booth_id, service_id, amount, tax_amount, amount_after_tax, revenue) VALUES (?, ?, ?, ?, ?, ?, ?)");
$insert->bind_param("siidddd", $transaction_id, $booth_id, $service_id, $amount, $tax_amount, $amount_after_tax, $revenue);

if ($insert->execute()) {
    echo "Transaction saved. TransactionID: " . htmlspecialchars($transaction_id);
} else {
    echo "DB Error: " . $insert->error;
}
$insert->close();
$conn->close();






?>