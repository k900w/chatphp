<style>
   
.chatgroup a {
    border: 1px solid grey;
    padding: 2px;
    margin-left: 3px;
    color: black; /* Цвет текста по умолчанию */
    text-decoration: none;
    z-index: 9999;
    position: relative;
    color:grey;
}
.chatgroup a:hover {
    color: #f7ff00;
    border: 1px solid #f7ff00;

}
.chatgroup {
    display: flex;
    position: absolute;

}
.chatgroup a.active {
    color: #f7ff00;
    border: 3px solid #f7ff00;
}
.sswap {
    -webkit-app-region: drag;

}
.close-btn {
    -webkit-app-region: no-drag;
    position: fixed;
    right: 0;
    top: 0px;
    background: none;
    border: 1px solid red;
    color: red;
    padding: 0px 9px;
    z-index: 999999;
}
.close-btn:hover {
        border: 3px solid red;

}
.main .chatbox {
    padding-top: 33px;
}

.modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            -webkit-app-region: no-drag;
z-index: 99999
;
            
        }
        .modal-content {
            background: grey !important;
            padding: 20px;
            width: 262px;
    text-align: left !important;
            border-radius: 10px;
            text-align: center;
            z-index: 999999;
            -webkit-app-region: no-drag;
            color: grey;

        }
        .close {
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
            position: absolute;
            color: white;
    right: 7px;
    top: 0;
        }



#openModal, .slider-container {
    
    -webkit-app-region: no-drag;
z-index: 9999;
}

#transparency-slider {
    width: 100%;
    margin: 20px 0;
}

#transparency-value {
    font-size: 18px;
    font-weight: bold;
}
#toggleNavLinkVisibility {
    -webkit-app-region: no-drag;
z-index: 9999;
}
    .rname input {
margin-right: 5px;    }
    .rname label {
        color: white;
    font-weight: 300 !important;
    font-size: 14px;
    }
    .nickname_display_settings h2 {
        font-size: 16px;
        color: white;
    }

    .rname label {
    color: white;
    font-weight: 300 !important;
    font-size: 14px;
    display: flex;
    flex-direction: row-reverse;
    justify-content: flex-end;
    }
    
    
    .toggleNavLinkVisibility {
            -webkit-app-region: no-drag;
z-index: 9999;
        
    }
    </style>
<body class='<?php echo(Registry::load('appearance')->body_class) ?> overflow-hidden'>

    <?php include 'assets/headers_footers/chat_page/body.php'; ?>

    <div class="preloader">
        <div class="content">
            <div>
                <div class="loader_image">
                    <?php if (Registry::load('current_user')->color_scheme === 'dark_mode') {
                        ?>
                        <img src="<?php echo Registry::load('config')->site_url.'assets/files/defaults/loading_image_dark_mode.png'.$cache_timestamp; ?>" />
                        <?php
                    } else {
                        ?>
                        <img src="<?php echo Registry::load('config')->site_url.'assets/files/defaults/loading_image_light_mode.png'.$cache_timestamp; ?>" />
                        <?php
                    } ?>
                </div>
                <div class="loader">
                    <div class="loading">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php include 'layouts/chat_page/header_site_adverts.php'; ?>
    <style>
        .heading.get_info {
            display: none;
            position: absolute;
            background-color: white;
            border: 1px solid black;
            padding: 10px;
            z-index: 9999;
        }
  
        

    </style>
  <script>
        document.addEventListener('DOMContentLoaded', function() {
            document.querySelector('li.load_aside.realtime_module.load_online_users').addEventListener('click', function() {
                document.getElementById('k40w').style.setProperty('opacity', '1', 'important');
                document.querySelector('.list').style.setProperty('opacity', '1', 'important');
            });
        });
    </script>
    <section class="main main_window" <?php echo(Registry::load('appearance')->main_window_style) ?> last_realtime_log_id=0>
<div class="chatgroup">

<!--<div class="nav-item">
    <a href="/global" class="nav-link">Global</a>
    <span class="group-info" group_id="1">Group Info</span>
</div>
<div class="nav-item">
    <a href="/g1" class="nav-link">G1</a>
   <li group_id="2" class="get_info force_request group-info">Group Info</li>
</div>
<div class="nav-item">
    <a href="/g2" class="nav-link">G2</a>
    <span class="group-info" group_id="3">Group Info</span>
</div>
<div class="nav-item">
    <a href="/g3" class="nav-link">G3</a>
    <span class="group-info" group_id="4">Group Info</span>
</div>
<div class="nav-item">
    <a href="/g4" class="nav-link">G4</a>
    <span class="group-info" group_id="5">Group Info</span>
</div>
<div class="nav-item">
    <a href="/g5" class="nav-link">G5</a>
    <span class="group-info" group_id="6">Group Info</span>
</div>
<div class="nav-item">
    <a href="/g6" class="nav-link">G6</a>
    <span class="group-info" group_id="7">Group Info</span>
</div>
<div class="nav-item">
    <a href="/g7" class="nav-link">G7</a>
    <span class="group-info" group_id="8">Group Info</span>
</div>
<div class="nav-item">
    <a href="/g8" class="nav-link">G8</a>
    <li class="group-info" group_id="9">Group Info</li>
</div>
<div class="nav-item">
    <a href="/g9" class="nav-link">G9</a>
    <span class="group-info" group_id="10">Group Info</span>
