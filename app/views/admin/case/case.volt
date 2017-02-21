<div class="panel">
    <header class="panel-heading">
        Добавить кейс
        <span class="tools pull-right">
                                                <a class="collapse-box fa fa-chevron-down" href="javascript:;"></a>
                                                <a class="close-box fa fa-times" href="javascript:;"></a>
                                            </span>
    </header>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <form role="form" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Название</label>
                        <input class="form-control" name="name" value="{{ case.name is defined ? case.name : '' }}"
                               placeholder="Название" type="text">
                    </div>
                    <div class="form-group">
                        <label>Цена</label>
                        <input class="form-control" name="price" value="{{ case.price is defined ? case.price : '' }}"
                               placeholder="Цена" type="text">
                    </div>
                    <div class="form-group">
                        <label>Ссылка</label>
                        <input class="form-control" name="url" value="{{ case.url is defined ? case.url : '' }}"
                               placeholder="Ссылка" type="text">
                    </div>
                    <div class="form-group">
                        <label>Скидочная цена (Необязательный параметр)</label>
                        <input class="form-control" name="percent" value="{{ case.percent is defined ? case.percent : 0 }}" placeholder="Скидка" type="text">
                    </div>
                    <div class="form-group">
                        <label>Тип</label>
                        <select class="form-control" name="type">
                            <option {% if case.items is defined and case.type == 2 %} selected="selected" {% endif %}
                                    value="2">Обычные кейсы
                            </option>
                            <option {% if case.items is defined and case.type == 0 %} selected="selected" {% endif %}
                                    value="0">Фирменные кейсы
                            </option>
                            <option {% if case.items is defined and case.type == 1 %} selected="selected" {% endif %}
                                    value="1">Случайные кейсы
                            </option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Картинка</label>
                        <input name="images" type="file">
                    </div>
                    <div class="form-group">
                        <label>Предметы</label>
                        <select class="form-control js-example-basic-select2" name="items[]" multiple="multiple">
                            {% for i in items %}
                                <option {% if case.items is defined and case.items|json_decode|length > 0 and in_array(i.id,case.items|json_decode) %} selected="selected" {% endif %}
                                        value="{{ i.id }}">{{ i.name_ru }} ({{ i.price }}$) ({{ i.rar }})
                                </option>
                            {% endfor %}
                        </select>
                    </div>

                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>