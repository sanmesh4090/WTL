<?php
session_start();
echo "session_id=" . session_id();
echo "variables are:";
echo "first name=" . $_SESSION['a'];
echo "last name=" . $_SESSION['b'];
?>