</div>
 -->
    <a href="/global" class="nav-link">Global</a>
    <a href="/g1" class="nav-link">G1</a>
    <a href="/g2" class="nav-link">G2</a>
    <a href="/g3" class="nav-link">G3</a>
    <a href="/g4" class="nav-link">G4</a>
    <a href="/g5" class="nav-link">G5</a>
    <a href="/g6" class="nav-link">G6</a>
    <a href="/g7" class="nav-link">G7</a>
    <a href="/g8" class="nav-link">G8</a>
    <a href="/g9" class="nav-link">G9</a> 

    <button class="toggleNavLinkVisibility" id="toggleButton"><svg fill="#ffffff" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="64px" height="15px" viewBox="0 0 47.001 47.001" xml:space="preserve" stroke="#ffffff"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <g id="Layer_1_4_"> <g> <circle cx="9.415" cy="8.898" r="3.515"></circle> <path d="M14.237,29.71c-0.432-0.039-0.859-0.133-1.267-0.289c-1.171-0.451-2.097-1.334-2.606-2.484 c-0.509-1.148-0.54-2.43-0.086-3.602l3.761-9.735c-0.257-0.119-0.532-0.204-0.827-0.204h-1.931c-0.546,0-1.019,0.237-1.375,0.594 H8.923c-0.355-0.356-0.831-0.594-1.375-0.594H5.616c-0.815,0-1.552,0.502-1.847,1.267l-3.634,9.413 c-0.396,1.02,0.111,2.168,1.132,2.562c1.019,0.395,2.167-0.112,2.561-1.135L5.567,21v5.296L1.912,39.091 c-0.302,1.056,0.309,2.148,1.359,2.451c0.183,0.051,0.366,0.074,0.547,0.074c0.861,0,1.653-0.564,1.901-1.434l3.695-12.932 l3.473,12.156l2.06-7.212L14.237,29.71z"></path> <path d="M37.587,12.415c1.938,0,3.516-1.573,3.516-3.515s-1.577-3.516-3.516-3.516c-1.94,0-3.516,1.574-3.516,3.516 S35.646,12.415,37.587,12.415z"></path> <path d="M46.866,24.075l-3.635-9.413c-0.295-0.764-1.03-1.267-1.847-1.267h-1.933c-0.543,0-1.02,0.237-1.374,0.594h-0.983 c-0.356-0.356-0.829-0.594-1.375-0.594h-1.931c-0.295,0-0.57,0.084-0.827,0.204l3.761,9.735c0.454,1.172,0.423,2.453-0.086,3.602 c-0.51,1.15-1.436,2.033-2.608,2.486c-0.405,0.156-0.831,0.236-1.262,0.275l-0.714,2.496l2.062,7.215l3.473-12.158l3.694,12.933 c0.249,0.868,1.04,1.437,1.901,1.437c0.181,0,0.364-0.027,0.547-0.078c1.051-0.301,1.662-1.396,1.358-2.449l-3.655-12.797V21 l1.74,4.502c0.394,1.022,1.542,1.529,2.561,1.136C46.755,26.243,47.262,25.095,46.866,24.075z"></path> <path d="M23.501,10.327c2.304,0,4.178-1.87,4.178-4.177c0-2.309-1.874-4.178-4.178-4.178c-2.304,0-4.178,1.87-4.178,4.178 C19.323,8.457,21.197,10.327,23.501,10.327z"></path> <path d="M28.071,26.821v-6.293l2.067,5.352c0.468,1.213,1.832,1.814,3.042,1.347c1.213-0.468,1.816-1.829,1.348-3.042 l-4.32-11.186c-0.35-0.907-1.224-1.505-2.194-1.505h-2.295c-0.646,0-1.21,0.282-1.633,0.706l1.095,8.042l-1.68,1.425l-1.68-1.425 l1.095-8.042c-0.423-0.424-0.986-0.706-1.633-0.706h-2.295c-0.972,0-1.846,0.598-2.194,1.505l-4.321,11.186 c-0.469,1.213,0.135,2.576,1.348,3.042c1.211,0.469,2.574-0.134,3.042-1.347l2.067-5.352v6.293l-4.344,15.207 c-0.357,1.25,0.367,2.553,1.616,2.909c0.216,0.063,0.435,0.092,0.647,0.092c1.024,0,1.967-0.676,2.262-1.706l4.39-15.367 l4.39,15.367c0.295,1.03,1.237,1.706,2.262,1.706c0.214,0,0.433-0.028,0.647-0.092c1.249-0.356,1.974-1.659,1.616-2.909 L28.071,26.821z"></path> </g> </g> </g> </g></svg></button>
    
    
    
<style>
   #k40w {
     /*  opacity:0!important;  */
    }
   
</style>


