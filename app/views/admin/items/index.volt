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
                Предметы
                <form role="form" method="post">
                    <div class="form-group">
                        <input class="form-control" name="classid"  placeholder="Classid" type="text">
                    </div>
                    <button type="submit" class="btn btn-primary">Добавить</button>
                </form>
                
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
                            Тип
                        </th>
                        <th>
                            Вещей в наличии
                        </th>
                        <th>

                        </th>


                    </tr>
                    </thead>
                    <tbody>
                    {% for i in items %}
                        <tr>
                            <td>
                                {{ i.id }}
                            </td>
                            <td>
                                {{ i.name_ru }}
                            </td>
                            <td>
                                {{ i.price }}
                            </td>
                            <td>
                                {{ i.rar }}
                            </td>
                            <td>
                                0
                            </td>
                            <td>
                                <a href="/admin/item/{{ i.id }}?s=del">Удалить</a>
                            </td>


                        </tr>
                    {% endfor %}
                    </tbody>
                </table>
            </div>
        </section>
    </div>

</div>