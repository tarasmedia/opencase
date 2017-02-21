<div class="user-info clear">
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
        </div>
    </div>
    <div class="user-stat">
        <div class="item">
            <div class="ico-user-case"></div>
            Кейсов открыл: <b>{{ profile.items|length }}</b></div>
        <div class="item">
            <div class="ico-user-profit"></div>
            Профит: <b>{{ profile.sum }}Р</b></div>
    </div>
</div>
<div class="profile-content">
    <div class="profile-text">
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
                                <div class="str" data-title="Продан пользоватем">
                                    <div class="price">{{ i.price }}Р</div>
                                </div>
                            {% elseif i.status == 2 %}
                                <div class="price">{{ i.price }}Р</div>
                                <div class="str" data-title="Отправлено пользователю"><img src="/images/ico-sucess.png"
                                                                                           alt=""></div>
                            {% else %}
                                <div class="price">{{ i.price }}Р</div>
                                <div class="str" data-title="В ожидании"><a href="#"><img src="/images/ico-ready.png"
                                                                                          alt=""></a></div>
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