<script>
        // Функция для изменения прозрачности и скрытия элемента
        function toggleOpacity() {
            var list = document.querySelector('ul.list');
            var mainPageColumn = document.querySelector('.main .page_column.visible');
            var currentOpacity = window.getComputedStyle(list).opacity;

            if (currentOpacity == '1') {
                list.style.setProperty('opacity', '1');
                localStorage.setItem('listOpacity', '1');
            } else {
                list.style.setProperty('opacity', '0', 'important');
                localStorage.setItem('listOpacity', '0');
            }

            // Скрыть элемент с классом .main .page_column.visible
            if (mainPageColumn) {
                mainPageColumn.style.display = '';
            }
        }

        // Функция для восстановления прозрачности при прокрутке
        function maintainOpacity() {
            var list = document.querySelector('ul.list');
            var savedOpacity = localStorage.getItem('listOpacity');
            if (savedOpacity !== null && list.style.opacity !== savedOpacity) {
                list.style.setProperty('opacity', savedOpacity, 'important');
            }
        }

        // Обработчик события нажатия на кнопку
        document.getElementById('toggleButton').addEventListener('click', toggleOpacity);

        // Установка начального значения прозрачности при загрузке страницы
        document.addEventListener('DOMContentLoaded', function() {
            var list = document.querySelector('ul.list');
            var savedOpacity = localStorage.getItem('listOpacity');
            if (savedOpacity !== null) {
                list.style.setProperty('opacity', savedOpacity, 'important');
            } else {
                list.style.setProperty('opacity', '0', 'important'); // Устанавливаем начальное значение opacity на 0
                localStorage.setItem('listOpacity', '0');
            }

            // Добавление стилей
            list.style.position = 'relative';
            list.style.zIndex = '99999';
            list.style.background = 'black';
        });

        // Обработчик события прокрутки страницы
        window.addEventListener('scroll', maintainOpacity);
    </script>
    
    
<div style=" background: #000000bf !important; cursor: pointer;" class="heading get_info" auto_find="true">
    <span class="title"></span>
    <span class="subtitle" style=""></span>
    <span style="color: white;" class="view_info">
     
        Info</span>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const infoDiv = document.querySelector('.heading.get_info');
        const navLinks = document.querySelectorAll('.nav-link');
        let timer; // Таймер для задержки скрытия

        navLinks.forEach(link => {
            link.addEventListener('mouseover', function (event) {
                if (link.classList.contains('active')) {
                    clearTimeout(timer); // Очищаем таймер, если был активен

                    // Обновляем текст внутри блока
                    const infoText = link.getAttribute('data-info');
                    infoDiv.querySelector('.title').innerText = infoText;

                    // Позиционируем блок под ссылкой
                    const rect = link.getBoundingClientRect();
                    infoDiv.style.left = `${rect.left}px`;
                    infoDiv.style.top = `${rect.bottom}px`;

                    // Показываем блок
                    infoDiv.style.display = 'block';
                }
            });

            link.addEventListener('mouseout', function (event) {
                if (link.classList.contains('active')) {
                    // Устанавливаем таймер для задержки скрытия
                    timer = setTimeout(() => {
                        infoDiv.style.display = 'none';
                    }, 200);
                }
            });
        });

   

        // Устанавливаем такие же обработчики для инфо-блока
        infoDiv.addEventListener('mouseover', function (event) {
            clearTimeout(timer); // Очищаем таймер, если был активен
            infoDiv.style.display = 'block'; // Убеждаемся, что блок виден
        });

        infoDiv.addEventListener('mouseout', function (event) {
            timer = setTimeout(() => {
                infoDiv.style.display = 'none';
            }, 200);
        });
    });
