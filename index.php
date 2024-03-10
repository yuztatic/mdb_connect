<?php




// Replace these values with your actual database connection details
$dsn = 'odbc:spels_mdb';
$password = '6l7gDB*&6'; // Use your actual password, no username required

try {
    // Connect to the database
    $conn = new PDO($dsn, '', $password);

    // Set PDO to throw exceptions on errors
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Example query to retrieve data from a table
    $query = "SELECT * FROM tbl_HGE";
    $result = $conn->query($query);

    // Fetch data and display
    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        print_r($row);
    }

    // Close the connection
    $conn = null;
} catch (PDOException $e) {
    // Handle any errors that occur during the process
    echo "Error: " . $e->getMessage();
}


?>

