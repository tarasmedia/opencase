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
                        <label>Ник</label>
                        <input class="form-control" name="username" value="{{ profile.username  }}" disabled placeholder="Ник" type="text">
                    </div>
                    <div class="form-group">
                        <label>Трейд-ссылка</label>
                        <input class="form-control" name="username" value="{{ profile.trade  }}" disabled placeholder="Трейд-ссылка" type="text">
                    </div>
                    <div class="form-group">
                        <label>Баланс</label>
                        <input class="form-control" name="money" value="{{ profile.money  }}" placeholder="Баланс" type="text">
                    </div>
                    <div class="form-group">
                        <label>Группа</label>
                        <select class="form-control" name="group">
                            <option {% if profile.group == 0 %} selected="selected" {% endif %} value="0">Пользователь
                            </option>
                            <option {% if profile.group == 1 %} selected="selected" {% endif %} value="1">Администратор
                            </option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Сохранить</button>
                </form>
            </div>
        </div>
    </div>
</div>