</script>
    
    

    <button id="openModal"><svg fill="grey" height="24px" width="24px" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 54 54" xml:space="preserve"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <path d="M51.22,21h-5.052c-0.812,0-1.481-0.447-1.792-1.197s-0.153-1.54,0.42-2.114l3.572-3.571 c0.525-0.525,0.814-1.224,0.814-1.966c0-0.743-0.289-1.441-0.814-1.967l-4.553-4.553c-1.05-1.05-2.881-1.052-3.933,0l-3.571,3.571 c-0.574,0.573-1.366,0.733-2.114,0.421C33.447,9.313,33,8.644,33,7.832V2.78C33,1.247,31.753,0,30.22,0H23.78 C22.247,0,21,1.247,21,2.78v5.052c0,0.812-0.447,1.481-1.197,1.792c-0.748,0.313-1.54,0.152-2.114-0.421l-3.571-3.571 c-1.052-1.052-2.883-1.05-3.933,0l-4.553,4.553c-0.525,0.525-0.814,1.224-0.814,1.967c0,0.742,0.289,1.44,0.814,1.966l3.572,3.571 c0.573,0.574,0.73,1.364,0.42,2.114S8.644,21,7.832,21H2.78C1.247,21,0,22.247,0,23.78v6.439C0,31.753,1.247,33,2.78,33h5.052 c0.812,0,1.481,0.447,1.792,1.197s0.153,1.54-0.42,2.114l-3.572,3.571c-0.525,0.525-0.814,1.224-0.814,1.966 c0,0.743,0.289,1.441,0.814,1.967l4.553,4.553c1.051,1.051,2.881,1.053,3.933,0l3.571-3.572c0.574-0.573,1.363-0.731,2.114-0.42 c0.75,0.311,1.197,0.98,1.197,1.792v5.052c0,1.533,1.247,2.78,2.78,2.78h6.439c1.533,0,2.78-1.247,2.78-2.78v-5.052 c0-0.812,0.447-1.481,1.197-1.792c0.751-0.312,1.54-0.153,2.114,0.42l3.571,3.572c1.052,1.052,2.883,1.05,3.933,0l4.553-4.553 c0.525-0.525,0.814-1.224,0.814-1.967c0-0.742-0.289-1.44-0.814-1.966l-3.572-3.571c-0.573-0.574-0.73-1.364-0.42-2.114 S45.356,33,46.168,33h5.052c1.533,0,2.78-1.247,2.78-2.78V23.78C54,22.247,52.753,21,51.22,21z M52,30.22 C52,30.65,51.65,31,51.22,31h-5.052c-1.624,0-3.019,0.932-3.64,2.432c-0.622,1.5-0.295,3.146,0.854,4.294l3.572,3.571 c0.305,0.305,0.305,0.8,0,1.104l-4.553,4.553c-0.304,0.304-0.799,0.306-1.104,0l-3.571-3.572c-1.149-1.149-2.794-1.474-4.294-0.854 c-1.5,0.621-2.432,2.016-2.432,3.64v5.052C31,51.65,30.65,52,30.22,52H23.78C23.35,52,23,51.65,23,51.22v-5.052 c0-1.624-0.932-3.019-2.432-3.64c-0.503-0.209-1.021-0.311-1.533-0.311c-1.014,0-1.997,0.4-2.761,1.164l-3.571,3.572 c-0.306,0.306-0.801,0.304-1.104,0l-4.553-4.553c-0.305-0.305-0.305-0.8,0-1.104l3.572-3.571c1.148-1.148,1.476-2.794,0.854-4.294 C10.851,31.932,9.456,31,7.832,31H2.78C2.35,31,2,30.65,2,30.22V23.78C2,23.35,2.35,23,2.78,23h5.052 c1.624,0,3.019-0.932,3.64-2.432c0.622-1.5,0.295-3.146-0.854-4.294l-3.572-3.571c-0.305-0.305-0.305-0.8,0-1.104l4.553-4.553 c0.304-0.305,0.799-0.305,1.104,0l3.571,3.571c1.147,1.147,2.792,1.476,4.294,0.854C22.068,10.851,23,9.456,23,7.832V2.78 C23,2.35,23.35,2,23.78,2h6.439C30.65,2,31,2.35,31,2.78v5.052c0,1.624,0.932,3.019,2.432,3.64 c1.502,0.622,3.146,0.294,4.294-0.854l3.571-3.571c0.306-0.305,0.801-0.305,1.104,0l4.553,4.553c0.305,0.305,0.305,0.8,0,1.104 l-3.572,3.571c-1.148,1.148-1.476,2.794-0.854,4.294c0.621,1.5,2.016,2.432,3.64,2.432h5.052C51.65,23,52,23.35,52,23.78V30.22z"></path> <path d="M27,18c-4.963,0-9,4.037-9,9s4.037,9,9,9s9-4.037,9-9S31.963,18,27,18z M27,34c-3.859,0-7-3.141-7-7s3.141-7,7-7 s7,3.141,7,7S30.859,34,27,34z"></path> </g> </g></svg></button>
    <button id="toggleNavLinkVisibility"><svg fill="#878787" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 442.04 442.04" xml:space="preserve" stroke="#878787"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <g> <path d="M221.02,341.304c-49.708,0-103.206-19.44-154.71-56.22C27.808,257.59,4.044,230.351,3.051,229.203 c-4.068-4.697-4.068-11.669,0-16.367c0.993-1.146,24.756-28.387,63.259-55.881c51.505-36.777,105.003-56.219,154.71-56.219 c49.708,0,103.207,19.441,154.71,56.219c38.502,27.494,62.266,54.734,63.259,55.881c4.068,4.697,4.068,11.669,0,16.367 c-0.993,1.146-24.756,28.387-63.259,55.881C324.227,321.863,270.729,341.304,221.02,341.304z M29.638,221.021 c9.61,9.799,27.747,27.03,51.694,44.071c32.83,23.361,83.714,51.212,139.688,51.212s106.859-27.851,139.688-51.212 c23.944-17.038,42.082-34.271,51.694-44.071c-9.609-9.799-27.747-27.03-51.694-44.071 c-32.829-23.362-83.714-51.212-139.688-51.212s-106.858,27.85-139.688,51.212C57.388,193.988,39.25,211.219,29.638,221.021z"></path> </g> <g> <path d="M221.02,298.521c-42.734,0-77.5-34.767-77.5-77.5c0-42.733,34.766-77.5,77.5-77.5c18.794,0,36.924,6.814,51.048,19.188 c5.193,4.549,5.715,12.446,1.166,17.639c-4.549,5.193-12.447,5.714-17.639,1.166c-9.564-8.379-21.844-12.993-34.576-12.993 c-28.949,0-52.5,23.552-52.5,52.5s23.551,52.5,52.5,52.5c28.95,0,52.5-23.552,52.5-52.5c0-6.903,5.597-12.5,12.5-12.5 s12.5,5.597,12.5,12.5C298.521,263.754,263.754,298.521,221.02,298.521z"></path> </g> <g> <path d="M221.02,246.021c-13.785,0-25-11.215-25-25s11.215-25,25-25c13.786,0,25,11.215,25,25S234.806,246.021,221.02,246.021z"></path> </g> </g> </g></svg></button>
    <div class="sswap"><svg width="24px" height="24px" viewBox="0 0 24 24" fill="grey" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M12 3V9M12 3L9 6M12 3L15 6M12 15V21M12 21L15 18M12 21L9 18M3 12H9M3 12L6 15M3 12L6 9M15 12H21M21 12L18 9M21 12L18 15" stroke="grey" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg></div>
<?php
session_start();

$user = Registry::load('current_user');
$name = $user->name;
$username = $user->username;
$email_address = $user->email_address;

