<?php
session_start();


// Если значения еще не сохранены в сессии, сохраняем их
if (!isset($_SESSION['original_name'])) {
    $_SESSION['original_name'] = $name;
}
if (!isset($_SESSION['original_username'])) {
    $_SESSION['original_username'] = $username;
}
if (!isset($_SESSION['email_address'])) {
    $_SESSION['email_address'] = $email_address;
}

// Проверяем, была ли отправлена форма
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Проверяем, была ли выбрана радио кнопка
    if (isset($_POST['placeholder_option'])) {
        $selectedOption = $_POST['placeholder_option'];
        
        // Разделяем значение переменных
        $name = '';
        $username = '';
        $combo = '';
        $email_address = '';

        // Получаем значение email_address из формы
        if (isset($_POST['email_address'])) {
            $email_address = $_POST['email_address'];
        }
        
        // Проверяем, какое значение выбрано и разделяем его в переменные
        if ($selectedOption == 'option1') {
            $name = $_SESSION['original_name'];
            $username = $_SESSION['original_username'];
            $combo = $username . '' . $name . '';
        } elseif ($selectedOption == 'option2') {
            $name = $_SESSION['original_name'];
        } elseif ($selectedOption == 'option3') {
            $username = $_SESSION['original_username'];
        } elseif ($selectedOption == 'option4') {
            // Subtract $original_name from $original_username
            if (strpos($_SESSION['original_username'], $_SESSION['original_name']) !== false) {
                $beraku = str_replace($_SESSION['original_name'], '', $_SESSION['original_username']);
                // Remove any leading or trailing hyphens
                $beraku = trim($beraku, '-');
            } else {
                $beraku = $_SESSION['original_username']; // В случае, если $original_name не найден в $original_username
            }
            $username = $beraku;
        }

        // Присваиваем значения переменным, если это нужно
        $uname = htmlspecialchars($name);
        $uusername = htmlspecialchars($username);
        $ucombo = htmlspecialchars($combo);
        $uemail_address = htmlspecialchars($email_address);
        
        $grupo_web_address = 'http://chatpropro'; 

        $post_fields = [
            'api_secret_key' => 'E9yg4XAsGea5',
            'update' => 'site_users',
            'user' => $uemail_address,
            'username' => empty($combo) ? $uusername : $ucombo,
            'full_name' => $uname,
            'custom_field_1' => $uusername . ', ' . $uname,
            'email_address' => $uemail_address,
        ];

        $api_request_url = rtrim($grupo_web_address, '/') . '/' . 'api_request/';

        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => $api_request_url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => $post_fields,
            CURLOPT_USERAGENT => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0'
        ));

        $response = curl_exec($curl);

        curl_close($curl);

        if (!empty($response)) {
            $response = json_decode($response);
            if (!empty($response)) {
                if ($response->success) {
                    echo "Updated Successfully";
                    // После успешного обновления перенаправляем на нужный URL
                    header("Location: http://chatpropro/global/");
                    exit(); // Убедимся, что скрипт завершается после редиректа
                } else {
                    echo $response->error_message;
                }
            }
        }
    } else {
        echo "Радио кнопка не была выбрана";
    }
} else {
    // Если запрос не POST, выводим начальные значения из сессии
    if (isset($_SESSION['original_name']) && isset($_SESSION['original_username'])) {
        $original_name = $_SESSION['original_name'];
        $original_username = $_SESSION['original_username'];
        $email_address = $_SESSION['email_address'];
       
        
        // Subtract $original_name from $original_username
        if (strpos($original_username, $original_name) !== false) {
            $beraku = str_replace($original_name, '', $original_username);
            // Remove any leading or trailing hyphens
            $beraku = trim($beraku, '-');
        } else {
            $beraku = $original_username; // В случае, если $original_name не найден в $original_username
        }

    }
}
?>