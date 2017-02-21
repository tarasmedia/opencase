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
            <header class="panel-heading panel-border">
                Кейсы <a href="/admin/caseurl/0" class="btn btn-primary">Добавить кейс</a>
                <span class="tools pull-right">
                    <a class="refresh-box fa fa-repeat" href="javascript:;"></a>
                                        <a class="collapse-box fa fa-chevron-down" href="javascript:;"></a>
                                        <a class="close-box fa fa-times" href="javascript:;"></a>
                                    </span>
            </header>
            <div class="panel-body table-responsive">
                <table class="table convert-data-table table-striped">
                    <thead>
                    <tr>
                        <th>
                            #
                        </th>
                        <th>
                            Название
                        </th>
                        <th>
                            Цена
                        </th>
                        <th>
                            Вещей в наличии
                        </th>
                        <th>

                        </th>
                        <th>

                        </th>

                    </tr>
                    </thead>
                    <tbody>
                    {% for i in case %}
                        <tr>
                            <td>
                                {{ i.id }}
                            </td>
                            <td>
                                {{ i.name }}
                            </td>
                            <td>
                                {{ i.price }}
                            </td>
                            <td>
                                0
                            </td>
                            <td>
                                <a href="/admin/caseurl/{{ i.id }}">Редактировать</a>
                            </td>
                            <td>
                                У
                            </td>

                        </tr>
                    {% endfor %}
                    </tbody>
                </table>
            </div>
        </section>
    </div>

</div>