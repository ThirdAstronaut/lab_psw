<?php
$styleChoice = "";
if(!isset($_COOKIE['sitestyle'])){
    $styleChoice = "light";
} else {
    $styleChoice = $_COOKIE['sitestyle'];
}
?>