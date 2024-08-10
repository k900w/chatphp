<?php
require 'chat.shadowtown.club/keyboard_arrow_right/config.php'; // Замените на ваш файл с подключением к базе данных

if (function_exists('role') && role(['permissions' => ['site_users' => 'view_online_users']])) {

    $query = "SELECT name, profile_picture, username FROM site_users WHERE online_status='online'";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        echo '<ul class="online-users-list">';
        while($row = $result->fetch_assoc()) {
            echo '<li>';
            echo '<img src="path/to/profile_pics/'.$row['profile_picture'].'" alt="'.$row['name'].'">';
            echo '<span>'.$row['name'].' (@'.$row['username'].')</span>';
            echo '</li>';
        }
        echo '</ul>';
    } else {
        echo '<p>No users online.</p>';
    }
}
?>