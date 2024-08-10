<?php

// update_settings.php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $display_name_option = $_POST['display_name_option'];

    // Обновление настройки в реестре
    Registry::load('settings')->display_name_option = $display_name_option;

    // Перенаправление обратно на страницу настроек
    header('Location: settings_page.php');
    exit;
}