if (!isset($_SESSION['original_name'])) {
    $_SESSION['original_name'] = $name;
}
if (!isset($_SESSION['original_username'])) {
    $_SESSION['original_username'] = $username;
}
if (!isset($_SESSION['email_address'])) {
    $_SESSION['email_address'] = $email_address;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['placeholder_option'])) {
        $selectedOption = $_POST['placeholder_option'];
        $_SESSION['selected_option'] = $selectedOption;
        
        $name = '';
        $username = '';
        $combo = '';
        $email_address = $_POST['email_address'] ?? '';

        switch ($selectedOption) {
            case 'option1':
                $name = $_SESSION['original_name'];
                $username = $_SESSION['original_username'];
                $combo = $username . '' . $name;
                break;
            case 'option2':
                $name = $_SESSION['original_name'];
                break;
            case 'option3':
                $username = $_SESSION['original_username'];
                break;
            case 'option4':
                $username = str_replace($_SESSION['original_name'], '', $_SESSION['original_username']);
                $username = trim($username, '-');
                break;
        }

        $uname = htmlspecialchars($name);
        $uusername = htmlspecialchars($username);
        $ucombo = htmlspecialchars($combo);
        $uemail_address = htmlspecialchars($email_address);

        $grupo_web_address = 'https://chat.shadowtown.club/';

        $post_fields = [
            'api_secret_key' => 'E9yg4XAsGea5',
            'update' => 'site_users',
            'user' => $uemail_address,
            'username' => empty($combo) ? $uusername : $ucombo,
            'full_name' => $uname,
            'custom_field_1' => $uusername . ', ' . $uname,
            'email_address' => $uemail_address,
        ];

        $api_request_url = rtrim($grupo_web_address, '/') . '/api_request/';

        $curl = curl_init();
        curl_setopt_array($curl, [
            CURLOPT_URL => $api_request_url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => http_build_query($post_fields),
            CURLOPT_USERAGENT => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0'
        ]);

        $response = curl_exec($curl);
        curl_close($curl);

        if ($response !== false) {
            $response = json_decode($response);
            if (!empty($response) && isset($response->success) && $response->success) {
                header("Location: https://chat.shadowtown.club/global/");
                exit();
            } else {
                $error_message = isset($response->error_message) ? $response->error_message : "Unexpected API response";
                echo htmlspecialchars($error_message);
            }
        } else {
            echo "CURL error: " . curl_error($curl);
        }
    } else {
        echo "Радио кнопка не была выбрана";
    }
}
?>

<div id="myModal" class="modal">
    <div style="background: grey !important;" class="modal-content">
        <span class="close">&times;</span>
        <div class="slider-container">
            <label style="color: white;" for="opacitySlider">Adjust Background Opacity:</label>
            <input type="range" id="opacitySlider" min="0" max="1" step="0.01" value="0">
        </div>
        <div class="nickname_display_settings">
<?php var_dump($total_online_users); ?>
<form method="POST" action="">
    <input type="hidden" id="name" name="name" value="<?php echo htmlspecialchars($_SESSION['original_name']); ?>">
    <input type="hidden" id="username" name="username" value="<?php echo htmlspecialchars($_SESSION['original_username']); ?>">
    <input type="hidden" id="email_address" name="email_address" value="<?php echo htmlspecialchars($_SESSION['email_address']); ?>">

    <label style="color: #FFF;">View name order:</label><br>
    <input type="radio" id="option1" name="placeholder_option" value="option1" <?php echo (isset($_SESSION['selected_option']) && $_SESSION['selected_option'] == 'option1') ? 'checked' : ''; ?>>
    <label for="option1"><span style="color: white;">NickName, (FullName)</span></label><br>

    <input type="radio" id="option4" name="placeholder_option" value="option4" <?php echo (isset($_SESSION['selected_option']) && $_SESSION['selected_option'] == 'option4') ? 'checked' : ''; ?>>
    <label for="option4"><span style="color: white;">NickName</span></label><br><br>

    <input type="hidden" name="hidden_name" value="<?php echo htmlspecialchars($_SESSION['original_name']); ?>">
    <input type="hidden" name="hidden_username" value="<?php echo htmlspecialchars($_SESSION['original_username']); ?>">

    <input type="submit" value="Submit">
</form>

    <style>
        .toggle-container {
            margin-top:15px;
            margin-bottom: 15px;
            bottom: 10px;
            right: 10px;
            display: flex;
            align-items: center;
            font-family: Arial, sans-serif;
        }

        .toggle-container label {
            margin-right: 10px;
            font-size: 16px;
            color: white;
        }

        .switch {
            position: relative;
            display: inline-block;
            width: 50px;
            height: 25px;
        }

        .switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: black !important;
            border: 1px solid white;
            transition: 0.4s;
            border-radius: 25px;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 23px;
            width: 23px;
            left: 0px;
            bottom: 0px;
            background-color: white !important; 
            transition: 0.4s;
            border-radius: 50%;
        }

        input:checked + .slider {
            background-color: #b72020 !important;
        }

        input:checked + .slider:before {
            transform: translateX(25px);
        }

        .label-text {
            margin-left: 10px;
            font-size: 16px;
            color: #FFF;
            
    font-weight: 600;
        }
         .icon {
            width: 24px;
            height: 24px;
            margin-right: 10px;
            fill: #333;
        }
    </style>
    <div class="toggle-container">
        <label for="muteButton">Message <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
            <path d="M3 10v4h4l5 5V5L7 10H3zm13.9 2c0-1.4-.6-2.7-1.5-3.6l1.4-1.4c1.3 1.3 2.1 3.1 2.1 5s-.8 3.7-2.1 5l-1.4-1.4c.9-.9 1.5-2.2 1.5-3.6zm2.4-8.6l-1.4 1.4C19.8 6.3 21 8.8 21 12s-1.2 5.7-3.1 7.6l1.4 1.4C21.2 18.7 23 15.5 23 12s-1.8-6.7-4.7-8.6z"/>
        </svg>:</label>
        <label class="switch">
            <input type="checkbox" id="muteButton">
            <span class="slider"></span>
        </label>
        <span class="label-text">OFF</span>
    </div>

