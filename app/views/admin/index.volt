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
<div class="panel">


    <header class="panel-heading">
        Настройка сайта
        <span class="tools pull-right">
                                                <a class="collapse-box fa fa-chevron-down" href="javascript:;"></a>
                                                <a class="close-box fa fa-times" href="javascript:;"></a>
                                            </span>
    </header>
    <div class="panel-body">
        <a href="/admin?type=clearcache" class="btn btn-md btn-block btn-success">Отчистить кэш</a>
    </div>
    <header class="panel-heading">
        Настройка бота
        <span class="tools pull-right">
                                                <a class="collapse-box fa fa-chevron-down" href="javascript:;"></a>
                                                <a class="close-box fa fa-times" href="javascript:;"></a>
                                            </span>
    </header>
    <div class="panel-body">
        <a href="#myModal" data-toggle="modal" class="btn btn-md btn-block btn-success">
            Настройка бота
        </a>
        <button type="submit" class="btn btn-md btn-block btn-success">Запустить</button>
        <button type="submit" class="btn btn-md btn-block btn-info">Остановить</button>
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal"
             class="modal fade" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                        <h4 class="modal-title">Настройка бота</h4>
                    </div>
                    <div class="modal-body">

                        <form role="form">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Логин</label>
                                <input class="form-control" placeholder="Логин" name="login" type="text">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Пароль</label>
                                <input class="form-control" placeholder="Пароль" name="password" type="password">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Steamid</label>
                                <input class="form-control" placeholder="Steamid" name="steamid" type="text">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Ник</label>
                                <input class="form-control" placeholder="Ник" name="nick" type="text">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Трейд-линк</label>
                                <input class="form-control" placeholder="Трейд-линк" name="trade" type="text">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Shared secret</label>
                                <input class="form-control" placeholder="Shared secret" name="shared_secret"
                                       type="text">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Identity secret</label>
                                <input class="form-control" placeholder="Identity secret" name="identity_secret"
                                       type="text">
                            </div>
                            <button type="submit" class="btn btn-warning">Сохранить</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
