<div class="tops">
    {% for i in users %}
        {% if i.place > 5 %} {% continue %} {% endif %}
        <div class="item">
            <div class="avatar">
                <div class="num">{{ i.place }}</div>
                <a href="/user/{{ i.userid }}"> <img src="{{ i.avatar }}" alt="" title=""></a></div>
            <div class="name"><a href="/user/{{ i.userid }}">{{ i.username }}</a></div>
            <div class="st">
                <div class="info-case"><span>{{ i.games }}</span>Кейсов</div>
                <div class="info-profit"><span>{{ i.win }}р</span>Профит</div>
            </div>
        </div>
    {% endfor %}
</div>
<div class="table-wrapper">
    <table class="table">
        <tbody>
        <tr>
            <th>Место</th>
            <th>Пользователь</th>
            <th>Кейсов открыл</th>
            <th>Профит</th>
        </tr>
        {% for i in users %}
            {% if i.place < 6 %} {% continue %} {% endif %}
            <tr>
                <td>{{ i.place }}</td>
                <td>
                    <div class="avatar">
                        <a href="/user/{{ i.userid }}"><img src="{{ i.avatar }}" alt="" title=""></a>
                    </div>
                    <a href="#" class="user-name"></a><a href="/user/{{ i.userid }}">{{ i.username }}</a></td>
                <td>{{ i.games }}</td>
                <td>{{ i.win }}p</td>
            </tr>
        {% endfor %}

        </tbody>
    </table>
</div>