<!-- Add audio/video elements for testing (if needed) -->
<!-- <audio src="path-to-your-audio-file.mp3" controls></audio> -->

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var muteButton = document.getElementById('muteButton');
            var mediaElements = document.querySelectorAll('audio, video');
            var labelText = document.querySelector('.label-text');
            var isMuted = localStorage.getItem('isMuted') === 'true';

            // Установить начальное состояние звука на основе LocalStorage
            mediaElements.forEach(function (element) {
                element.muted = isMuted;
            });

            // Установить начальное состояние переключателя
            muteButton.checked = isMuted;

            // Обновить текст метки на основе начального состояния
            if (isMuted) {
                labelText.textContent = 'OFF';
            } else {
                labelText.textContent = 'ON';
            }

            muteButton.addEventListener('change', function () {
                isMuted = muteButton.checked;

                mediaElements.forEach(function (element) {
                    element.muted = isMuted;
                });

                // Обновить состояние LocalStorage
                localStorage.setItem('isMuted', isMuted);

                // Обновить текст метки
                if (isMuted) {
                    labelText.textContent = 'OFF';
                } else {
                    labelText.textContent = 'ON';
                }
            });
        });
    </script>
<script>
document.addEventListener('DOMContentLoaded', function() {
    // Загрузка сохраненного выбора
    const savedOption = localStorage.getItem('selected_option');
    const submitButton = document.querySelector('input[type="submit"]');

    if (savedOption) {
        document.getElementById(savedOption).checked = true;
        submitButton.disabled = true; // Изначально отключаем кнопку
    }

    // Слушатель для радио кнопок
    document.querySelectorAll('input[name="placeholder_option"]').forEach(radio => {
        radio.addEventListener('change', function() {
            if (this.id === savedOption) {
                submitButton.disabled = true; // Отключаем кнопку, если выбрано то же самое значение
            } else {
                localStorage.setItem('selected_option', this.id);
                submitButton.disabled = false; // Включаем кнопку, если выбрано новое значение
            }
        });
    });
});
</script>



<script>
    document.addEventListener('DOMContentLoaded', function() {
        var selectedOption = "<?php echo isset($_SESSION['selected_option']) ? $_SESSION['selected_option'] : ''; ?>";
        if (selectedOption) {
            var radio = document.querySelector('input[name="placeholder_option"][value="' + selectedOption + '"]');
            if (radio) {
                radio.disabled = true;
            }
        }
    });
</script>

            <!-- CHANGE DISPLAY CHAT NAME -->
            <style>
                .main .formbox > .bottom {
                    width: 220px !important;
                    background: none !important;
                }
            </style>

            <style id="dynamicStyles">
                .message_content {
                    font-family: Arial, sans-serif !important;
                    font-size: 16px !important;
                }
                #boldCheck {
                    color: white !important;
                }
            </style>

               <form id="textForm">
        <label style="color: #FFF;" for="fontSelect">Font Settings: </label>
        <div style="display: flex; gap: 7px; margin-bottom: 5px;">
            <select style="width: 129px;" id="fontSelect">
                <option value="Arial">Arial</option>
                <option value="Times New Roman">Times New Roman</option>
            </select>
            <select id="sizeSelect">
                <option value="14">14</option>
                <option value="16">16</option>
                <option value="18">18</option>
            </select>
        </div>
        <div>
            <label><input  type="checkbox" id="boldCheck"> <span style="color: white !important;">Bold</span></label>
            <label><input  type="checkbox" id="underlineCheck"><span style="color: white !important;"> Underline </span></label>
            <label><input  type="checkbox" id="italicCheck"><span style="color: white !important;"> Italic</span></label>
        </div>
        <button type="button" onclick="applyStyles()">Apply</button>
    </form>

        </div>
    </div>
</div>
<span style="background: white;
    z-index: 9999999;" class="menu toggle_side_navigation">
                <i>
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="26" height="26" viewBox="0 0 1024 1024">
                        <path fill="grey" d="M127.999 271.999c0-26.508 21.491-47.999 47.999-47.999v0h672.001c26.508 0 47.999 21.491 47.999 47.999s-21.491 47.999-47.999 47.999v0h-672.001c-26.508 0-47.999-21.491-47.999-47.999v0zM127.999 512c0-26.508 21.491-47.999 47.999-47.999v0h672.001c26.508 0 47.999 21.491 47.999 47.999s-21.491 47.999-47.999 47.999v0h-672.001c-26.508 0-47.999-21.491-47.999-47.999v0zM127.999 752.001c0-26.508 21.491-47.999 47.999-47.999v0h672.001c26.508 0 47.999 21.491 47.999 47.999s-21.491 47.999-47.999 47.999v0h-672.001c-26.508 0-47.999-21.491-47.999-47.999v0z"></path>
                    </svg>
                </i>
                <span class="total_unread_notifications"></span>
            </span>
  <button class="close-btn" id="close-btn">X</button>
   
