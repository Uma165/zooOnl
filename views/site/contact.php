<?php

/** @var app\models\Post $model */
/** @var app\models\Category $model */
use yii\helpers\Url;

use yii\bootstrap5\ActiveForm;
use yii\bootstrap5\Html;
use yii\widgets\MaskedInput;?>


    <div class="row row-cols-1 row-cols-md-3 g-4">
        <?  foreach ($posts as $post):?>
            <div class="col">
                <div class="card">
                    <img src="../web/image/<?php echo $post['image']; ?>" class="card-img-top " style="height: 400px">
                    <div>
                        <h5 class="title">Тип: <?php echo $post['breed']; ?></h5>
                        <h5 class="title">Имя: <?php echo $post['name']; ?></h5>
                        <h5 class="title">Возраст: <?php echo $post['age']; ?></h5>
                        <h6 class="text "><?php echo $post['description']; ?></h6>
                    </div>
                </div>
            </div>
        <?php endforeach;?>
    </div>

<?php foreach ($status as $comment):?>
    <p><?php echo $comment->body?></p>
<?php endforeach;?>

<?php $form = ActiveForm::begin([
    'id' => 'login-form',
    'fieldConfig' => [
        'template' => "{label}\n{input}\n{error}",
        'labelOptions' => ['class' => 'col-lg-1 col-form-label mr-lg-3'],
        'inputOptions' => ['class' => 'col-lg-3 form-control'],
        'errorOptions' => ['class' => 'col-lg-7 invalid-feedback'],
    ],
]); ?>


        <?= $form->field($model, 'body')->textInput(['autofocus' => true]) ?>
    <div class="form-floating">
        <div>
            <?= Html::submitButton('Отправить', ['class' => 'btn btn-outline-secondary', 'name' => 'login-button']) ?>
        </div>
    </div>

<?php ActiveForm::end(); ?>