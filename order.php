<?php
include 'includes/session.php';

$conn = $pdo->open();

$output = ['error' => false];

// $id = $_POST['id'];

if (isset($_SESSION['user'])) {
    $stmt = $conn->prepare(
        'SELECT *, COUNT(*) AS numrows FROM orders WHERE user_id=:user_id AND product_id=:product_id'
    );
    $stmt->execute(['user_id' => $user['id'], 'product_id' => product['id']]);
    $row = $stmt->fetch();
    if ($row['numrows'] < 1) {
        try {
            $stmt = $conn->prepare(
                'INSERT INTO orders (user_id, product_id) VALUES (:user_id, :product_id,)'
            );
            $stmt->execute([
                'user_id' => $user['id'],
                'product_id' => product['id'],
            ]);
            $output['message'] = 'products ordered successful';
        } catch (PDOException $e) {
            $output['error'] = true;
            $output['message'] = $e->getMessage();
        }
    } else {
        $output['error'] = true;
        $output['message'] = 'Product already in order';
    }
} else {
    if (!isset($_SESSION['orders'])) {
        $_SESSION['orders'] = [];
    }

    $exist = [];

    foreach ($_SESSION['orders'] as $row) {
        array_push($exist, $row['productid']);
    }

    if (in_array($id, $exist)) {
        $output['error'] = true;
        $output['message'] = 'Product already in order';
    } else {
        $data['productid'] = $id;
        $data['quantity'] = $quantity;

        if (array_push($_SESSION['orders'], $data)) {
            $output['message'] = 'product ordered is successful';
        } else {
            $output['error'] = true;
            $output['message'] = 'Cannot add item to ordered';
        }
    }
}

$pdo->close();
echo json_encode($output);

?>