</div>       
<script>
    // Добавляем слушатель событий на загрузку страницы
    window.addEventListener('DOMContentLoaded', function() {
        // Навигационные ссылки: Переключение видимости
        const navLinks = document.querySelectorAll('.nav-link');
        const sswap = document.querySelectorAll('.sswap');
        const toggleNavLinkVisibilityBtn = document.getElementById('toggleNavLinkVisibility');
        
        toggleNavLinkVisibilityBtn.addEventListener('click', function() {
            navLinks.forEach(link => {
                link.style.display = link.style.display === 'none' ? 'block' : 'none';
            });
            sswap.forEach(element => {
                element.style.display = element.style.display === 'none' ? 'block' : 'none';
            });
        });

        // Модальное окно: Открытие и закрытие
        const modal = document.getElementById('myModal');
        const openModalBtn = document.getElementById('openModal');
        const closeModalSpan = document.querySelector('.close');

        openModalBtn.addEventListener('click', function() {
            modal.style.display = 'flex';
        });

        closeModalSpan.addEventListener('click', function() {
            modal.style.display = 'none';
        });

        window.addEventListener('click', function(event) {
            if (event.target === modal) {
                modal.style.display = 'none';
            }
        });

        // Ползунок прозрачности
        const slider = document.getElementById('opacitySlider');
        slider.addEventListener('input', function() {
            const opacityValue = this.value;
            document.body.style.backgroundColor = `rgba(0, 0, 0, ${opacityValue})`;
            localStorage.setItem('backgroundOpacity', opacityValue);
        });

        // Загрузка сохраненной прозрачности из localStorage
        const savedOpacity = localStorage.getItem('backgroundOpacity');
        if (savedOpacity !== null) {
            slider.value = savedOpacity;
            document.body.style.backgroundColor = `rgba(0, 0, 0, ${savedOpacity})`;
        }

        // Закрытие основного окна приложения
        const closeBtn = document.getElementById('close-btn');
        closeBtn.addEventListener('click', () => {
            window.electron.ipcRenderer.send('close-main-window');
        });

        // Подсветка активной навигационной ссылки
        const currentPath = window.location.pathname;
        const links = document.querySelectorAll('.nav-link');
        links.forEach(link => {
            if (link.getAttribute('href') === currentPath) {
                link.classList.add('active');
            }
        });
    });
</script>




