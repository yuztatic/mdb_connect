<?php

$dsn = 'odbc:spels_mdb';

try {
    $conn = new PDO($dsn, '', '6l7gDB*&6');  // Assuming no username and password required for your Access database
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
    die();
}

// Handle form submissions
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Create operation
    if (isset($_POST['create'])) {
        $name = $_POST['name'];
        $email = $_POST['email'];

        $insertQuery = "INSERT INTO your_table (name, email) VALUES (:name, :email)";
        $stmt = $conn->prepare($insertQuery);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':email', $email);
        $stmt->execute();
    }

    // Update operation
    elseif (isset($_POST['update'])) {
        $id = $_POST['id'];
        $name = $_POST['name'];
        $email = $_POST['email'];

        $updateQuery = "UPDATE your_table SET name = :name, email = :email WHERE id = :id";
        $stmt = $conn->prepare($updateQuery);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
    }

    // Delete operation
    elseif (isset($_POST['delete'])) {
        $id = $_POST['id'];

        $deleteQuery = "DELETE FROM your_table WHERE id = :id";
        $stmt = $conn->prepare($deleteQuery);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD App</title>
</head>
<body>

<h2>CRUD App</h2>

<!-- Create Form -->
<form method="POST" action="">
    <h3>Create</h3>
    <label>Name:</label>
    <input type="text" name="name" required>
    <label>Email:</label>
    <input type="email" name="email" required>
    <button type="submit" name="create">Create</button>
</form>

<!-- Read Data -->
<h3>Read</h3>
<table border="1">
    <tr>
        <th>RegCode</th>
        <th>CertNo</th>
        <th>LName</th>
        <th>Action</th>
    </tr>

    <?php
    // Read operation
    $selectQuery = "SELECT * FROM tbl_HGE order by CertNo desc";
    $result = $conn->query($selectQuery);

    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        echo "<tr>";
        echo "<td>{$row['RegCode']}</td>";
        echo "<td>{$row['CertNo']}</td>";
        echo "<td>{$row['LName']}</td>";
        echo "<td>
                <form method='POST' action=''>
                    <button type='submit' name='update'>Update</button>
                    <button type='submit' name='delete'>Delete</button>
                </form>
              </td>";
        echo "</tr>";
    }
    ?>
</table>

</body>
</html>
