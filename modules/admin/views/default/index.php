<?php
use \yii\helpers\Url;
?>
<div class="admin-default-index">
    <h1>Добро пожаловать в админ панель!</h1>
    <p>Здесь можно редактировать заявки и их категории</p>
    <div class="my-3">
        <button type="button" class="text-white btn btn-info btn-success"><a href="<?php echo Url::toRoute(['applications/index'])?>" class="text-light text-decoration-none">Заявки</a></button>
        <button type="button" class="text-white btn btn-info btn-success"><a href="<?php echo Url::toRoute(['comment/index'])?>" class="text-light text-decoration-none">Комментарии</a></button>
    </div>
</div>
