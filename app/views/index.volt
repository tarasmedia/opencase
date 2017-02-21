<html>

<head>
    <meta charset="utf-8">
    <title>{{ request.getHttpHost()|upper }} - Лучшие кейсы CS:GO</title>
    <link rel="icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta property="og:type" content="website">
    <meta property="og:title" content="{{ request.getHttpHost()|upper }} - Открыть кейсы CS:GO">
    <meta property="og:description" content="Здесь Вы можете получить предметы из различных кейсов CS:GO. Все честно и без обмана, моментальная доставка.">
    <meta property="og:site_name" content="{{ request.getHttpHost()|upper }}">
    <meta property="og:url" content="{{ request.getHttpHost()|upper }}">
    <meta property="og:image" content="/images/snip.png">
    <meta name="keywords" content="кейсы кс го, cases cs go, скины, кейсы, кс го, cs go"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic" rel="stylesheet">
    {{ stylesheet_link("css/style.css") }}
    {{ stylesheet_link("css/animate.css") }}
    {{ javascript_include("js/jquery.js") }}
    {{ javascript_include("js/jquery-ui.min.js") }}
    {{ javascript_include("js/core.js") }}
    {{ javascript_include("js/main.js") }}
</head>

<body>

<div class="top-bar">
    <div class="main-width clear">
        <a href="/" class="logo"></a>
        <div class="nav">
            <a class="nav-resize"></a>
            <ul>
                <li><a href="/">Главная</a></li>
                <li><a href="/faq">Вопросы и ответы</a></li>
                <li><a href="/reviews">Отзывы</a></li>
                <li><a href="https://vk.com/" target="_blank">Мы вконтакте</a></li>
                {% if user is defined and user.group == 1 %}   <li><a href="/admin">Админ панель</a></li> {% endif %}
            </ul>
        </div>
        <div class="mini-profile">
            {% if user is defined %}
                <div class="logged">
                    <ul class="profile-nav">
                        <li><a href="/user/{{ user.userid }}">Профиль</a></li>
                        <li><a href="/logout">Выход</a></li>
                    </ul>
                    <div class="avatar"><a href="/user/{{ user.userid }}">
                            <img src="{{ user.avatar }}" alt=""></a>
                    </div>
                    <div class="balance" rel="popup" data-popup="popup-pay">
                        На счету:
                        <span>{{ user.money }}Р</span>
                    </div>
                    <a href="#" class="btn-pay" rel="popup" data-popup="popup-pay"></a>
                </div>
            {% else %}
                <div class="authorization">
                    <span>Авторизация с помощью</span>
                    <a href="/login/vk" class="btn-vk"></a>
                    <span>или</span>
                    <a href="/login/steam" class="btn-steam"></a>
                </div>
            {% endif %}


        </div>
    </div>
</div>
<div class="live-drop">
    <div class="heading">
        <span>Live-дропы:</span>
        <a href="/top">Топ игроков</a>
    </div>
    <div class="list">
        <div class="overview clear">
            <div id="lastWinners">
                {% for win in winners %}
                    {% set name = explode(' | ',win.name_ru) %}
                    <a href="/user/{{ win.userid }}" class="item {{ win.rar }}">
                        <img src="https://steamcommunity-a.akamaihd.net/economy/image/class/730/{{ win.classid }}/90fx57f" alt="">
                        <div class="caption">
                            <div class="image"><img src="{{ win.images }}" alt=""></div>
                            <div class="name">{{ name[0] }}</div>
                            <div class="desc">{{ name[1] }}</div>
                        </div>
                    </a>
                {% endfor %}
            </div>
        </div>
    </div>
</div>
 {% if user is not defined %}
<div class="benefits">
    <div class="main-width clear">
        <div class="item">
            <div class="name">
                <div class="ico-benefit1"></div>
                Высокоскоростной бот
            </div>
            <div class="desc">
                Предложение об обмене от ботов приходит в течение
                нескольких секунд — нам важно, чтобы Вы быстро и без
                проблем получали вещи.
            </div>
        </div>
        <div class="item">
            <div class="name">
                <div class="ico-benefit2"></div>
                Честно и выгодно
            </div>
            <div class="desc">
                Самые дорогие и редкие вещи только у нас.
                Боты доставляют все скины мгновенно. А цены на кейсы
                ниже, чем у конкурентов.
            </div>
        </div>
        <div class="item">
            <div class="name">
                <div class="ico-benefit3"></div>
                Надёжность проекта
            </div>
            <div class="desc">
                Кликните на предмет в лайв-ленте и
                получите исчерпывающую информацию о пользователе,
                ник, ссылку на аккаунт в Steam и историю игр.
            </div>
        </div>
    </div>
</div>
{% endif %}
<div class="content main-width">
   {{ content() }}
</div>


<div class="stat">
    <div class="main-width">
        <div class="item">
            <div class="image"><img src="/images/ico-stat1.png" alt=""></div>
            <div class="num" id="games"></div>
            <div class="desc">Открыто кейсов</div>
        </div>
        <div class="item">
            <div class="image"><img src="/images/ico-stat2.png" alt=""></div>
            <div class="num" id="users"></div>
            <div class="desc">Пользователей</div>
        </div>
        <div class="item">
            <div class="image"><img src="/images/ico-stat3.png" alt=""></div>
            <div class="num" id="online"></div>
            <div class="desc">Онлайн на сайте</div>
        </div>
    </div>
</div>





<div class="footer">
    <div class="main-width clear">
        <div class="desc">
            <b> {{ request.getHttpHost()|upper }} — Магазин кейсов CS:GO</b><br>
            На нашем сайте вы можете открыть различные кейсы CS:GO (КС ГО)
            по самым выгодным ценам. Все обмены проходят в
            автоматическом режиме с помощью ботов Steam.
        </div>
        <div class="f-nav">
            <div class="item">
                <div class="heading">Поддержка</div>
                <ul>
                    <li><a href="/faq">F.A.Q.</a></li>
                    <li><a href="/support">Поддержка</a></li>
                </ul>
            </div>
            <div class="item">
                <div class="heading">Соглашения</div>
                <ul>
                    <li><a href="/agreement">Пользовательское соглашение</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>


<div class="overlay">
    <div class="popup popup-pay">
        <a class="close">x</a>
        <div class="heading">
            <div class="ico-pay"></div>
            Пополнение баланса
        </div>
        <div class="text">
            Введите желаемую сумму пополнения, нажмите “Перейти к оплате”, оплатите и дождитесь зачисления средств на
            ваш персональный аккаунт
        </div>
        <div class="form">
            <input type="text" class="input" placeholder="500 рублей" id="payment-sum">
            <input type="hidden" class="input" id="payment-account" value="229066603">
        </div>
        <a href="#" class="btn" id="do-payment-unitpay">Перейти к оплате</a>
        <div class="or">или</div>
        <a href="#" class="btn-skin" id="do-payment-skinpay"></a>
    </div>

    <div class="popup popup-winner">
        <a href="javascript:void(0)" class="close"></a>
        <div class="name"></div>
        <div class="image">
            <img src="" alt="" width="295" height="162">
        </div>
        <div class="desc">Предмет нужно вывести в профиле<br/>в течение часа.</div>
        <div class="btns clear">
            <a href="javascript:void(0)" href="#">Продать за 1000р</a>
            <a href="javascript:void(0)" class="go-next">Попробовать ещё раз</a>
        </div>
    </div>


</div>

</body>
</html>