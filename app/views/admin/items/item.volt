<div class="panel">
    <header class="panel-heading">
        Добавить предмет
        <span class="tools pull-right">
                                                <a class="collapse-box fa fa-chevron-down" href="javascript:;"></a>
                                                <a class="close-box fa fa-times" href="javascript:;"></a>
                                            </span>
    </header>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <form role="form" method="post">
                    <div class="form-group">
                        <label>Classid</label>
                        <input class="form-control" name="classid" value="{{ item.classid is defined ? item.classid : '' }}" placeholder="Classid" type="text">
                    </div>
                    <button type="submit" class="btn btn-primary">Сохранить</button>
                </form>
            </div>
        </div>
    </div>
</div>