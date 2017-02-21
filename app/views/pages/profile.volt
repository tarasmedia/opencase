<div class="profile-heading clear">
    <div class="short-info">
        <div class="avatar"><img src="{{ profile.avatar }}" alt=""></div>
        <div class="info">
            <div class="name">{{ xss.escapeHtml(profile.username) }}</div>
            <div class="link-steam">
                {% if profile.userid|length < 16 %}
                    <a href="https://vk.com/id{{ profile.userid }}" target="_blank">Профиль VK</a>
                {% else %}
                    <a href="https://steamcommunity.com/profiles/{{ profile.userid }}" target="_blank">Профиль Steam</a>
                {% endif %}
            </div>
            <div class="balance"><span>{{ profile.money }}Р</span><a href="#" rel="popup" data-popup="popup-pay" class="btn-pay2"></a>
            </div>
        </div>
    </div>
    <div class="right">
        <div class="steps">
            <div class="item">
                <div class="heading">Введите Trade-URL</div>
                Поле для ввода ниже <a
                        href="https://steamcommunity.com/id/me/tradeoffers/privacy#trade_offer_access_url"
                        target="_blank">(УЗНАВАТЬ ТУТ)</a>
            </div>
            <div class="item">
                <div class="heading">Пополните баланс</div>
                WebMoney, Yandex-деньги, QIWI и др.
            </div>
            <div class="item">
                <div class="heading">Выигрывайте!</div>
                Открывайте кейсы по лучшим ценам
            </div>
        </div>
        <div class="trade-link">
            <input type="text" class="input"
                   value="{{ profile.trade }}"
                   placeholder="https://steamcommunity.com/tradeoffer/new/?partner=370939295token=xxxxxxxxx">
            <button type="submit" class="btn">СОХРАНИТЬ</button>
        </div>
    </div>
</div>
<div class="profile-content">
    <div class="profile-text">
        <div class="profile-bonus-promo">


            <div class="profile-promo">
                <div class="page-heading">
                    <div class="ico-promo"></div>
                    ПРОМОКОД:
                </div>
                <div class="pay-info">
                    <div class="promo">
                        Промокоды Вы можете найти в различных акциях от администрации.
                    </div>
                    <input type="text" class="input" value="" placeholder="Введите промокод" id="promo-codes-input">
                    <button type="submit" class="btn" id="promo-codes-submit">Активировать</button>
                </div>
            </div>
        </div>
        <div class="page-heading">
            <div class="ico-info"></div>
            ВНИМАНИЕ! ПРОЧТИ ЭТО! ОЧЕНЬ ВАЖНО!
        </div>
        <div class="important-message" style="display: none;">
            	<span class="orange">ОСТЕРЕГАЙТЕСЬ МОШЕННИКОВ, добавляющихся к вам в Steam под видом администраторов/модераторов
                /помощников {{ request.getHttpHost()|upper }}</span><br><br>

            <span class="orange">ЗАПОМНИТЕ</span> - мы никогда не будем добавляться к вам в друзья в Steam и
            предлагать ваши
            предметы по двойной цене и т.д. <span class="orange">ЭТО ВСЕ ОБМАН!</span><br><br>

            Если вы видите иконку ошибки после того, как попытались забрать вещь, то
            скорее всего у вас заблокирован трейд, и мы не сможем отправить вам вещи.<br><br>

            Если с вашим трейдом все в порядке, а вещь не приходит -
            просьба написать в тех.поддержку.<br><br>

            После отправки трейда у вас будет 1 час на принятие вещи. Если вы не примете вещь в течении
            данного
            срока, она будет продана, а средства зачислятся на баланс. Если вы отмените трейд, то вещь не
            будет
            возвращена, средства на счет тоже не вернутся<br><br>

            Ответы на часто задаваемые вопросы Вы можете найти на этой странице: F.A.Q.
        </div>
        <a href="#" class="btn-accept active" style="opacity: 0.5;">Прочитать</a>

        <div class="sub-title no-border">
            <div class="ico-profile-case"></div>
            Предметы:
        </div>
        <div class="profile-list">
            <div class="list-items clear">

                {% for i in profile.items %}
                    {% set name =  explode(' | ',i.name_ru) %}
                    <div class="item {{ i.rar }}">
                        <div class="actions">
                            {% if i.status == 1 %}
                                <div class="str" data-title="Продан">
                                    <div class="price">{{ i.price }}Р</div>
                                </div>
                            {% elseif i.status == 2 %}
                                <div class="price">{{ i.price }}Р</div>
                                <div class="str" data-title="Отправлено"><img src="/images/ico-sucess.png" alt=""></div>
                            {% else %}
                                <div class="str" data-title="Вывести">
                                    <a href="javascript:void(0)" class="btn-resend-item" data-order="{{ i.id }}">
                                        <img src="/images/ico-sell.png" alt="">
                                    </a>
                                </div>
                                <div class="str" data-title="Продать за {{ i.price }}Р">
                                    <a href="javascript:void(0)" data-order="{{ i.id }}" class="price btn-sell">{{ i.price }}Р</a>
                                </div>
                            {% endif %}
                        </div>

                        <div class="image"><img
                                    src="https://steamcommunity-a.akamaihd.net/economy/image/class/730/{{ i.classid }}/130fx65f"
                                    alt=""></div>
                        <div class="info">
                            <div class="name">{{ name[0] }}</div>
                            <div class="desc">{{ name[1] }}</div>
                        </div>
                    </div>
                {% endfor %}
                {% if profile.items|length == 0 %}
                    <b style="font-size: 1.5em;    color: white;">Нет вещей.</b>
                    <br>
                    <br>
                {% endif %}
            </div>
        </div>

    </div>
</div>