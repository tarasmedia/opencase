<div class="cases clear">

    {% for i in case %}
        {% if i.type != 1 %}
            {% continue %}
        {% endif %}
        <a href="/case/{{ i.url }}" class="item "
           id="case_13">
            <div class="price">
                <span class="old">{{ i.price }} р.</span> <span class="new">{{ i.price }} р.</span>
            </div>
            <div class="image"><img src="{{ i.images }}" alt="{{ i.name }}" alt=""></div>
            <div class="name">{{ i.name }}</div>

        </a>
    {% endfor %}
</div>

<div class="title">Фирменные кейсы</div>
<div class="cases clear">

    {% for i in case %}
        {% if i.type != 0 %}
            {% continue %}
        {% endif %}
        <a href="/case/{{ i.url }}" class="item "
           id="case_13">
            <div class="price">
                <span class="old">{{ i.price }} р.</span> <span class="new">{{ i.price }} р.</span>
            </div>
            <div class="image"><img src="{{ i.images }}" alt="{{ i.name }}" alt=""></div>
            <div class="name">{{ i.name }}</div>

        </a>
    {% endfor %}

</div>


<div class="title">Кейсы операций</div>
<div class="cases clear">
    {% for i in case %}
        {% if i.type != 2 %}
            {% continue %}
        {% endif %}
        <a href="/case/{{ i.url }}" class="item "
           id="case_13">
            <div class="price">
                <span class="old">{{ i.price }} р.</span> <span class="new">{{ i.price }} р.</span>
            </div>
            <div class="image"><img src="{{ i.images }}" alt="{{ i.name }}" alt=""></div>
            <div class="name">{{ i.name }}</div>

        </a>
    {% endfor %}
</div>
