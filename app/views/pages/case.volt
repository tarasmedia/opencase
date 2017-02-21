<script type="text/javascript">
    var currentCase = '{{ case.id }}';
    var cases = [ {% for i in case.items|json_decode %}
            ["{{ i.rar }}", "{{ i.classid }}", "{{ i.name_ru }}"],{% endfor %}]
        ;
</script>
<div class="breadcrumb">
    {{ case.name }}
</div>
<div class="case">

    <div class="wrap-sound-rice">
        <div class="price">{{ round(case.price) }} р.</div>
    </div>

    {% if user is not defined %}
        <div class="case-frame"><img src="{{ case.images }}" alt=""></div>
        <div class="message">Для открытия кейса необходима авторизация!</div>
        <div class="auth-form clear">
            <div class="heading">
                <div class="ico-lock"></div>
                Авторизация
            </div>
            <div class="list clear">
                <a href="/login/vk"><img src="/images/ico-big-vk.png" alt=""></a>
                <a href="/login/steam"><img src="/images/ico-big-steam.png" alt=""></a>
            </div>
        </div>
    {% elseif user is defined and user.money < case.price %}
        <div class="case-frame"><img src="{{ case.images }}" alt="">

            <div class="error-balance">
                <div class="text">Недостаточно средств<br>для открытия кейса<span>ПОПОЛНИТЕ СЧЕТ</span></div>
            </div>

        </div>
        <div class="pay-form">
            <input type="text" class="input" placeholder="Введите сумму">
            <button type="submit" rel="popup" data-popup="popup-pay" class="btn-ok">ОК</button>
        </div>
    {% else %}
        <div class="roulette">
            <div class="hidden">
                <div class="overview">
                    <div id="scrollerContainer">
                        <div id="caruselLine"></div>
                        <div id="caruselOver"></div>
                        <div id="aCanvas">
                            <div id="casesCarusel" class="slider"></div>
                        </div>
                    </div>


                </div>
            </div>
            <div class="roulette-arrow"></div>
        </div>

        <div class="message">Для открытия кейса нажмите на кнопку ниже!</div>
        <div class="auth-form clear">
            <div href="javascript:void(0)" id="gogame" class="heading">Открыть кейс</div>
        </div>
    {% endif %}

</div>
<div class="live-drop">
    <div class="heading">
        <span>Live-дроп </br>из кейса:</span>

    </div>
    <div class="list">
        <div class="overview clear">
            <div id="LastCase">
                {% for win in case_winner %}
                    <a href="/user/{{ win.userid }}" class="item {{ win.rar }}">
                        <img src="https://steamcommunity-a.akamaihd.net/economy/image/class/730/{{ win.classid }}/90fx57f"
                             alt="">
                        <div class="caption">
                            <div class="image"><img class="item-history-userpic" src="{{ win.avatar }}" alt=""></div>
                            <div class="name">{{ win.username }}</div>
                            <div class="desc">{{ win.name_ru }}</div>
                        </div>
                    </a>
                {% endfor %}
            </div>
        </div>
    </div>
</div>
<div class="sub-title">ПРЕДМЕТЫ КОТОРЫЕ МОГУТ ВЫПАСТЬ:</div>
<div class="list-items clear">
    {% for i in case.items|json_decode %}
        <div class="item {{ i.rar }}">
            <div class="image"><img
                        src="https://steamcommunity-a.akamaihd.net/economy/image/class/730/{{ i.classid }}/158fx118f"
                        alt=""></div>
            <div class="info">
                {% set name =  explode(' | ',i.name_ru) %}
                <div class="name">{{ name[0] }}</div>
                <div class="desc">{{ name[1] }}</div>
            </div>
        </div>
    {% endfor %}
</div>


<div class="win" style="display: none;">
    <div class="name"></div>
    <div></div>
    <img src="">
    <div class="buttons">
        <a class="btn-sell-item" href="javascript:void(0)">Продать за <span></span> р.</a>
        <a href="javascript:void(0)" class="go-next"> Открыть ещё </a>
        <a href="/user/13099">Вывести </a>
    </div>
</div>