<div class='window fh'>
            <div class="container-fluid fh">
                <div class="row fh nowrap page_row chat_page_container">
                    <?php if (Registry::load('current_user')->logged_in) {
                        include 'layouts/chat_page/side_navigation.php';
                    } ?>
                    <?php include 'layouts/chat_page/aside.php'; ?>
                    <?php include 'layouts/chat_page/middle.php'; ?>
                    <?php include 'layouts/chat_page/form.php'; ?>
                    <?php include 'layouts/chat_page/info_panel.php'; ?>
                </div>
            </div>
        </div>
    </section>


    <?php include 'layouts/chat_page/footer_site_adverts.php'; ?>


    <?php if (Registry::load('settings')->adblock_detector === 'enable') {
        include 'layouts/chat_page/ad_block_detector.php';
    } ?>

    <?php
    if (Registry::load('settings')->video_chat !== 'disable') {
        if (role(['permissions' => ['private_conversations' => 'video_chat']])) {
            ?>
            <div class="call_notification d-none" current_call_id=0>
                <div class="user-image"></div>
                <div class="call_notification-text">
                    <p>
                        <strong class="user_name"></strong> <?php echo Registry::load('strings')->is_calling_text ?>
                    </p>
                </div>
                <div class="action-buttons">
                    <button class="action-button attend_video_call"><?php echo Registry::load('strings')->join ?></button>
                    <button class="action-button reject_video_call"><?php echo Registry::load('strings')->reject ?></button>
                </div>
                <div class="d-none">
                    <audio class="call_ringtone" controls loop>
                        <source src="<?php echo(Registry::load('config')->site_url) ?>assets/files/defaults/call_notification.mp3" type="audio/mpeg">
                    </audio>
                </div>
            </div>
            <?php
        }
    }
    ?>

    <div class="on_site_load d-none">
        <?php if (isset(Registry::load('config')->load_user_profile) && !empty(Registry::load('config')->load_user_profile)) {
            ?>
            <span class="get_info" user_id="<?php echo(Registry::load('config')->load_user_profile) ?>">Profile</span>
            <?php
        } else if (isset(Registry::load('config')->load_membership_packages)) {
            ?>
            <span class="load_membership_info" package_id="<?php echo(Registry::load('config')->load_membership_package_id) ?>">Membership Packages</span>
            <?php
        } else if (isset(Registry::load('config')->load_private_conversation) && !empty(Registry::load('config')->load_private_conversation)) {
            ?>
            <span class="load_conversation" user_id="<?php echo(Registry::load('config')->load_private_conversation) ?>">Group</span>
            <?php
        } else if (isset(Registry::load('config')->load_group_conversation) && !empty(Registry::load('config')->load_group_conversation)) {
            ?>
            <span class="load_conversation" group_id="<?php echo(Registry::load('config')->load_group_conversation) ?>">Group</span>
            <?php
        } else if (isset(Registry::load('config')->join_group_conversation) && !empty(Registry::load('config')->join_group_conversation)) {
            ?>
            <span class="load_form" form="join_group" data-group_secret_code="<?php echo(Registry::load('config')->join_group_secret_code) ?>" data-group_id="<?php echo(Registry::load('config')->join_group_conversation) ?>">Group</span>
            <?php
        } else if (isset(Registry::load('config')->load_page) && !empty(Registry::load('config')->load_page)) {
            ?>
            <span class="load_page" page_id="<?php echo(Registry::load('config')->load_page) ?>">Page</span>
            <?php
        } else if (Registry::load('current_user')->logged_in && !isset(Registry::load('config')->load_user_profile)) {
            if (role(['find' => 'load_profile_on_page_load']) === 'yes') {
                ?>
                <span class="get_info load_profile_on_page_load">User Profile</span>
                <?php
            }
        }
        ?>
    </div>

    <div class="content_on_page_load d-none">
        <?php
        if (Registry::load('current_user')->logged_in) {
            $left_panel_content_on_page_load = role(['find' => 'left_panel_content_on_page_load']);

            if ($left_panel_content_on_page_load === 'group_categories' && Registry::load('settings')->categorize_groups !== 'yes') {
                $left_panel_content_on_page_load = 'groups';
            }
            ?>
            <span class="left_panel_content_on_page_load"><?php echo $left_panel_content_on_page_load; ?></span>
            <span class="main_panel_content_on_page_load"><?php echo role(['find' => 'main_panel_content_on_page_load']); ?></span>
            <?php
        }
        ?>
    </div>

    <div class="load_on_refresh d-none"></div>

    <div class="language_strings d-none">
        <span class="string_uploading_files"><?php echo(Registry::load('strings')->uploading_files) ?></span>
        <span class='string_loading'><?php echo(Registry::load('strings')->loading) ?></span>
        <span class='string_sort'><?php echo(Registry::load('strings')->sort) ?></span>
        <span class='string_error'><?php echo(Registry::load('strings')->error) ?></span>
        <span class='string_error_message'><?php echo(Registry::load('strings')->error_message) ?></span>
        <span class='string_choose_file'><?php echo(Registry::load('strings')->choose_file) ?></span>
        <span class='string_load_more'><?php echo(Registry::load('strings')->load_more) ?></span>
        <span class='string_new'><?php echo(Registry::load('strings')->new) ?></span>
        <span class='string_sharing_your_location'><?php echo(Registry::load('strings')->sharing_your_location) ?></span>
        <span class='string_sharing_video'><?php echo(Registry::load('strings')->sharing_video) ?></span>
        <span class='string_new_message_notification'><?php echo(Registry::load('strings')->new_message_notification) ?></span>
        <span class='string_is_typing'><?php echo(Registry::load('strings')->is_typing) ?></span>
        <span class='string_recording'><?php echo(Registry::load('strings')->recording) ?></span>
        <span class='string_message_textarea_placeholder'><?php echo(Registry::load('strings')->message_textarea_placeholder) ?></span>
    </div>

    <div class="system_variables d-none">
        <span class="variable_message_alignment"><?php echo(Registry::load('settings')->message_alignment) ?></span>
        <span class="variable_own_message_alignment"><?php echo(Registry::load('settings')->own_message_alignment) ?></span>
        <span class="variable_video_chat"><?php echo(Registry::load('settings')->video_chat) ?></span>
        <span class="variable_audio_chat"><?php echo(Registry::load('settings')->audio_chat) ?></span>
        <span class="variable_refresh_rate"><?php echo(Registry::load('settings')->refresh_rate) ?></span>
        <span class="variable_ffmpeg"><?php echo(Registry::load('settings')->ffmpeg) ?></span>
        <span class="variable_enter_is_send"><?php echo(Registry::load('settings')->enter_is_send) ?></span>
        <span class="variable_load_group_info_on_group_load"><?php echo(Registry::load('settings')->load_group_info_on_group_load) ?></span>
        <span class="variable_show_profile_on_pm_open"><?php echo(Registry::load('settings')->show_profile_on_pm_open) ?></span>
        <span class="variable_people_nearby_feature"><?php echo(Registry::load('settings')->people_nearby_feature) ?></span>
        <span class="variable_search_on_change_of_input"><?php echo(Registry::load('settings')->search_on_change_of_input) ?></span>
        <span class="variable_show_side_navigation_on_load"><?php echo(Registry::load('settings')->show_side_navigation_on_load) ?></span>
        <span class="variable_allowed_file_types"><?php echo(Registry::load('current_user')->allowed_file_types) ?></span>
        <span class="variable_current_title"></span>
        <?php
        if (isset($_GET['embed_url']) && !empty($_GET['embed_url'])) {
            if (isset(Registry::load('config')->load_group_conversation) && !empty(Registry::load('config')->load_group_conversation)) {
                $embed_url = Registry::load('config')->site_url.'group/'.Registry::load('config')->load_group_conversation.'/?embed_url=yes';
                ?>
                <span class="variable_embed_url"><?php echo $embed_url; ?></span>
                <?php
            }
        }
        if (!isset($_GET['login_session_id']) && !isset($_GET['session_time_stamp'])) {
            if (isset(Registry::load('config')->samesite_cookies_current) && strtolower(Registry::load('config')->samesite_cookies_current) === 'none') {
                ?>
                <span class="variable_login_from_storage">true</span>
                <?php
            }
        }
        ?>
    </div>

    <div class="site_sound_notification">
        <div>
            <audio controls>
                <source src="<?php echo(Registry::load('settings')->notification_tone) ?>" type="audio/mpeg">
            </audio>
        </div>
    </div>

    <?php include 'layouts/chat_page/web_push_service_variables.php'; ?>
</body>