<?php
include 'includes/session.php';

$output = '';

$conn = $pdo->open();

$stmt = $conn->prepare('SELECT * FROM products ORDER BY updated_at DESC');
$stmt->execute();
foreach ($stmt as $row) {
    $output .=
        "
			<option value='" .
        $row['id'] .
        "' class='append_items'>" .
        $row['name'] .
        "</option>
		";
}

$pdo->close();
echo json_encode($output);

?>
