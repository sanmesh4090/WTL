<?php
// Set a cookie named "username" with value "Rajvardhan" that expires in 1 hour
setcookie("username", "Rajvardhan", time() + 3600, "/"); // 3600 seconds = 1 hour

// Check if the cookie is set
if(isset($_COOKIE['username'])) {
    echo "Welcome back, " . $_COOKIE['username'] . "!";
} else {
    echo "Hello, new visitor! Setting your cookie...";
}
?>