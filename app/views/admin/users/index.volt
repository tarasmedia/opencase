<div class="row">
    <div class="col-sm-12">
        {% if flashSession.has('success')|length > 0 %}
            <div class="alert alert-success alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-label="Закрыть">
                <span aria-hidden="true">×</span></button>
            <strong>Успешно!</strong>{{ flashSession.output() }}
            </div>
        {% endif %}
        {% if flashSession.has('error')|length > 0 %}
            <div class="alert alert-danger alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-label="Закрыть">
                <span aria-hidden="true">×</span></button>
            <strong>Ошибка!</strong>{{ flashSession.output() }}
            </div>
        {% endif %}
        <section class="panel">
            <div class="panel-body table-responsive">
                <table class="table convert-data-table table-striped">
                    <thead>
                    <tr>
                        <th>
                            #
                        </th>
                        <th>
                            Ник
                        </th>
                        <th>
                            Баланс
                        </th>
                        <th>
                            Ссылка на сервис
                        </th>

                        <th>
                          Профиль на сайте
                        </th>
                        <th>
                           Группа
                        </th>
                        <th>

                        </th>

                    </tr>
                    </thead>
                    <tbody>
                    {% for i in users %}
                        <tr>
                            <td>
                                {{ i.id }}
                            </td>
                            <td>
                                {{ i.username }}
                            </td>
                            <td>
                                {{ i.money }}Р
                            </td>
                            <td>
                                {% if i.userid|length < 16 %}
                                    <a href="https://vk.com/id{{ i.userid }}" target="_blank">Профиль VK</a>
                                {% else %}
                                    <a href="https://steamcommunity.com/profiles/{{ i.userid }}" target="_blank">Профиль Steam</a>
                                {% endif %}
                            </td>
                            <td>
                                <a href="/user/{{ i.userid }}" target="_blank">Профиль на сайте</a>
                            </td>
                            <td>
                                {{ i.group == 1 ? 'Администратор' : 'Пользователь' }}
                            </td>
                            <td>
                                <a href="/admin/user/{{ i.id }}">Редактировать</a>
                            </td>


                        </tr>
                    {% endfor %}
                    </tbody>
                </table>
            </div>
        </section>
    </div>

</div>